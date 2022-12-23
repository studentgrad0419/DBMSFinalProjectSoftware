# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

import datetime
import logging
import os
from typing import Dict

from flask import Flask, render_template, request, Response
import sqlalchemy
from sqlalchemy import Column
from sqlalchemy import DateTime
from sqlalchemy import Integer
from sqlalchemy import String
from sqlalchemy import Table

from connect_connector import connect_with_connector
from connect_tcp import connect_tcp_socket

import urllib
from PIL import Image
from tensorflow.keras.models import load_model
from flask import Flask , render_template  , request , send_file
from tensorflow.keras.preprocessing.image import load_img , img_to_array

app = Flask(__name__)

logger = logging.getLogger()

#Load in the model for category
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
model = load_model(os.path.join(BASE_DIR , 'model/outputAlzheimersMRI.h5'))

#Allowed extentions and categories
ALLOWED_EXT = set(['jpg' , 'jpeg' , 'png' , 'jfif'])
def allowed_file(filename):
    return '.' in filename and \
           filename.rsplit('.', 1)[1] in ALLOWED_EXT

def init_connection_pool() -> sqlalchemy.engine.base.Engine:
    # use a TCP socket when INSTANCE_HOST (e.g. 127.0.0.1) is defined
    if os.environ.get("INSTANCE_HOST"):
        return connect_tcp_socket()

    # use the connector when INSTANCE_CONNECTION_NAME (e.g. project:region:instance) is defined
    if os.environ.get("INSTANCE_CONNECTION_NAME"):
        return connect_with_connector()

    raise ValueError(
        "Missing database connection type. Please define one of INSTANCE_HOST or INSTANCE_CONNECTION_NAME"
    )


# create 'votes' table in database if it does not already exist
# def migrate_db(db: sqlalchemy.engine.base.Engine) -> None:
    # inspector = sqlalchemy.inspect(db)
    # if not inspector.has_table("votes"):
        # metadata = sqlalchemy.MetaData(db)
        # Table(
            # "votes",
            # metadata,
            # Column("vote_id", Integer, primary_key=True, nullable=False),
            # Column("time_cast", DateTime, nullable=False),
            # Column("candidate", String(6), nullable=False),
        # )
        # metadata.create_all()


# This global variable is declared with a value of `None`, instead of calling
# `init_db()` immediately, to simplify testing. In general, it
# is safe to initialize your database connection pool when your script starts
# -- there is no need to wait for the first request.
db = None


# init_db lazily instantiates a database connection pool. Users of Cloud Run or
# App Engine may wish to skip this lazy instantiation and connect as soon
# as the function is loaded. This is primarily to help testing.
@app.before_first_request
def init_db() -> sqlalchemy.engine.base.Engine:
    global db
    db = init_connection_pool()
    # migrate_db(db)

classes = [2.0,1.0,3.0,4.0]
classesLookup = ["Tier2Alz","Tier1Alz","Tier3Alz","Tier4Alz"]
def predict(filename , model):
    img = load_img(filename , target_size = (224 , 224))
    img = img_to_array(img)
    img = img.reshape(1 , 224 ,224 ,3)
    img = img.astype('float32')
    img = img/255.0
    result = model.predict(img)
    dict_result = {}
    for i in range(4):
        dict_result[result[0][i]] = classes[i]
    res = result[0]
    res.sort()
    res = res[::-1]
    prob = res[:3]
    return dict_result[prob[0]] 

#convert risk into category name
def riskLookup(f):
    if f > 1.5:
        if f > 2.5:
            if f> 3.5:
                return classesLookup[3]
            else:
                return classesLookup[2]
        else:
            return classesLookup[0]
    else:
        return classesLookup[1]

@app.route("/", methods=["GET"])
def render_index() -> str:
    #context = get_index_context(db)
    return render_template("index.html")

@app.route('/success' , methods = ['GET' , 'POST'])
def success():
    error = ''
    target_img = os.path.join(os.getcwd() , 'static/images')
    if request.method == 'POST':    
        if (request.files):
            file = request.files['file']
            id = request.form.get('id')
            if file and allowed_file(file.filename):
                file.save(os.path.join(target_img , file.filename))
                img_path = os.path.join(target_img , file.filename)
                img = file.filename
                
                #query if user is in db
                stmt1 = sqlalchemy.text(
                    "SELECT COUNT (*) FROM Customer WHERE CustomerId=:CustomerId"
                )
                #if not insert into Customer
                stmt2 = sqlalchemy.text(
                    "INSERT INTO Customer (CustomerId) VALUES (:Cid)"
                )
                #insert into db if new customer
                stmt3 = sqlalchemy.text(
                    "INSERT INTO MriData (CustomerId, MRIid, MRIRisk) VALUES (:Cid, :Cid2, :Risk)"
                )
                #update db if old customer
                stmt4 = sqlalchemy.text(
                    "UPDATE MriData SET  MRIRisk=:Risk WHERE CustomerId=:Cid"
                )
                #Call PRediciton Here
                category = predict(img_path , model)
                
                PlanName = "None";
                Description = "None";
                AnnualizedPremium = "None";
                try:
                    #db connect here
                    with db.connect() as conn:
                        count = conn.execute(stmt1, CustomerId=id).fetchone()
                        print(count)
                        #if not in db insert into db
                        if(count[0] == 0):
                            conn.execute(stmt2, Cid=id)
                            #store category into user's MRIRisk in MriData
                            conn.execute(stmt3, Cid=id, Cid2=id, Risk=category)   
                        else:
                            #update category into user's MRIRisk in MriData
                            conn.execute(stmt4, Risk=category, Cid=id)
                        
                        planname = riskLookup(category)
                        # Execute the query and fetch all results
                        resultPlans = conn.execute(
                            "SELECT DISTINCT PlanName, Description, AnnualizedPremium FROM Product WHERE PlanName="+"'" + planname+"'"
                        ).fetchone()
                        #Set return values:
                        PlanName = resultPlans[0]
                        Description = resultPlans[1]
                        AnnualizedPremium = resultPlans[2]

                except Exception as e:
                    logger.exception(e)
                    return Response(
                        status=500,
                        response="Unable to successfully communicate with DB Please check the "
                        "application logs for more details.",
                    )
            else:
                error = "Please upload images of jpg , jpeg and png extension only"
            if(len(error) == 0):
                return  render_template('success.html' , PlanName = PlanName , Description = Description, AnnualizedPremium = AnnualizedPremium )
            else:
                return render_template('index.html' , error = "Please upload a file")
        elif(request.form):
            id2 = request.form.get('id2')
            try :
                #Query the DB for userId
                #query if user is in db
                stmt1 = sqlalchemy.text(
                    "SELECT COUNT (*) FROM Customer WHERE CustomerId=:CustomerId"
                )
                #query for RiskValue
                stmt5 = sqlalchemy.text(
                    "SELECT MRIRisk FROM MriData WHERE CustomerId=:CustomerId"
                )
                
                PlanName = "None";
                Description = "None";
                AnnualizedPremium = "None";
                try:
                    #db connect here
                    with db.connect() as conn:
                        count = conn.execute(stmt1, CustomerId=id2).fetchone()
                        print(count)
                        if(count[0] == 0):
                            
                            return render_template('index.html' , error = "User is not in database")
                        else:
                            #if exist, then Query the MRIRisk for userId
                            riskVal = conn.execute(stmt5, CustomerId=id2).fetchone()
                            #then query for plan correlated to risk
                            planname = riskLookup(riskVal[0])
                            resultPlans = conn.execute(
                                "SELECT DISTINCT PlanName, Description, AnnualizedPremium FROM Product WHERE PlanName="+"'" + planname+"'"
                            ).fetchone()
                            #Set return values:
                            PlanName = resultPlans[0]
                            Description = resultPlans[1]
                            AnnualizedPremium = resultPlans[2]
                except Exception as e:
                    logger.exception(e)
                    return Response(
                        status=500,
                        response="Unable to successfully communicate with DB Please check the "
                        "application logs for more details.",
                    )
            except Exception as e : 
                print(str(e))
                error = 'This customer id is not in the database'
            if(len(error) == 0):
                return  render_template('success.html' , PlanName = PlanName , Description = Description, AnnualizedPremium = AnnualizedPremium )
            else:
                return render_template('index.html' , error = error) 
    else:
        return render_template('index.html')

# @app.route("/votes", methods=["POST"])
# def cast_vote() -> Response:
    # team = request.form['team']
    # return save_vote(db, team)


# def get_index_context(db: sqlalchemy.engine.base.Engine) -> Dict:
    # votes = []
    # with db.connect() as conn:
        # # Execute the query and fetch all results
        # recent_votes = conn.execute(
            # "SELECT TOP(5) candidate, time_cast FROM votes ORDER BY time_cast DESC"
        # ).fetchall()
        # # Convert the results into a list of dicts representing votes
        # for row in recent_votes:
            # votes.append({"candidate": row[0], "time_cast": row[1]})

        # stmt = sqlalchemy.text(
            # "SELECT COUNT(vote_id) FROM votes WHERE candidate=:candidate"
        # )
        # # Count number of votes for tabs
        # tab_result = conn.execute(stmt, candidate="TABS").fetchone()
        # tab_count = tab_result[0]
        # # Count number of votes for spaces
        # space_result = conn.execute(stmt, candidate="SPACES").fetchone()
        # space_count = space_result[0]
    # return {
        # "recent_votes": votes,
        # "space_count": space_count,
        # "tab_count": tab_count,
    # }


# @app.route("/votes", methods=["POST"])
# def save_vote(db: sqlalchemy.engine.base.Engine, team: str) -> Response:
    # time_cast = datetime.datetime.now(tz=datetime.timezone.utc)
    # # Verify that the team is one of the allowed options
    # if team != "TABS" and team != "SPACES":
        # logger.warning(f"Received invalid 'team' property: '{team}'")
        # return Response(
            # response="Invalid team specified. Should be one of 'TABS' or 'SPACES'",
            # status=400,
        # )

    # # [START cloud_sql_sqlserver_sqlalchemy_connection]
    # # Preparing a statement before hand can help protect against injections.
    # stmt = sqlalchemy.text(
        # "INSERT INTO votes (time_cast, candidate) VALUES (:time_cast, :candidate)"
    # )
    # try:
        # # Using a with statement ensures that the connection is always released
        # # back into the pool at the end of statement (even if an error occurs)
        # with db.connect() as conn:
            # conn.execute(stmt, time_cast=time_cast, candidate=team)
    # except Exception as e:
        # # If something goes wrong, handle the error in this section. This might
        # # involve retrying or adjusting parameters depending on the situation.
        # # [START_EXCLUDE]
        # logger.exception(e)
        # return Response(
            # status=500,
            # response="Unable to successfully cast vote! Please check the "
            # "application logs for more details.",
        # )
        # # [END_EXCLUDE]
    # # [END cloud_sql_sqlserver_sqlalchemy_connection]

    # return Response(
        # status=200,
        # response=f"Vote successfully cast for '{team}' at time {time_cast}!"
    # )


if __name__ == "__main__":
    app.run(host="127.0.0.1", port=8080, debug=True)