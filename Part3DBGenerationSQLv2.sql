
DROP INDEX [XPKDemographicData] ON [DemographicData]
go

DROP INDEX [XIF1DemographicData] ON [DemographicData]
go

DROP INDEX [XPKMriData] ON [MriData]
go

DROP INDEX [XIF1MriData] ON [MriData]
go

DROP INDEX [XPKContractCustomer] ON [ContractCustomer]
go

DROP INDEX [XIF1ContractCustomer] ON [ContractCustomer]
go

DROP INDEX [XIF2ContractCustomer] ON [ContractCustomer]
go

DROP INDEX [XPKClaimBenefit] ON [ClaimBenefit]
go

DROP INDEX [XIF1ClaimBenefit] ON [ClaimBenefit]
go

DROP INDEX [XIF2ClaimBenefit] ON [ClaimBenefit]
go

DROP INDEX [XPKClaimParticipant] ON [ClaimParticipant]
go

DROP INDEX [XIF1ClaimParticipant] ON [ClaimParticipant]
go

DROP INDEX [XIF2ClaimParticipant] ON [ClaimParticipant]
go

DROP INDEX [XPKClaim] ON [Claim]
go

DROP INDEX [XPKBeneficiary] ON [Beneficiary]
go

DROP INDEX [XIF1Beneficiary] ON [Beneficiary]
go

DROP INDEX [XIF2Beneficiary] ON [Beneficiary]
go

DROP INDEX [XPKAssocRelation] ON [AssocRelation]
go

DROP INDEX [XIF1AssocRelation] ON [AssocRelation]
go

DROP INDEX [XIF2AssocRelation] ON [AssocRelation]
go

DROP INDEX [XPKAssocPhone] ON [AssocPhone]
go

DROP INDEX [XIF1AssocPhone] ON [AssocPhone]
go

DROP INDEX [XPKCustomerRelation] ON [CustomerRelation]
go

DROP INDEX [XIF1CustomerRelation] ON [CustomerRelation]
go

DROP INDEX [XIF2CustomerRelation] ON [CustomerRelation]
go

DROP INDEX [XPKAccessAccount] ON [AccessAccount]
go

DROP INDEX [XIF1AccessAccount] ON [AccessAccount]
go

DROP INDEX [XIF2AccessAccount] ON [AccessAccount]
go

DROP INDEX [XPKContractBenefitPremium] ON [ContractBenefitPremium]
go

DROP INDEX [XIF1ContractBenefitPremium] ON [ContractBenefitPremium]
go

DROP INDEX [XIF2ContractBenefitPremium] ON [ContractBenefitPremium]
go

DROP INDEX [XIF3ContractBenefitPremium] ON [ContractBenefitPremium]
go

DROP INDEX [XPKContractBenefit] ON [ContractBenefit]
go

DROP INDEX [XIF1ContractBenefit] ON [ContractBenefit]
go

DROP INDEX [XIF2ContractBenefit] ON [ContractBenefit]
go

DROP INDEX [XPKContract] ON [Contract]
go

DROP INDEX [XPKProduct] ON [Product]
go

DROP INDEX [XPKAssociateAccount] ON [AssociateAccount]
go

DROP INDEX [XIF1AssociateAccount] ON [AssociateAccount]
go

DROP INDEX [XIF2AssociateAccount] ON [AssociateAccount]
go

DROP INDEX [XIF3AssociateAccount] ON [AssociateAccount]
go

DROP INDEX [XIF4AssociateAccount] ON [AssociateAccount]
go

DROP INDEX [XPKManagerContract] ON [ManagerContract]
go

DROP INDEX [XPKAssociateRole] ON [AssociateRole]
go

DROP INDEX [XPKAssociate] ON [Associate]
go

DROP INDEX [XIF2Associate] ON [Associate]
go

DROP INDEX [XPKAssocLocation] ON [AssocLocation]
go

DROP INDEX [XPKAccount_Member] ON [Account_Member]
go

DROP INDEX [XIF1Account_Member] ON [Account_Member]
go

DROP INDEX [XIF2Account_Member] ON [Account_Member]
go

DROP INDEX [XPKCustomer] ON [Customer]
go

DROP INDEX [XPKAccountRelation] ON [AccountRelation]
go

DROP INDEX [XIF1AccountRelation] ON [AccountRelation]
go

DROP INDEX [XIF2AccountRelation] ON [AccountRelation]
go

DROP INDEX [XPKAccount] ON [Account]
go

DROP INDEX [XIF2Account] ON [Account]
go

DROP INDEX [XPKCompanyDetail] ON [CompanyDetail]
go

DROP TABLE [DemographicData]
go

DROP TABLE [MriData]
go

DROP TABLE [ContractCustomer]
go

DROP TABLE [ClaimBenefit]
go

DROP TABLE [ClaimParticipant]
go

DROP TABLE [Claim]
go

DROP TABLE [Beneficiary]
go

DROP TABLE [AssocRelation]
go

DROP TABLE [AssocPhone]
go

DROP TABLE [CustomerRelation]
go

DROP TABLE [AccessAccount]
go

DROP TABLE [ContractBenefitPremium]
go

DROP TABLE [ContractBenefit]
go

DROP TABLE [Contract]
go

DROP TABLE [Product]
go

DROP TABLE [AssociateAccount]
go

DROP TABLE [ManagerContract]
go

DROP TABLE [AssociateRole]
go

DROP TABLE [Associate]
go

DROP TABLE [AssocLocation]
go

DROP TABLE [Account_Member]
go

DROP TABLE [Customer]
go

DROP TABLE [AccountRelation]
go

DROP TABLE [Account]
go

DROP TABLE [CompanyDetail]
go

CREATE TABLE [AccessAccount]
( 
	[AdminFlag]          binary  NULL ,
	[AccountId]          int  NOT NULL ,
	[CustomerId]         int  NOT NULL ,
	CONSTRAINT [XPKAccessAccount] PRIMARY KEY  CLUSTERED ([AccountId] ASC,[CustomerId] ASC),
	INDEX [XIF1AccessAccount] NONCLUSTERED ([AccountId]  ASC),
	INDEX [XIF2AccessAccount] NONCLUSTERED ([CustomerId]  ASC)
)
go

CREATE TABLE [Account]
( 
	[AccountName]        char(18)  NULL ,
	[AccountName2]       char(18)  NULL ,
	[LocationAddress1]   char(18)  NULL ,
	[LocationAddress2]   char(18)  NULL ,
	[LocationCity]       char(18)  NULL ,
	[LocationState]      char(18)  NULL ,
	[LocationZip]        int  NULL ,
	[CompanyId]          int  NULL ,
	[TaxIDNumber]        int  NULL ,
	[ActivityStatus]     char(18)  NULL ,
	[ActivityStatusDate] char(18)  NULL ,
	[GroupNumber]        int  NULL ,
	[LegacyFlexID]       int  NULL ,
	[AccountEstablishedDate] char(18)  NULL ,
	[PlanYearStartDate]  date  NULL ,
	[PlanYearEndDate]    date  NULL ,
	[SubsequentYearStartDate] date  NULL ,
	[BillingAccount]     char(18)  NULL ,
	[IndustryDescription] char(18)  NULL ,
	[AccountId]          int  NOT NULL ,
	CONSTRAINT [XPKAccount] PRIMARY KEY  CLUSTERED ([AccountId] ASC),
	INDEX [XIF2Account] NONCLUSTERED ([CompanyId]  ASC)
)
go

CREATE TABLE [Account_Member]
( 
	[StartDate]          date  NULL ,
	[CustBAcctDepartmentName] char(18)  NULL ,
	[EndDate]            date  NULL ,
	[FSAContributionAmount] int  NULL ,
	[CustomerId]         int  NOT NULL ,
	[AccountId]          int  NOT NULL ,
	CONSTRAINT [XPKAccount_Member] PRIMARY KEY  CLUSTERED ([CustomerId] ASC,[AccountId] ASC),
	INDEX [XIF1Account_Member] NONCLUSTERED ([CustomerId]  ASC),
	INDEX [XIF2Account_Member] NONCLUSTERED ([AccountId]  ASC)
)
go

CREATE TABLE [AccountRelation]
( 
	[RelationTypeDate]   date  NULL ,
	[RelationshipType]   char(18)  NULL ,
	[AccountId]          int  NOT NULL ,
	[MasterAccountId]    int  NOT NULL ,
	CONSTRAINT [XPKAccountRelation] PRIMARY KEY  CLUSTERED ([AccountId] ASC,[MasterAccountId] ASC),
	INDEX [XIF1AccountRelation] NONCLUSTERED ([AccountId]  ASC),
	INDEX [XIF2AccountRelation] NONCLUSTERED ([MasterAccountId]  ASC)
)
go

CREATE TABLE [Associate]
( 
	[AssocLastName]      char(18)  NULL ,
	[AssocFirstName]     char(18)  NULL ,
	[AssocMiddleInitial] char(18)  NULL ,
	[AssocSuffix]        char(18)  NULL ,
	[AssocDOB]           date  NULL ,
	[TenureDate]         date  NULL ,
	[AssocId]            int  NOT NULL ,
	[AssocLocId]         int  NULL ,
	[StartDate]          date  NULL ,
	[EndDate]            date  NULL ,
	CONSTRAINT [XPKAssociate] PRIMARY KEY  CLUSTERED ([AssocId] ASC),
	INDEX [XIF2Associate] NONCLUSTERED ([AssocLocId]  ASC)
)
go

CREATE TABLE [AssociateAccount]
( 
	[StartDate]          date  NULL ,
	[StopDate]           date  NULL ,
	[AccountId]          int  NOT NULL ,
	[AssocId]            int  NOT NULL ,
	[AssocRoleId]        int  NOT NULL ,
	[ManagerContractId]  int  NOT NULL ,
	CONSTRAINT [XPKAssociateAccount] PRIMARY KEY  CLUSTERED ([AccountId] ASC,[AssocId] ASC,[ManagerContractId] ASC),
	INDEX [XIF1AssociateAccount] NONCLUSTERED ([AccountId]  ASC),
	INDEX [XIF2AssociateAccount] NONCLUSTERED ([AssocId]  ASC),
	INDEX [XIF3AssociateAccount] NONCLUSTERED ([AssocRoleId]  ASC),
	INDEX [XIF4AssociateAccount] NONCLUSTERED ([ManagerContractId]  ASC)
)
go

CREATE TABLE [AssociateRole]
( 
	[AssocRole]          char(18)  NULL ,
	[LastServiceDate]    date  NULL ,
	[ServiceType]        char(18)  NULL ,
	[Description]        char(18)  NULL ,
	[AssocRoleId]        int  NOT NULL ,
	CONSTRAINT [XPKAssociateRole] PRIMARY KEY  CLUSTERED ([AssocRoleId] ASC)
)
go

CREATE TABLE [AssocLocation]
( 
	[TerritoryName]      char(18)  NULL ,
	[StateOperationName] char(18)  NULL ,
	[StateOperationDivisionName] char(18)  NULL ,
	[RegionName]         char(18)  NULL ,
	[DistrictName]       char(18)  NULL ,
	[StateCode]          char(18)  NULL ,
	[AssocLocId]         int  NOT NULL ,
	CONSTRAINT [XPKAssocLocation] PRIMARY KEY  CLUSTERED ([AssocLocId] ASC)
)
go

CREATE TABLE [AssocPhone]
( 
	[PhoneNumber]        int  NOT NULL ,
	[PhoneType]          char(18)  NULL ,
	[Description]        char(18)  NULL ,
	[AssocId]            int  NOT NULL ,
	CONSTRAINT [XPKAssocPhone] PRIMARY KEY  CLUSTERED ([AssocId] ASC,[PhoneNumber] ASC),
	INDEX [XIF1AssocPhone] NONCLUSTERED ([AssocId]  ASC)
)
go

CREATE TABLE [AssocRelation]
( 
	[AssocId]            int  NOT NULL ,
	[RelAssocId]         int  NOT NULL ,
	[RelationType]       char(18)  NULL ,
	CONSTRAINT [XPKAssocRelation] PRIMARY KEY  CLUSTERED ([AssocId] ASC,[RelAssocId] ASC),
	INDEX [XIF1AssocRelation] NONCLUSTERED ([AssocId]  ASC),
	INDEX [XIF2AssocRelation] NONCLUSTERED ([RelAssocId]  ASC)
)
go

CREATE TABLE [Beneficiary]
( 
	[CustomerId]         int  NOT NULL ,
	[ContractNumber]     int  NOT NULL ,
	[ProductId]          int  NOT NULL ,
	CONSTRAINT [XPKBeneficiary] PRIMARY KEY  CLUSTERED ([CustomerId] ASC,[ContractNumber] ASC,[ProductId] ASC),
	INDEX [XIF1Beneficiary] NONCLUSTERED ([CustomerId]  ASC),
	INDEX [XIF2Beneficiary] NONCLUSTERED ([ContractNumber]  ASC, [ProductId]  ASC)
)
go

CREATE TABLE [Claim]
( 
	[ClaimNumber]        char(18)  NOT NULL ,
	[ClaimDate]          date  NULL ,
	[SettlementDate]     date  NULL ,
	[WellnessEligibilityDate] date  NULL ,
	[ClaimImage]         char(18)  NULL ,
	CONSTRAINT [XPKClaim] PRIMARY KEY  CLUSTERED ([ClaimNumber] ASC)
)
go

CREATE TABLE [ClaimBenefit]
( 
	[ClaimNumber]        char(18)  NOT NULL ,
	[ContractNumber]     int  NOT NULL ,
	[ProductId]          int  NOT NULL ,
	CONSTRAINT [XPKClaimBenefit] PRIMARY KEY  CLUSTERED ([ClaimNumber] ASC,[ContractNumber] ASC,[ProductId] ASC),
	INDEX [XIF1ClaimBenefit] NONCLUSTERED ([ClaimNumber]  ASC),
	INDEX [XIF2ClaimBenefit] NONCLUSTERED ([ContractNumber]  ASC, [ProductId]  ASC)
)
go

CREATE TABLE [ClaimParticipant]
( 
	[CustomerId]         int  NOT NULL ,
	[ClaimNumber]        char(18)  NOT NULL ,
	CONSTRAINT [XPKClaimParticipant] PRIMARY KEY  CLUSTERED ([CustomerId] ASC,[ClaimNumber] ASC),
	INDEX [XIF1ClaimParticipant] NONCLUSTERED ([CustomerId]  ASC),
	INDEX [XIF2ClaimParticipant] NONCLUSTERED ([ClaimNumber]  ASC)
)
go

CREATE TABLE [CompanyDetail]
( 
	[CompanyId]          int  NOT NULL ,
	[CompanyName]        char(18)  NULL ,
	[LegacyCompanyNo]    int  NULL ,
	[NumberOfEmployees]  int  NULL ,
	[NumberOfEmployessDate] date  NULL ,
	[StandardIndustryCode] int  NULL ,
	CONSTRAINT [XPKCompanyDetail] PRIMARY KEY  CLUSTERED ([CompanyId] ASC)
)
go

CREATE TABLE [Contract]
( 
	[ContractNumber]     int  NOT NULL ,
	[ActivityStatus]     char(18)  NULL ,
	[ActivityStatusDate] date  NULL ,
	[CoverageType]       char(18)  NULL ,
	[BillingMethod]      char(18)  NULL ,
	[SuspendCode]        int  NULL ,
	[ExceptionCode]      int  NULL ,
	CONSTRAINT [XPKContract] PRIMARY KEY  CLUSTERED ([ContractNumber] ASC)
)
go

CREATE TABLE [ContractBenefit]
( 
	[PolicyCountContribution] char(18)  NULL ,
	[AHBenefit]          char(18)  NULL ,
	[LifeBenefit]        char(18)  NULL ,
	[LifeFinancial]      char(18)  NULL ,
	[ContractNumber]     int  NOT NULL ,
	[ProductId]          int  NOT NULL ,
	CONSTRAINT [XPKContractBenefit] PRIMARY KEY  CLUSTERED ([ContractNumber] ASC,[ProductId] ASC),
	INDEX [XIF1ContractBenefit] NONCLUSTERED ([ProductId]  ASC),
	INDEX [XIF2ContractBenefit] NONCLUSTERED ([ContractNumber]  ASC)
)
go

CREATE TABLE [ContractBenefitPremium]
( 
	[PremiumCode]        int  NOT NULL ,
	[AnnualizedPremium]  char(18)  NULL ,
	[ProcessDate]        date  NULL ,
	[AppSignDate]        date  NULL ,
	[ManConAmount]       char(18)  NULL ,
	[ManConCommissionRate] float  NULL ,
	[ManConPMR_C_Fields] char(18)  NULL ,
	[AssocLocProductionCreditSplitPercentage] float  NULL ,
	[ManagerContractId]  int  NOT NULL ,
	[AssocId]            int  NOT NULL ,
	[ContractNumber]     int  NOT NULL ,
	[ProductId]          int  NOT NULL ,
	CONSTRAINT [XPKContractBenefitPremium] PRIMARY KEY  CLUSTERED ([PremiumCode] ASC,[ManagerContractId] ASC,[AssocId] ASC,[ContractNumber] ASC,[ProductId] ASC),
	INDEX [XIF1ContractBenefitPremium] NONCLUSTERED ([ManagerContractId]  ASC),
	INDEX [XIF2ContractBenefitPremium] NONCLUSTERED ([AssocId]  ASC),
	INDEX [XIF3ContractBenefitPremium] NONCLUSTERED ([ContractNumber]  ASC, [ProductId]  ASC)
)
go

CREATE TABLE [ContractCustomer]
( 
	[SignedDate]         date  NULL ,
	[StartDate]          date  NULL ,
	[EndDate]            date  NULL ,
	[ContractNumber]     int  NOT NULL ,
	[CustomerId]         int  NOT NULL ,
	CONSTRAINT [XPKContractCustomer] PRIMARY KEY  CLUSTERED ([ContractNumber] ASC,[CustomerId] ASC),
	INDEX [XIF1ContractCustomer] NONCLUSTERED ([ContractNumber]  ASC),
	INDEX [XIF2ContractCustomer] NONCLUSTERED ([CustomerId]  ASC)
)
go

CREATE TABLE [Customer]
( 
	[CustLastName]       char(18)  NULL ,
	[CustFirstName]      char(18)  NULL ,
	[CustMiddleInitial]  char(18)  NULL ,
	[CustSuffix]         char(18)  NULL ,
	[CustDOB]            date  NULL ,
	[CustSalutation]     char(18)  NULL ,
	[CusteMailAddress]   char(18)  NULL ,
	[Gender]             char(18)  NULL ,
	[SSN_TIN]            int  NULL ,
	[SSNType]            char(18)  NULL ,
	[CustomerId]         int  NOT NULL ,
	CONSTRAINT [XPKCustomer] PRIMARY KEY  CLUSTERED ([CustomerId] ASC)
)
go

CREATE TABLE [CustomerRelation]
( 
	[RelationToCustomer] char(18)  NULL ,
	[StartDate]          date  NULL ,
	[EndDate]            date  NULL ,
	[CustomerId]         int  NOT NULL ,
	[RelationCustomerId] int  NOT NULL ,
	CONSTRAINT [XPKCustomerRelation] PRIMARY KEY  CLUSTERED ([CustomerId] ASC,[RelationCustomerId] ASC),
	INDEX [XIF1CustomerRelation] NONCLUSTERED ([CustomerId]  ASC),
	INDEX [XIF2CustomerRelation] NONCLUSTERED ([RelationCustomerId]  ASC)
)
go

CREATE TABLE [DemographicData]
( 
	[CustomerId]         int  NOT NULL ,
	[DemoState]          char(18)  NULL ,
	[Age]                int  NULL ,
	[RiskRating]         float  NULL ,
	[DemoDataId]         int  NOT NULL ,
	CONSTRAINT [XPKDemographicData] PRIMARY KEY  CLUSTERED ([CustomerId] ASC,[DemoDataId] ASC),
	INDEX [XIF1DemographicData] NONCLUSTERED ([CustomerId]  ASC)
)
go

CREATE TABLE [ManagerContract]
( 
	[SitCode]            int  NULL ,
	[IssueDate]          date  NULL ,
	[ContractType]       char(18)  NULL ,
	[ContractSignDate]   date  NULL ,
	[ContractProcessDate] date  NULL ,
	[EndDate]            date  NULL ,
	[WrittingNumber]     int  NULL ,
	[ManagerContractId]  int  NOT NULL ,
	CONSTRAINT [XPKManagerContract] PRIMARY KEY  CLUSTERED ([ManagerContractId] ASC)
)
go

CREATE TABLE [MriData]
( 
	[CustomerId]         int  NOT NULL ,
	[MRIImage]           varchar(20)  NULL ,
	[MRIRisk]            float  NULL ,
	[MRIId]              int  NOT NULL ,
	CONSTRAINT [XPKMriData] PRIMARY KEY  CLUSTERED ([CustomerId] ASC,[MRIId] ASC),
	INDEX [XIF1MriData] NONCLUSTERED ([CustomerId]  ASC)
)
go

CREATE TABLE [Product]
( 
	[LineOfBusiness]     char(18)  NULL ,
	[Description]        char(18)  NULL ,
	[SeriesName]         char(18)  NULL ,
	[PlanName]           char(18)  NULL ,
	[Benefit]            char(18)  NULL ,
	[AnnualizedPremium]  integer  NULL ,
	[RiderName]          char(18)  NULL ,
	[RateBookLocationCode] int  NULL ,
	[ProductId]          int  NOT NULL ,
	CONSTRAINT [XPKProduct] PRIMARY KEY  CLUSTERED ([ProductId] ASC)
)
go


ALTER TABLE [AccessAccount]
	ADD CONSTRAINT [R_39] FOREIGN KEY ([AccountId]) REFERENCES [Account]([AccountId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [AccessAccount]
	ADD CONSTRAINT [R_40] FOREIGN KEY ([CustomerId]) REFERENCES [Customer]([CustomerId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Account]
	ADD CONSTRAINT [R_29] FOREIGN KEY ([CompanyId]) REFERENCES [CompanyDetail]([CompanyId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Account_Member]
	ADD CONSTRAINT [R_36] FOREIGN KEY ([CustomerId]) REFERENCES [Customer]([CustomerId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Account_Member]
	ADD CONSTRAINT [R_38] FOREIGN KEY ([AccountId]) REFERENCES [Account]([AccountId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [AccountRelation]
	ADD CONSTRAINT [R_30] FOREIGN KEY ([AccountId]) REFERENCES [Account]([AccountId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [AccountRelation]
	ADD CONSTRAINT [R_31] FOREIGN KEY ([MasterAccountId]) REFERENCES [Account]([AccountId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Associate]
	ADD CONSTRAINT [R_63] FOREIGN KEY ([AssocLocId]) REFERENCES [AssocLocation]([AssocLocId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [AssociateAccount]
	ADD CONSTRAINT [R_32] FOREIGN KEY ([AccountId]) REFERENCES [Account]([AccountId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [AssociateAccount]
	ADD CONSTRAINT [R_33] FOREIGN KEY ([AssocId]) REFERENCES [Associate]([AssocId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [AssociateAccount]
	ADD CONSTRAINT [R_34] FOREIGN KEY ([AssocRoleId]) REFERENCES [AssociateRole]([AssocRoleId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [AssociateAccount]
	ADD CONSTRAINT [R_35] FOREIGN KEY ([ManagerContractId]) REFERENCES [ManagerContract]([ManagerContractId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [AssocPhone]
	ADD CONSTRAINT [R_43] FOREIGN KEY ([AssocId]) REFERENCES [Associate]([AssocId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [AssocRelation]
	ADD CONSTRAINT [R_44] FOREIGN KEY ([AssocId]) REFERENCES [Associate]([AssocId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [AssocRelation]
	ADD CONSTRAINT [R_45] FOREIGN KEY ([RelAssocId]) REFERENCES [Associate]([AssocId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Beneficiary]
	ADD CONSTRAINT [R_48] FOREIGN KEY ([CustomerId]) REFERENCES [Customer]([CustomerId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Beneficiary]
	ADD CONSTRAINT [R_49] FOREIGN KEY ([ContractNumber],[ProductId]) REFERENCES [ContractBenefit]([ContractNumber],[ProductId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [ClaimBenefit]
	ADD CONSTRAINT [R_52] FOREIGN KEY ([ClaimNumber]) REFERENCES [Claim]([ClaimNumber])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [ClaimBenefit]
	ADD CONSTRAINT [R_53] FOREIGN KEY ([ContractNumber],[ProductId]) REFERENCES [ContractBenefit]([ContractNumber],[ProductId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [ClaimParticipant]
	ADD CONSTRAINT [R_50] FOREIGN KEY ([CustomerId]) REFERENCES [Customer]([CustomerId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [ClaimParticipant]
	ADD CONSTRAINT [R_51] FOREIGN KEY ([ClaimNumber]) REFERENCES [Claim]([ClaimNumber])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [ContractBenefit]
	ADD CONSTRAINT [R_46] FOREIGN KEY ([ProductId]) REFERENCES [Product]([ProductId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [ContractBenefit]
	ADD CONSTRAINT [R_47] FOREIGN KEY ([ContractNumber]) REFERENCES [Contract]([ContractNumber])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [ContractBenefitPremium]
	ADD CONSTRAINT [R_56] FOREIGN KEY ([ManagerContractId]) REFERENCES [ManagerContract]([ManagerContractId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [ContractBenefitPremium]
	ADD CONSTRAINT [R_57] FOREIGN KEY ([AssocId]) REFERENCES [Associate]([AssocId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [ContractBenefitPremium]
	ADD CONSTRAINT [R_58] FOREIGN KEY ([ContractNumber],[ProductId]) REFERENCES [ContractBenefit]([ContractNumber],[ProductId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [ContractCustomer]
	ADD CONSTRAINT [R_54] FOREIGN KEY ([ContractNumber]) REFERENCES [Contract]([ContractNumber])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [ContractCustomer]
	ADD CONSTRAINT [R_55] FOREIGN KEY ([CustomerId]) REFERENCES [Customer]([CustomerId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [CustomerRelation]
	ADD CONSTRAINT [R_41] FOREIGN KEY ([CustomerId]) REFERENCES [Customer]([CustomerId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [CustomerRelation]
	ADD CONSTRAINT [R_42] FOREIGN KEY ([RelationCustomerId]) REFERENCES [Customer]([CustomerId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [DemographicData]
	ADD CONSTRAINT [R_65] FOREIGN KEY ([CustomerId]) REFERENCES [Customer]([CustomerId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [MriData]
	ADD CONSTRAINT [R_64] FOREIGN KEY ([CustomerId]) REFERENCES [Customer]([CustomerId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


CREATE TRIGGER tD_AccessAccount ON AccessAccount FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on AccessAccount */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Customer  AccessAccount on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="000290fe", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="AccessAccount"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_40", FK_COLUMNS="CustomerId" */
    IF EXISTS (SELECT * FROM deleted,Customer
      WHERE
        /* %JoinFKPK(deleted,Customer," = "," AND") */
        deleted.CustomerId = Customer.CustomerId AND
        NOT EXISTS (
          SELECT * FROM AccessAccount
          WHERE
            /* %JoinFKPK(AccessAccount,Customer," = "," AND") */
            AccessAccount.CustomerId = Customer.CustomerId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last AccessAccount because Customer exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Account  AccessAccount on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Account"
    CHILD_OWNER="", CHILD_TABLE="AccessAccount"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_39", FK_COLUMNS="AccountId" */
    IF EXISTS (SELECT * FROM deleted,Account
      WHERE
        /* %JoinFKPK(deleted,Account," = "," AND") */
        deleted.AccountId = Account.AccountId AND
        NOT EXISTS (
          SELECT * FROM AccessAccount
          WHERE
            /* %JoinFKPK(AccessAccount,Account," = "," AND") */
            AccessAccount.AccountId = Account.AccountId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last AccessAccount because Account exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_AccessAccount ON AccessAccount FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on AccessAccount */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insAccountId int, 
           @insCustomerId int,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Customer  AccessAccount on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0002bc26", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="AccessAccount"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_40", FK_COLUMNS="CustomerId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(CustomerId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Customer
        WHERE
          /* %JoinFKPK(inserted,Customer) */
          inserted.CustomerId = Customer.CustomerId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update AccessAccount because Customer does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Account  AccessAccount on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Account"
    CHILD_OWNER="", CHILD_TABLE="AccessAccount"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_39", FK_COLUMNS="AccountId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(AccountId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Account
        WHERE
          /* %JoinFKPK(inserted,Account) */
          inserted.AccountId = Account.AccountId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update AccessAccount because Account does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_Account ON Account FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Account */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Account  AccessAccount on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00064e86", PARENT_OWNER="", PARENT_TABLE="Account"
    CHILD_OWNER="", CHILD_TABLE="AccessAccount"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_39", FK_COLUMNS="AccountId" */
    IF EXISTS (
      SELECT * FROM deleted,AccessAccount
      WHERE
        /*  %JoinFKPK(AccessAccount,deleted," = "," AND") */
        AccessAccount.AccountId = deleted.AccountId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Account because AccessAccount exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Account  Account_Member on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Account"
    CHILD_OWNER="", CHILD_TABLE="Account_Member"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_38", FK_COLUMNS="AccountId" */
    IF EXISTS (
      SELECT * FROM deleted,Account_Member
      WHERE
        /*  %JoinFKPK(Account_Member,deleted," = "," AND") */
        Account_Member.AccountId = deleted.AccountId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Account because Account_Member exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Account  AssociateAccount on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Account"
    CHILD_OWNER="", CHILD_TABLE="AssociateAccount"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_32", FK_COLUMNS="AccountId" */
    IF EXISTS (
      SELECT * FROM deleted,AssociateAccount
      WHERE
        /*  %JoinFKPK(AssociateAccount,deleted," = "," AND") */
        AssociateAccount.AccountId = deleted.AccountId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Account because AssociateAccount exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Account  AccountRelation on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Account"
    CHILD_OWNER="", CHILD_TABLE="AccountRelation"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_31", FK_COLUMNS="MasterAccountId" */
    IF EXISTS (
      SELECT * FROM deleted,AccountRelation
      WHERE
        /*  %JoinFKPK(AccountRelation,deleted," = "," AND") */
        AccountRelation.MasterAccountId = deleted.AccountId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Account because AccountRelation exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Account  AccountRelation on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Account"
    CHILD_OWNER="", CHILD_TABLE="AccountRelation"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_30", FK_COLUMNS="AccountId" */
    IF EXISTS (
      SELECT * FROM deleted,AccountRelation
      WHERE
        /*  %JoinFKPK(AccountRelation,deleted," = "," AND") */
        AccountRelation.AccountId = deleted.AccountId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Account because AccountRelation exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* CompanyDetail  Account on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="CompanyDetail"
    CHILD_OWNER="", CHILD_TABLE="Account"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_29", FK_COLUMNS="CompanyId" */
    IF EXISTS (SELECT * FROM deleted,CompanyDetail
      WHERE
        /* %JoinFKPK(deleted,CompanyDetail," = "," AND") */
        deleted.CompanyId = CompanyDetail.CompanyId AND
        NOT EXISTS (
          SELECT * FROM Account
          WHERE
            /* %JoinFKPK(Account,CompanyDetail," = "," AND") */
            Account.CompanyId = CompanyDetail.CompanyId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Account because CompanyDetail exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_Account ON Account FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Account */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insAccountId int,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Account  AccessAccount on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00070786", PARENT_OWNER="", PARENT_TABLE="Account"
    CHILD_OWNER="", CHILD_TABLE="AccessAccount"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_39", FK_COLUMNS="AccountId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(AccountId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,AccessAccount
      WHERE
        /*  %JoinFKPK(AccessAccount,deleted," = "," AND") */
        AccessAccount.AccountId = deleted.AccountId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Account because AccessAccount exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Account  Account_Member on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Account"
    CHILD_OWNER="", CHILD_TABLE="Account_Member"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_38", FK_COLUMNS="AccountId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(AccountId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Account_Member
      WHERE
        /*  %JoinFKPK(Account_Member,deleted," = "," AND") */
        Account_Member.AccountId = deleted.AccountId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Account because Account_Member exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Account  AssociateAccount on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Account"
    CHILD_OWNER="", CHILD_TABLE="AssociateAccount"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_32", FK_COLUMNS="AccountId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(AccountId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,AssociateAccount
      WHERE
        /*  %JoinFKPK(AssociateAccount,deleted," = "," AND") */
        AssociateAccount.AccountId = deleted.AccountId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Account because AssociateAccount exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Account  AccountRelation on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Account"
    CHILD_OWNER="", CHILD_TABLE="AccountRelation"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_31", FK_COLUMNS="MasterAccountId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(AccountId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,AccountRelation
      WHERE
        /*  %JoinFKPK(AccountRelation,deleted," = "," AND") */
        AccountRelation.MasterAccountId = deleted.AccountId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Account because AccountRelation exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Account  AccountRelation on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Account"
    CHILD_OWNER="", CHILD_TABLE="AccountRelation"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_30", FK_COLUMNS="AccountId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(AccountId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,AccountRelation
      WHERE
        /*  %JoinFKPK(AccountRelation,deleted," = "," AND") */
        AccountRelation.AccountId = deleted.AccountId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Account because AccountRelation exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* CompanyDetail  Account on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="CompanyDetail"
    CHILD_OWNER="", CHILD_TABLE="Account"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_29", FK_COLUMNS="CompanyId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(CompanyId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,CompanyDetail
        WHERE
          /* %JoinFKPK(inserted,CompanyDetail) */
          inserted.CompanyId = CompanyDetail.CompanyId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.CompanyId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Account because CompanyDetail does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_Account_Member ON Account_Member FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Account_Member */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Account  Account_Member on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00027db1", PARENT_OWNER="", PARENT_TABLE="Account"
    CHILD_OWNER="", CHILD_TABLE="Account_Member"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_38", FK_COLUMNS="AccountId" */
    IF EXISTS (SELECT * FROM deleted,Account
      WHERE
        /* %JoinFKPK(deleted,Account," = "," AND") */
        deleted.AccountId = Account.AccountId AND
        NOT EXISTS (
          SELECT * FROM Account_Member
          WHERE
            /* %JoinFKPK(Account_Member,Account," = "," AND") */
            Account_Member.AccountId = Account.AccountId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Account_Member because Account exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Customer  Account_Member on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Account_Member"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_36", FK_COLUMNS="CustomerId" */
    IF EXISTS (SELECT * FROM deleted,Customer
      WHERE
        /* %JoinFKPK(deleted,Customer," = "," AND") */
        deleted.CustomerId = Customer.CustomerId AND
        NOT EXISTS (
          SELECT * FROM Account_Member
          WHERE
            /* %JoinFKPK(Account_Member,Customer," = "," AND") */
            Account_Member.CustomerId = Customer.CustomerId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Account_Member because Customer exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_Account_Member ON Account_Member FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Account_Member */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insCustomerId int, 
           @insAccountId int,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Account  Account_Member on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0002aac4", PARENT_OWNER="", PARENT_TABLE="Account"
    CHILD_OWNER="", CHILD_TABLE="Account_Member"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_38", FK_COLUMNS="AccountId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(AccountId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Account
        WHERE
          /* %JoinFKPK(inserted,Account) */
          inserted.AccountId = Account.AccountId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Account_Member because Account does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Customer  Account_Member on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Account_Member"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_36", FK_COLUMNS="CustomerId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(CustomerId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Customer
        WHERE
          /* %JoinFKPK(inserted,Customer) */
          inserted.CustomerId = Customer.CustomerId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Account_Member because Customer does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_AccountRelation ON AccountRelation FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on AccountRelation */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Account  AccountRelation on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="000290c5", PARENT_OWNER="", PARENT_TABLE="Account"
    CHILD_OWNER="", CHILD_TABLE="AccountRelation"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_31", FK_COLUMNS="MasterAccountId" */
    IF EXISTS (SELECT * FROM deleted,Account
      WHERE
        /* %JoinFKPK(deleted,Account," = "," AND") */
        deleted.MasterAccountId = Account.AccountId AND
        NOT EXISTS (
          SELECT * FROM AccountRelation
          WHERE
            /* %JoinFKPK(AccountRelation,Account," = "," AND") */
            AccountRelation.MasterAccountId = Account.AccountId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last AccountRelation because Account exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Account  AccountRelation on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Account"
    CHILD_OWNER="", CHILD_TABLE="AccountRelation"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_30", FK_COLUMNS="AccountId" */
    IF EXISTS (SELECT * FROM deleted,Account
      WHERE
        /* %JoinFKPK(deleted,Account," = "," AND") */
        deleted.AccountId = Account.AccountId AND
        NOT EXISTS (
          SELECT * FROM AccountRelation
          WHERE
            /* %JoinFKPK(AccountRelation,Account," = "," AND") */
            AccountRelation.AccountId = Account.AccountId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last AccountRelation because Account exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_AccountRelation ON AccountRelation FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on AccountRelation */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insAccountId int, 
           @insMasterAccountId int,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Account  AccountRelation on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0002cd9e", PARENT_OWNER="", PARENT_TABLE="Account"
    CHILD_OWNER="", CHILD_TABLE="AccountRelation"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_31", FK_COLUMNS="MasterAccountId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(MasterAccountId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Account
        WHERE
          /* %JoinFKPK(inserted,Account) */
          inserted.MasterAccountId = Account.AccountId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update AccountRelation because Account does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Account  AccountRelation on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Account"
    CHILD_OWNER="", CHILD_TABLE="AccountRelation"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_30", FK_COLUMNS="AccountId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(AccountId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Account
        WHERE
          /* %JoinFKPK(inserted,Account) */
          inserted.AccountId = Account.AccountId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update AccountRelation because Account does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_Associate ON Associate FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Associate */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Associate  ContractBenefitPremium on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="000660e4", PARENT_OWNER="", PARENT_TABLE="Associate"
    CHILD_OWNER="", CHILD_TABLE="ContractBenefitPremium"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_57", FK_COLUMNS="AssocId" */
    IF EXISTS (
      SELECT * FROM deleted,ContractBenefitPremium
      WHERE
        /*  %JoinFKPK(ContractBenefitPremium,deleted," = "," AND") */
        ContractBenefitPremium.AssocId = deleted.AssocId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Associate because ContractBenefitPremium exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Associate  AssocRelation on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Associate"
    CHILD_OWNER="", CHILD_TABLE="AssocRelation"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_45", FK_COLUMNS="RelAssocId" */
    IF EXISTS (
      SELECT * FROM deleted,AssocRelation
      WHERE
        /*  %JoinFKPK(AssocRelation,deleted," = "," AND") */
        AssocRelation.RelAssocId = deleted.AssocId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Associate because AssocRelation exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Associate  AssocRelation on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Associate"
    CHILD_OWNER="", CHILD_TABLE="AssocRelation"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_44", FK_COLUMNS="AssocId" */
    IF EXISTS (
      SELECT * FROM deleted,AssocRelation
      WHERE
        /*  %JoinFKPK(AssocRelation,deleted," = "," AND") */
        AssocRelation.AssocId = deleted.AssocId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Associate because AssocRelation exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Associate  AssocPhone on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Associate"
    CHILD_OWNER="", CHILD_TABLE="AssocPhone"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_43", FK_COLUMNS="AssocId" */
    IF EXISTS (
      SELECT * FROM deleted,AssocPhone
      WHERE
        /*  %JoinFKPK(AssocPhone,deleted," = "," AND") */
        AssocPhone.AssocId = deleted.AssocId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Associate because AssocPhone exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Associate  AssociateAccount on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Associate"
    CHILD_OWNER="", CHILD_TABLE="AssociateAccount"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_33", FK_COLUMNS="AssocId" */
    IF EXISTS (
      SELECT * FROM deleted,AssociateAccount
      WHERE
        /*  %JoinFKPK(AssociateAccount,deleted," = "," AND") */
        AssociateAccount.AssocId = deleted.AssocId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Associate because AssociateAccount exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* AssocLocation  Associate on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="AssocLocation"
    CHILD_OWNER="", CHILD_TABLE="Associate"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_63", FK_COLUMNS="AssocLocId" */
    IF EXISTS (SELECT * FROM deleted,AssocLocation
      WHERE
        /* %JoinFKPK(deleted,AssocLocation," = "," AND") */
        deleted.AssocLocId = AssocLocation.AssocLocId AND
        NOT EXISTS (
          SELECT * FROM Associate
          WHERE
            /* %JoinFKPK(Associate,AssocLocation," = "," AND") */
            Associate.AssocLocId = AssocLocation.AssocLocId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Associate because AssocLocation exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_Associate ON Associate FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Associate */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insAssocId int,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Associate  ContractBenefitPremium on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00070430", PARENT_OWNER="", PARENT_TABLE="Associate"
    CHILD_OWNER="", CHILD_TABLE="ContractBenefitPremium"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_57", FK_COLUMNS="AssocId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(AssocId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,ContractBenefitPremium
      WHERE
        /*  %JoinFKPK(ContractBenefitPremium,deleted," = "," AND") */
        ContractBenefitPremium.AssocId = deleted.AssocId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Associate because ContractBenefitPremium exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Associate  AssocRelation on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Associate"
    CHILD_OWNER="", CHILD_TABLE="AssocRelation"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_45", FK_COLUMNS="RelAssocId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(AssocId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,AssocRelation
      WHERE
        /*  %JoinFKPK(AssocRelation,deleted," = "," AND") */
        AssocRelation.RelAssocId = deleted.AssocId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Associate because AssocRelation exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Associate  AssocRelation on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Associate"
    CHILD_OWNER="", CHILD_TABLE="AssocRelation"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_44", FK_COLUMNS="AssocId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(AssocId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,AssocRelation
      WHERE
        /*  %JoinFKPK(AssocRelation,deleted," = "," AND") */
        AssocRelation.AssocId = deleted.AssocId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Associate because AssocRelation exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Associate  AssocPhone on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Associate"
    CHILD_OWNER="", CHILD_TABLE="AssocPhone"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_43", FK_COLUMNS="AssocId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(AssocId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,AssocPhone
      WHERE
        /*  %JoinFKPK(AssocPhone,deleted," = "," AND") */
        AssocPhone.AssocId = deleted.AssocId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Associate because AssocPhone exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Associate  AssociateAccount on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Associate"
    CHILD_OWNER="", CHILD_TABLE="AssociateAccount"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_33", FK_COLUMNS="AssocId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(AssocId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,AssociateAccount
      WHERE
        /*  %JoinFKPK(AssociateAccount,deleted," = "," AND") */
        AssociateAccount.AssocId = deleted.AssocId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Associate because AssociateAccount exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* AssocLocation  Associate on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="AssocLocation"
    CHILD_OWNER="", CHILD_TABLE="Associate"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_63", FK_COLUMNS="AssocLocId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(AssocLocId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,AssocLocation
        WHERE
          /* %JoinFKPK(inserted,AssocLocation) */
          inserted.AssocLocId = AssocLocation.AssocLocId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.AssocLocId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Associate because AssocLocation does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_AssociateAccount ON AssociateAccount FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on AssociateAccount */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* ManagerContract  AssociateAccount on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00056064", PARENT_OWNER="", PARENT_TABLE="ManagerContract"
    CHILD_OWNER="", CHILD_TABLE="AssociateAccount"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_35", FK_COLUMNS="ManagerContractId" */
    IF EXISTS (SELECT * FROM deleted,ManagerContract
      WHERE
        /* %JoinFKPK(deleted,ManagerContract," = "," AND") */
        deleted.ManagerContractId = ManagerContract.ManagerContractId AND
        NOT EXISTS (
          SELECT * FROM AssociateAccount
          WHERE
            /* %JoinFKPK(AssociateAccount,ManagerContract," = "," AND") */
            AssociateAccount.ManagerContractId = ManagerContract.ManagerContractId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last AssociateAccount because ManagerContract exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* AssociateRole  AssociateAccount on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="AssociateRole"
    CHILD_OWNER="", CHILD_TABLE="AssociateAccount"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_34", FK_COLUMNS="AssocRoleId" */
    IF EXISTS (SELECT * FROM deleted,AssociateRole
      WHERE
        /* %JoinFKPK(deleted,AssociateRole," = "," AND") */
        deleted.AssocRoleId = AssociateRole.AssocRoleId AND
        NOT EXISTS (
          SELECT * FROM AssociateAccount
          WHERE
            /* %JoinFKPK(AssociateAccount,AssociateRole," = "," AND") */
            AssociateAccount.AssocRoleId = AssociateRole.AssocRoleId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last AssociateAccount because AssociateRole exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Associate  AssociateAccount on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Associate"
    CHILD_OWNER="", CHILD_TABLE="AssociateAccount"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_33", FK_COLUMNS="AssocId" */
    IF EXISTS (SELECT * FROM deleted,Associate
      WHERE
        /* %JoinFKPK(deleted,Associate," = "," AND") */
        deleted.AssocId = Associate.AssocId AND
        NOT EXISTS (
          SELECT * FROM AssociateAccount
          WHERE
            /* %JoinFKPK(AssociateAccount,Associate," = "," AND") */
            AssociateAccount.AssocId = Associate.AssocId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last AssociateAccount because Associate exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Account  AssociateAccount on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Account"
    CHILD_OWNER="", CHILD_TABLE="AssociateAccount"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_32", FK_COLUMNS="AccountId" */
    IF EXISTS (SELECT * FROM deleted,Account
      WHERE
        /* %JoinFKPK(deleted,Account," = "," AND") */
        deleted.AccountId = Account.AccountId AND
        NOT EXISTS (
          SELECT * FROM AssociateAccount
          WHERE
            /* %JoinFKPK(AssociateAccount,Account," = "," AND") */
            AssociateAccount.AccountId = Account.AccountId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last AssociateAccount because Account exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_AssociateAccount ON AssociateAccount FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on AssociateAccount */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insAccountId int, 
           @insAssocId int, 
           @insManagerContractId int,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* ManagerContract  AssociateAccount on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0005959c", PARENT_OWNER="", PARENT_TABLE="ManagerContract"
    CHILD_OWNER="", CHILD_TABLE="AssociateAccount"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_35", FK_COLUMNS="ManagerContractId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ManagerContractId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,ManagerContract
        WHERE
          /* %JoinFKPK(inserted,ManagerContract) */
          inserted.ManagerContractId = ManagerContract.ManagerContractId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update AssociateAccount because ManagerContract does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* AssociateRole  AssociateAccount on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="AssociateRole"
    CHILD_OWNER="", CHILD_TABLE="AssociateAccount"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_34", FK_COLUMNS="AssocRoleId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(AssocRoleId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,AssociateRole
        WHERE
          /* %JoinFKPK(inserted,AssociateRole) */
          inserted.AssocRoleId = AssociateRole.AssocRoleId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update AssociateAccount because AssociateRole does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Associate  AssociateAccount on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Associate"
    CHILD_OWNER="", CHILD_TABLE="AssociateAccount"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_33", FK_COLUMNS="AssocId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(AssocId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Associate
        WHERE
          /* %JoinFKPK(inserted,Associate) */
          inserted.AssocId = Associate.AssocId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update AssociateAccount because Associate does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Account  AssociateAccount on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Account"
    CHILD_OWNER="", CHILD_TABLE="AssociateAccount"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_32", FK_COLUMNS="AccountId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(AccountId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Account
        WHERE
          /* %JoinFKPK(inserted,Account) */
          inserted.AccountId = Account.AccountId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update AssociateAccount because Account does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_AssociateRole ON AssociateRole FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on AssociateRole */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* AssociateRole  AssociateAccount on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00012dc5", PARENT_OWNER="", PARENT_TABLE="AssociateRole"
    CHILD_OWNER="", CHILD_TABLE="AssociateAccount"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_34", FK_COLUMNS="AssocRoleId" */
    IF EXISTS (
      SELECT * FROM deleted,AssociateAccount
      WHERE
        /*  %JoinFKPK(AssociateAccount,deleted," = "," AND") */
        AssociateAccount.AssocRoleId = deleted.AssocRoleId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete AssociateRole because AssociateAccount exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_AssociateRole ON AssociateRole FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on AssociateRole */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insAssocRoleId int,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* AssociateRole  AssociateAccount on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000141aa", PARENT_OWNER="", PARENT_TABLE="AssociateRole"
    CHILD_OWNER="", CHILD_TABLE="AssociateAccount"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_34", FK_COLUMNS="AssocRoleId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(AssocRoleId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,AssociateAccount
      WHERE
        /*  %JoinFKPK(AssociateAccount,deleted," = "," AND") */
        AssociateAccount.AssocRoleId = deleted.AssocRoleId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update AssociateRole because AssociateAccount exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_AssocLocation ON AssocLocation FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on AssocLocation */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* AssocLocation  Associate on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0001210b", PARENT_OWNER="", PARENT_TABLE="AssocLocation"
    CHILD_OWNER="", CHILD_TABLE="Associate"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_63", FK_COLUMNS="AssocLocId" */
    IF EXISTS (
      SELECT * FROM deleted,Associate
      WHERE
        /*  %JoinFKPK(Associate,deleted," = "," AND") */
        Associate.AssocLocId = deleted.AssocLocId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete AssocLocation because Associate exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_AssocLocation ON AssocLocation FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on AssocLocation */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insAssocLocId int,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* AssocLocation  Associate on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00013d1f", PARENT_OWNER="", PARENT_TABLE="AssocLocation"
    CHILD_OWNER="", CHILD_TABLE="Associate"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_63", FK_COLUMNS="AssocLocId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(AssocLocId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Associate
      WHERE
        /*  %JoinFKPK(Associate,deleted," = "," AND") */
        Associate.AssocLocId = deleted.AssocLocId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update AssocLocation because Associate exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_AssocPhone ON AssocPhone FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on AssocPhone */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Associate  AssocPhone on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00014383", PARENT_OWNER="", PARENT_TABLE="Associate"
    CHILD_OWNER="", CHILD_TABLE="AssocPhone"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_43", FK_COLUMNS="AssocId" */
    IF EXISTS (SELECT * FROM deleted,Associate
      WHERE
        /* %JoinFKPK(deleted,Associate," = "," AND") */
        deleted.AssocId = Associate.AssocId AND
        NOT EXISTS (
          SELECT * FROM AssocPhone
          WHERE
            /* %JoinFKPK(AssocPhone,Associate," = "," AND") */
            AssocPhone.AssocId = Associate.AssocId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last AssocPhone because Associate exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_AssocPhone ON AssocPhone FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on AssocPhone */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insPhoneNumber int, 
           @insAssocId int,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Associate  AssocPhone on child update no action */
  /* ERWIN_RELATION:CHECKSUM="000165dd", PARENT_OWNER="", PARENT_TABLE="Associate"
    CHILD_OWNER="", CHILD_TABLE="AssocPhone"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_43", FK_COLUMNS="AssocId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(AssocId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Associate
        WHERE
          /* %JoinFKPK(inserted,Associate) */
          inserted.AssocId = Associate.AssocId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update AssocPhone because Associate does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_AssocRelation ON AssocRelation FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on AssocRelation */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Associate  AssocRelation on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="000290b7", PARENT_OWNER="", PARENT_TABLE="Associate"
    CHILD_OWNER="", CHILD_TABLE="AssocRelation"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_45", FK_COLUMNS="RelAssocId" */
    IF EXISTS (SELECT * FROM deleted,Associate
      WHERE
        /* %JoinFKPK(deleted,Associate," = "," AND") */
        deleted.RelAssocId = Associate.AssocId AND
        NOT EXISTS (
          SELECT * FROM AssocRelation
          WHERE
            /* %JoinFKPK(AssocRelation,Associate," = "," AND") */
            AssocRelation.RelAssocId = Associate.AssocId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last AssocRelation because Associate exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Associate  AssocRelation on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Associate"
    CHILD_OWNER="", CHILD_TABLE="AssocRelation"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_44", FK_COLUMNS="AssocId" */
    IF EXISTS (SELECT * FROM deleted,Associate
      WHERE
        /* %JoinFKPK(deleted,Associate," = "," AND") */
        deleted.AssocId = Associate.AssocId AND
        NOT EXISTS (
          SELECT * FROM AssocRelation
          WHERE
            /* %JoinFKPK(AssocRelation,Associate," = "," AND") */
            AssocRelation.AssocId = Associate.AssocId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last AssocRelation because Associate exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_AssocRelation ON AssocRelation FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on AssocRelation */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insAssocId int, 
           @insRelAssocId int,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Associate  AssocRelation on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0002b509", PARENT_OWNER="", PARENT_TABLE="Associate"
    CHILD_OWNER="", CHILD_TABLE="AssocRelation"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_45", FK_COLUMNS="RelAssocId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(RelAssocId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Associate
        WHERE
          /* %JoinFKPK(inserted,Associate) */
          inserted.RelAssocId = Associate.AssocId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update AssocRelation because Associate does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Associate  AssocRelation on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Associate"
    CHILD_OWNER="", CHILD_TABLE="AssocRelation"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_44", FK_COLUMNS="AssocId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(AssocId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Associate
        WHERE
          /* %JoinFKPK(inserted,Associate) */
          inserted.AssocId = Associate.AssocId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update AssocRelation because Associate does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_Beneficiary ON Beneficiary FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Beneficiary */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* ContractBenefit  Beneficiary on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0002e82e", PARENT_OWNER="", PARENT_TABLE="ContractBenefit"
    CHILD_OWNER="", CHILD_TABLE="Beneficiary"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_49", FK_COLUMNS="ContractNumber""ProductId" */
    IF EXISTS (SELECT * FROM deleted,ContractBenefit
      WHERE
        /* %JoinFKPK(deleted,ContractBenefit," = "," AND") */
        deleted.ContractNumber = ContractBenefit.ContractNumber AND
        deleted.ProductId = ContractBenefit.ProductId AND
        NOT EXISTS (
          SELECT * FROM Beneficiary
          WHERE
            /* %JoinFKPK(Beneficiary,ContractBenefit," = "," AND") */
            Beneficiary.ContractNumber = ContractBenefit.ContractNumber AND
            Beneficiary.ProductId = ContractBenefit.ProductId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Beneficiary because ContractBenefit exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Customer  Beneficiary on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Beneficiary"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_48", FK_COLUMNS="CustomerId" */
    IF EXISTS (SELECT * FROM deleted,Customer
      WHERE
        /* %JoinFKPK(deleted,Customer," = "," AND") */
        deleted.CustomerId = Customer.CustomerId AND
        NOT EXISTS (
          SELECT * FROM Beneficiary
          WHERE
            /* %JoinFKPK(Beneficiary,Customer," = "," AND") */
            Beneficiary.CustomerId = Customer.CustomerId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Beneficiary because Customer exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_Beneficiary ON Beneficiary FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Beneficiary */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insCustomerId int, 
           @insContractNumber int, 
           @insProductId int,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* ContractBenefit  Beneficiary on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0003216b", PARENT_OWNER="", PARENT_TABLE="ContractBenefit"
    CHILD_OWNER="", CHILD_TABLE="Beneficiary"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_49", FK_COLUMNS="ContractNumber""ProductId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ContractNumber) OR
    UPDATE(ProductId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,ContractBenefit
        WHERE
          /* %JoinFKPK(inserted,ContractBenefit) */
          inserted.ContractNumber = ContractBenefit.ContractNumber and
          inserted.ProductId = ContractBenefit.ProductId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Beneficiary because ContractBenefit does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Customer  Beneficiary on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Beneficiary"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_48", FK_COLUMNS="CustomerId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(CustomerId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Customer
        WHERE
          /* %JoinFKPK(inserted,Customer) */
          inserted.CustomerId = Customer.CustomerId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Beneficiary because Customer does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_Claim ON Claim FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Claim */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Claim  ClaimBenefit on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00021802", PARENT_OWNER="", PARENT_TABLE="Claim"
    CHILD_OWNER="", CHILD_TABLE="ClaimBenefit"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_52", FK_COLUMNS="ClaimNumber" */
    IF EXISTS (
      SELECT * FROM deleted,ClaimBenefit
      WHERE
        /*  %JoinFKPK(ClaimBenefit,deleted," = "," AND") */
        ClaimBenefit.ClaimNumber = deleted.ClaimNumber
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Claim because ClaimBenefit exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Claim  ClaimParticipant on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Claim"
    CHILD_OWNER="", CHILD_TABLE="ClaimParticipant"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_51", FK_COLUMNS="ClaimNumber" */
    IF EXISTS (
      SELECT * FROM deleted,ClaimParticipant
      WHERE
        /*  %JoinFKPK(ClaimParticipant,deleted," = "," AND") */
        ClaimParticipant.ClaimNumber = deleted.ClaimNumber
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Claim because ClaimParticipant exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_Claim ON Claim FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Claim */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insClaimNumber char(18),
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Claim  ClaimBenefit on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00025581", PARENT_OWNER="", PARENT_TABLE="Claim"
    CHILD_OWNER="", CHILD_TABLE="ClaimBenefit"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_52", FK_COLUMNS="ClaimNumber" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ClaimNumber)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,ClaimBenefit
      WHERE
        /*  %JoinFKPK(ClaimBenefit,deleted," = "," AND") */
        ClaimBenefit.ClaimNumber = deleted.ClaimNumber
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Claim because ClaimBenefit exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Claim  ClaimParticipant on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Claim"
    CHILD_OWNER="", CHILD_TABLE="ClaimParticipant"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_51", FK_COLUMNS="ClaimNumber" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ClaimNumber)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,ClaimParticipant
      WHERE
        /*  %JoinFKPK(ClaimParticipant,deleted," = "," AND") */
        ClaimParticipant.ClaimNumber = deleted.ClaimNumber
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Claim because ClaimParticipant exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_ClaimBenefit ON ClaimBenefit FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on ClaimBenefit */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* ContractBenefit  ClaimBenefit on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0002dd31", PARENT_OWNER="", PARENT_TABLE="ContractBenefit"
    CHILD_OWNER="", CHILD_TABLE="ClaimBenefit"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_53", FK_COLUMNS="ContractNumber""ProductId" */
    IF EXISTS (SELECT * FROM deleted,ContractBenefit
      WHERE
        /* %JoinFKPK(deleted,ContractBenefit," = "," AND") */
        deleted.ContractNumber = ContractBenefit.ContractNumber AND
        deleted.ProductId = ContractBenefit.ProductId AND
        NOT EXISTS (
          SELECT * FROM ClaimBenefit
          WHERE
            /* %JoinFKPK(ClaimBenefit,ContractBenefit," = "," AND") */
            ClaimBenefit.ContractNumber = ContractBenefit.ContractNumber AND
            ClaimBenefit.ProductId = ContractBenefit.ProductId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last ClaimBenefit because ContractBenefit exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Claim  ClaimBenefit on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Claim"
    CHILD_OWNER="", CHILD_TABLE="ClaimBenefit"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_52", FK_COLUMNS="ClaimNumber" */
    IF EXISTS (SELECT * FROM deleted,Claim
      WHERE
        /* %JoinFKPK(deleted,Claim," = "," AND") */
        deleted.ClaimNumber = Claim.ClaimNumber AND
        NOT EXISTS (
          SELECT * FROM ClaimBenefit
          WHERE
            /* %JoinFKPK(ClaimBenefit,Claim," = "," AND") */
            ClaimBenefit.ClaimNumber = Claim.ClaimNumber
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last ClaimBenefit because Claim exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_ClaimBenefit ON ClaimBenefit FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on ClaimBenefit */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insClaimNumber char(18), 
           @insContractNumber int, 
           @insProductId int,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* ContractBenefit  ClaimBenefit on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0002fd2a", PARENT_OWNER="", PARENT_TABLE="ContractBenefit"
    CHILD_OWNER="", CHILD_TABLE="ClaimBenefit"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_53", FK_COLUMNS="ContractNumber""ProductId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ContractNumber) OR
    UPDATE(ProductId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,ContractBenefit
        WHERE
          /* %JoinFKPK(inserted,ContractBenefit) */
          inserted.ContractNumber = ContractBenefit.ContractNumber and
          inserted.ProductId = ContractBenefit.ProductId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update ClaimBenefit because ContractBenefit does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Claim  ClaimBenefit on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Claim"
    CHILD_OWNER="", CHILD_TABLE="ClaimBenefit"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_52", FK_COLUMNS="ClaimNumber" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ClaimNumber)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Claim
        WHERE
          /* %JoinFKPK(inserted,Claim) */
          inserted.ClaimNumber = Claim.ClaimNumber
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update ClaimBenefit because Claim does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_ClaimParticipant ON ClaimParticipant FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on ClaimParticipant */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Claim  ClaimParticipant on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0002a294", PARENT_OWNER="", PARENT_TABLE="Claim"
    CHILD_OWNER="", CHILD_TABLE="ClaimParticipant"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_51", FK_COLUMNS="ClaimNumber" */
    IF EXISTS (SELECT * FROM deleted,Claim
      WHERE
        /* %JoinFKPK(deleted,Claim," = "," AND") */
        deleted.ClaimNumber = Claim.ClaimNumber AND
        NOT EXISTS (
          SELECT * FROM ClaimParticipant
          WHERE
            /* %JoinFKPK(ClaimParticipant,Claim," = "," AND") */
            ClaimParticipant.ClaimNumber = Claim.ClaimNumber
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last ClaimParticipant because Claim exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Customer  ClaimParticipant on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="ClaimParticipant"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_50", FK_COLUMNS="CustomerId" */
    IF EXISTS (SELECT * FROM deleted,Customer
      WHERE
        /* %JoinFKPK(deleted,Customer," = "," AND") */
        deleted.CustomerId = Customer.CustomerId AND
        NOT EXISTS (
          SELECT * FROM ClaimParticipant
          WHERE
            /* %JoinFKPK(ClaimParticipant,Customer," = "," AND") */
            ClaimParticipant.CustomerId = Customer.CustomerId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last ClaimParticipant because Customer exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_ClaimParticipant ON ClaimParticipant FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on ClaimParticipant */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insCustomerId int, 
           @insClaimNumber char(18),
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Claim  ClaimParticipant on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0002b9cd", PARENT_OWNER="", PARENT_TABLE="Claim"
    CHILD_OWNER="", CHILD_TABLE="ClaimParticipant"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_51", FK_COLUMNS="ClaimNumber" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ClaimNumber)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Claim
        WHERE
          /* %JoinFKPK(inserted,Claim) */
          inserted.ClaimNumber = Claim.ClaimNumber
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update ClaimParticipant because Claim does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Customer  ClaimParticipant on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="ClaimParticipant"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_50", FK_COLUMNS="CustomerId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(CustomerId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Customer
        WHERE
          /* %JoinFKPK(inserted,Customer) */
          inserted.CustomerId = Customer.CustomerId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update ClaimParticipant because Customer does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_CompanyDetail ON CompanyDetail FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on CompanyDetail */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* CompanyDetail  Account on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="000105ed", PARENT_OWNER="", PARENT_TABLE="CompanyDetail"
    CHILD_OWNER="", CHILD_TABLE="Account"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_29", FK_COLUMNS="CompanyId" */
    IF EXISTS (
      SELECT * FROM deleted,Account
      WHERE
        /*  %JoinFKPK(Account,deleted," = "," AND") */
        Account.CompanyId = deleted.CompanyId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete CompanyDetail because Account exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_CompanyDetail ON CompanyDetail FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on CompanyDetail */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insCompanyId int,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* CompanyDetail  Account on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00012cec", PARENT_OWNER="", PARENT_TABLE="CompanyDetail"
    CHILD_OWNER="", CHILD_TABLE="Account"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_29", FK_COLUMNS="CompanyId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(CompanyId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Account
      WHERE
        /*  %JoinFKPK(Account,deleted," = "," AND") */
        Account.CompanyId = deleted.CompanyId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update CompanyDetail because Account exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_Contract ON Contract FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Contract */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Contract  ContractCustomer on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0002221b", PARENT_OWNER="", PARENT_TABLE="Contract"
    CHILD_OWNER="", CHILD_TABLE="ContractCustomer"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_54", FK_COLUMNS="ContractNumber" */
    IF EXISTS (
      SELECT * FROM deleted,ContractCustomer
      WHERE
        /*  %JoinFKPK(ContractCustomer,deleted," = "," AND") */
        ContractCustomer.ContractNumber = deleted.ContractNumber
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Contract because ContractCustomer exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Contract  ContractBenefit on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Contract"
    CHILD_OWNER="", CHILD_TABLE="ContractBenefit"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_47", FK_COLUMNS="ContractNumber" */
    IF EXISTS (
      SELECT * FROM deleted,ContractBenefit
      WHERE
        /*  %JoinFKPK(ContractBenefit,deleted," = "," AND") */
        ContractBenefit.ContractNumber = deleted.ContractNumber
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Contract because ContractBenefit exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_Contract ON Contract FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Contract */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insContractNumber int,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Contract  ContractCustomer on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0002710d", PARENT_OWNER="", PARENT_TABLE="Contract"
    CHILD_OWNER="", CHILD_TABLE="ContractCustomer"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_54", FK_COLUMNS="ContractNumber" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ContractNumber)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,ContractCustomer
      WHERE
        /*  %JoinFKPK(ContractCustomer,deleted," = "," AND") */
        ContractCustomer.ContractNumber = deleted.ContractNumber
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Contract because ContractCustomer exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Contract  ContractBenefit on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Contract"
    CHILD_OWNER="", CHILD_TABLE="ContractBenefit"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_47", FK_COLUMNS="ContractNumber" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ContractNumber)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,ContractBenefit
      WHERE
        /*  %JoinFKPK(ContractBenefit,deleted," = "," AND") */
        ContractBenefit.ContractNumber = deleted.ContractNumber
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Contract because ContractBenefit exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_ContractBenefit ON ContractBenefit FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on ContractBenefit */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* ContractBenefit  ContractBenefitPremium on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0006150e", PARENT_OWNER="", PARENT_TABLE="ContractBenefit"
    CHILD_OWNER="", CHILD_TABLE="ContractBenefitPremium"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_58", FK_COLUMNS="ContractNumber""ProductId" */
    IF EXISTS (
      SELECT * FROM deleted,ContractBenefitPremium
      WHERE
        /*  %JoinFKPK(ContractBenefitPremium,deleted," = "," AND") */
        ContractBenefitPremium.ContractNumber = deleted.ContractNumber AND
        ContractBenefitPremium.ProductId = deleted.ProductId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete ContractBenefit because ContractBenefitPremium exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* ContractBenefit  ClaimBenefit on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="ContractBenefit"
    CHILD_OWNER="", CHILD_TABLE="ClaimBenefit"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_53", FK_COLUMNS="ContractNumber""ProductId" */
    IF EXISTS (
      SELECT * FROM deleted,ClaimBenefit
      WHERE
        /*  %JoinFKPK(ClaimBenefit,deleted," = "," AND") */
        ClaimBenefit.ContractNumber = deleted.ContractNumber AND
        ClaimBenefit.ProductId = deleted.ProductId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete ContractBenefit because ClaimBenefit exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* ContractBenefit  Beneficiary on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="ContractBenefit"
    CHILD_OWNER="", CHILD_TABLE="Beneficiary"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_49", FK_COLUMNS="ContractNumber""ProductId" */
    IF EXISTS (
      SELECT * FROM deleted,Beneficiary
      WHERE
        /*  %JoinFKPK(Beneficiary,deleted," = "," AND") */
        Beneficiary.ContractNumber = deleted.ContractNumber AND
        Beneficiary.ProductId = deleted.ProductId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete ContractBenefit because Beneficiary exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Contract  ContractBenefit on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Contract"
    CHILD_OWNER="", CHILD_TABLE="ContractBenefit"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_47", FK_COLUMNS="ContractNumber" */
    IF EXISTS (SELECT * FROM deleted,Contract
      WHERE
        /* %JoinFKPK(deleted,Contract," = "," AND") */
        deleted.ContractNumber = Contract.ContractNumber AND
        NOT EXISTS (
          SELECT * FROM ContractBenefit
          WHERE
            /* %JoinFKPK(ContractBenefit,Contract," = "," AND") */
            ContractBenefit.ContractNumber = Contract.ContractNumber
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last ContractBenefit because Contract exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Product  ContractBenefit on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Product"
    CHILD_OWNER="", CHILD_TABLE="ContractBenefit"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_46", FK_COLUMNS="ProductId" */
    IF EXISTS (SELECT * FROM deleted,Product
      WHERE
        /* %JoinFKPK(deleted,Product," = "," AND") */
        deleted.ProductId = Product.ProductId AND
        NOT EXISTS (
          SELECT * FROM ContractBenefit
          WHERE
            /* %JoinFKPK(ContractBenefit,Product," = "," AND") */
            ContractBenefit.ProductId = Product.ProductId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last ContractBenefit because Product exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_ContractBenefit ON ContractBenefit FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on ContractBenefit */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insContractNumber int, 
           @insProductId int,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* ContractBenefit  ContractBenefitPremium on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0006a3fc", PARENT_OWNER="", PARENT_TABLE="ContractBenefit"
    CHILD_OWNER="", CHILD_TABLE="ContractBenefitPremium"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_58", FK_COLUMNS="ContractNumber""ProductId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ContractNumber) OR
    UPDATE(ProductId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,ContractBenefitPremium
      WHERE
        /*  %JoinFKPK(ContractBenefitPremium,deleted," = "," AND") */
        ContractBenefitPremium.ContractNumber = deleted.ContractNumber AND
        ContractBenefitPremium.ProductId = deleted.ProductId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update ContractBenefit because ContractBenefitPremium exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* ContractBenefit  ClaimBenefit on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="ContractBenefit"
    CHILD_OWNER="", CHILD_TABLE="ClaimBenefit"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_53", FK_COLUMNS="ContractNumber""ProductId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ContractNumber) OR
    UPDATE(ProductId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,ClaimBenefit
      WHERE
        /*  %JoinFKPK(ClaimBenefit,deleted," = "," AND") */
        ClaimBenefit.ContractNumber = deleted.ContractNumber AND
        ClaimBenefit.ProductId = deleted.ProductId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update ContractBenefit because ClaimBenefit exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* ContractBenefit  Beneficiary on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="ContractBenefit"
    CHILD_OWNER="", CHILD_TABLE="Beneficiary"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_49", FK_COLUMNS="ContractNumber""ProductId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ContractNumber) OR
    UPDATE(ProductId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Beneficiary
      WHERE
        /*  %JoinFKPK(Beneficiary,deleted," = "," AND") */
        Beneficiary.ContractNumber = deleted.ContractNumber AND
        Beneficiary.ProductId = deleted.ProductId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update ContractBenefit because Beneficiary exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Contract  ContractBenefit on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Contract"
    CHILD_OWNER="", CHILD_TABLE="ContractBenefit"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_47", FK_COLUMNS="ContractNumber" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ContractNumber)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Contract
        WHERE
          /* %JoinFKPK(inserted,Contract) */
          inserted.ContractNumber = Contract.ContractNumber
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update ContractBenefit because Contract does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Product  ContractBenefit on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Product"
    CHILD_OWNER="", CHILD_TABLE="ContractBenefit"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_46", FK_COLUMNS="ProductId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ProductId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Product
        WHERE
          /* %JoinFKPK(inserted,Product) */
          inserted.ProductId = Product.ProductId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update ContractBenefit because Product does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_ContractBenefitPremium ON ContractBenefitPremium FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on ContractBenefitPremium */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* ContractBenefit  ContractBenefitPremium on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00048fbb", PARENT_OWNER="", PARENT_TABLE="ContractBenefit"
    CHILD_OWNER="", CHILD_TABLE="ContractBenefitPremium"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_58", FK_COLUMNS="ContractNumber""ProductId" */
    IF EXISTS (SELECT * FROM deleted,ContractBenefit
      WHERE
        /* %JoinFKPK(deleted,ContractBenefit," = "," AND") */
        deleted.ContractNumber = ContractBenefit.ContractNumber AND
        deleted.ProductId = ContractBenefit.ProductId AND
        NOT EXISTS (
          SELECT * FROM ContractBenefitPremium
          WHERE
            /* %JoinFKPK(ContractBenefitPremium,ContractBenefit," = "," AND") */
            ContractBenefitPremium.ContractNumber = ContractBenefit.ContractNumber AND
            ContractBenefitPremium.ProductId = ContractBenefit.ProductId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last ContractBenefitPremium because ContractBenefit exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Associate  ContractBenefitPremium on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Associate"
    CHILD_OWNER="", CHILD_TABLE="ContractBenefitPremium"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_57", FK_COLUMNS="AssocId" */
    IF EXISTS (SELECT * FROM deleted,Associate
      WHERE
        /* %JoinFKPK(deleted,Associate," = "," AND") */
        deleted.AssocId = Associate.AssocId AND
        NOT EXISTS (
          SELECT * FROM ContractBenefitPremium
          WHERE
            /* %JoinFKPK(ContractBenefitPremium,Associate," = "," AND") */
            ContractBenefitPremium.AssocId = Associate.AssocId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last ContractBenefitPremium because Associate exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* ManagerContract  ContractBenefitPremium on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="ManagerContract"
    CHILD_OWNER="", CHILD_TABLE="ContractBenefitPremium"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_56", FK_COLUMNS="ManagerContractId" */
    IF EXISTS (SELECT * FROM deleted,ManagerContract
      WHERE
        /* %JoinFKPK(deleted,ManagerContract," = "," AND") */
        deleted.ManagerContractId = ManagerContract.ManagerContractId AND
        NOT EXISTS (
          SELECT * FROM ContractBenefitPremium
          WHERE
            /* %JoinFKPK(ContractBenefitPremium,ManagerContract," = "," AND") */
            ContractBenefitPremium.ManagerContractId = ManagerContract.ManagerContractId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last ContractBenefitPremium because ManagerContract exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_ContractBenefitPremium ON ContractBenefitPremium FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on ContractBenefitPremium */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insPremiumCode int, 
           @insManagerContractId int, 
           @insAssocId int, 
           @insContractNumber int, 
           @insProductId int,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* ContractBenefit  ContractBenefitPremium on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00047e5a", PARENT_OWNER="", PARENT_TABLE="ContractBenefit"
    CHILD_OWNER="", CHILD_TABLE="ContractBenefitPremium"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_58", FK_COLUMNS="ContractNumber""ProductId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ContractNumber) OR
    UPDATE(ProductId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,ContractBenefit
        WHERE
          /* %JoinFKPK(inserted,ContractBenefit) */
          inserted.ContractNumber = ContractBenefit.ContractNumber and
          inserted.ProductId = ContractBenefit.ProductId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update ContractBenefitPremium because ContractBenefit does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Associate  ContractBenefitPremium on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Associate"
    CHILD_OWNER="", CHILD_TABLE="ContractBenefitPremium"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_57", FK_COLUMNS="AssocId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(AssocId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Associate
        WHERE
          /* %JoinFKPK(inserted,Associate) */
          inserted.AssocId = Associate.AssocId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update ContractBenefitPremium because Associate does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* ManagerContract  ContractBenefitPremium on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="ManagerContract"
    CHILD_OWNER="", CHILD_TABLE="ContractBenefitPremium"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_56", FK_COLUMNS="ManagerContractId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ManagerContractId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,ManagerContract
        WHERE
          /* %JoinFKPK(inserted,ManagerContract) */
          inserted.ManagerContractId = ManagerContract.ManagerContractId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update ContractBenefitPremium because ManagerContract does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_ContractCustomer ON ContractCustomer FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on ContractCustomer */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Customer  ContractCustomer on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0002a373", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="ContractCustomer"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_55", FK_COLUMNS="CustomerId" */
    IF EXISTS (SELECT * FROM deleted,Customer
      WHERE
        /* %JoinFKPK(deleted,Customer," = "," AND") */
        deleted.CustomerId = Customer.CustomerId AND
        NOT EXISTS (
          SELECT * FROM ContractCustomer
          WHERE
            /* %JoinFKPK(ContractCustomer,Customer," = "," AND") */
            ContractCustomer.CustomerId = Customer.CustomerId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last ContractCustomer because Customer exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Contract  ContractCustomer on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Contract"
    CHILD_OWNER="", CHILD_TABLE="ContractCustomer"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_54", FK_COLUMNS="ContractNumber" */
    IF EXISTS (SELECT * FROM deleted,Contract
      WHERE
        /* %JoinFKPK(deleted,Contract," = "," AND") */
        deleted.ContractNumber = Contract.ContractNumber AND
        NOT EXISTS (
          SELECT * FROM ContractCustomer
          WHERE
            /* %JoinFKPK(ContractCustomer,Contract," = "," AND") */
            ContractCustomer.ContractNumber = Contract.ContractNumber
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last ContractCustomer because Contract exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_ContractCustomer ON ContractCustomer FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on ContractCustomer */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insContractNumber int, 
           @insCustomerId int,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Customer  ContractCustomer on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0002c4f7", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="ContractCustomer"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_55", FK_COLUMNS="CustomerId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(CustomerId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Customer
        WHERE
          /* %JoinFKPK(inserted,Customer) */
          inserted.CustomerId = Customer.CustomerId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update ContractCustomer because Customer does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Contract  ContractCustomer on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Contract"
    CHILD_OWNER="", CHILD_TABLE="ContractCustomer"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_54", FK_COLUMNS="ContractNumber" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ContractNumber)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Contract
        WHERE
          /* %JoinFKPK(inserted,Contract) */
          inserted.ContractNumber = Contract.ContractNumber
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update ContractCustomer because Contract does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_Customer ON Customer FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Customer */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Customer  DemographicData on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0008f69f", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="DemographicData"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_65", FK_COLUMNS="CustomerId" */
    IF EXISTS (
      SELECT * FROM deleted,DemographicData
      WHERE
        /*  %JoinFKPK(DemographicData,deleted," = "," AND") */
        DemographicData.CustomerId = deleted.CustomerId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Customer because DemographicData exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Customer  MriData on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="MriData"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_64", FK_COLUMNS="CustomerId" */
    IF EXISTS (
      SELECT * FROM deleted,MriData
      WHERE
        /*  %JoinFKPK(MriData,deleted," = "," AND") */
        MriData.CustomerId = deleted.CustomerId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Customer because MriData exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Customer  ContractCustomer on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="ContractCustomer"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_55", FK_COLUMNS="CustomerId" */
    IF EXISTS (
      SELECT * FROM deleted,ContractCustomer
      WHERE
        /*  %JoinFKPK(ContractCustomer,deleted," = "," AND") */
        ContractCustomer.CustomerId = deleted.CustomerId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Customer because ContractCustomer exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Customer  ClaimParticipant on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="ClaimParticipant"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_50", FK_COLUMNS="CustomerId" */
    IF EXISTS (
      SELECT * FROM deleted,ClaimParticipant
      WHERE
        /*  %JoinFKPK(ClaimParticipant,deleted," = "," AND") */
        ClaimParticipant.CustomerId = deleted.CustomerId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Customer because ClaimParticipant exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Customer  Beneficiary on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Beneficiary"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_48", FK_COLUMNS="CustomerId" */
    IF EXISTS (
      SELECT * FROM deleted,Beneficiary
      WHERE
        /*  %JoinFKPK(Beneficiary,deleted," = "," AND") */
        Beneficiary.CustomerId = deleted.CustomerId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Customer because Beneficiary exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Customer  CustomerRelation on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="CustomerRelation"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_42", FK_COLUMNS="RelationCustomerId" */
    IF EXISTS (
      SELECT * FROM deleted,CustomerRelation
      WHERE
        /*  %JoinFKPK(CustomerRelation,deleted," = "," AND") */
        CustomerRelation.RelationCustomerId = deleted.CustomerId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Customer because CustomerRelation exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Customer  CustomerRelation on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="CustomerRelation"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_41", FK_COLUMNS="CustomerId" */
    IF EXISTS (
      SELECT * FROM deleted,CustomerRelation
      WHERE
        /*  %JoinFKPK(CustomerRelation,deleted," = "," AND") */
        CustomerRelation.CustomerId = deleted.CustomerId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Customer because CustomerRelation exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Customer  AccessAccount on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="AccessAccount"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_40", FK_COLUMNS="CustomerId" */
    IF EXISTS (
      SELECT * FROM deleted,AccessAccount
      WHERE
        /*  %JoinFKPK(AccessAccount,deleted," = "," AND") */
        AccessAccount.CustomerId = deleted.CustomerId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Customer because AccessAccount exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Customer  Account_Member on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Account_Member"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_36", FK_COLUMNS="CustomerId" */
    IF EXISTS (
      SELECT * FROM deleted,Account_Member
      WHERE
        /*  %JoinFKPK(Account_Member,deleted," = "," AND") */
        Account_Member.CustomerId = deleted.CustomerId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Customer because Account_Member exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_Customer ON Customer FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Customer */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insCustomerId int,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Customer  DemographicData on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000a1c14", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="DemographicData"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_65", FK_COLUMNS="CustomerId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(CustomerId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,DemographicData
      WHERE
        /*  %JoinFKPK(DemographicData,deleted," = "," AND") */
        DemographicData.CustomerId = deleted.CustomerId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Customer because DemographicData exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Customer  MriData on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="MriData"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_64", FK_COLUMNS="CustomerId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(CustomerId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,MriData
      WHERE
        /*  %JoinFKPK(MriData,deleted," = "," AND") */
        MriData.CustomerId = deleted.CustomerId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Customer because MriData exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Customer  ContractCustomer on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="ContractCustomer"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_55", FK_COLUMNS="CustomerId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(CustomerId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,ContractCustomer
      WHERE
        /*  %JoinFKPK(ContractCustomer,deleted," = "," AND") */
        ContractCustomer.CustomerId = deleted.CustomerId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Customer because ContractCustomer exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Customer  ClaimParticipant on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="ClaimParticipant"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_50", FK_COLUMNS="CustomerId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(CustomerId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,ClaimParticipant
      WHERE
        /*  %JoinFKPK(ClaimParticipant,deleted," = "," AND") */
        ClaimParticipant.CustomerId = deleted.CustomerId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Customer because ClaimParticipant exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Customer  Beneficiary on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Beneficiary"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_48", FK_COLUMNS="CustomerId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(CustomerId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Beneficiary
      WHERE
        /*  %JoinFKPK(Beneficiary,deleted," = "," AND") */
        Beneficiary.CustomerId = deleted.CustomerId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Customer because Beneficiary exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Customer  CustomerRelation on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="CustomerRelation"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_42", FK_COLUMNS="RelationCustomerId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(CustomerId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,CustomerRelation
      WHERE
        /*  %JoinFKPK(CustomerRelation,deleted," = "," AND") */
        CustomerRelation.RelationCustomerId = deleted.CustomerId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Customer because CustomerRelation exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Customer  CustomerRelation on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="CustomerRelation"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_41", FK_COLUMNS="CustomerId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(CustomerId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,CustomerRelation
      WHERE
        /*  %JoinFKPK(CustomerRelation,deleted," = "," AND") */
        CustomerRelation.CustomerId = deleted.CustomerId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Customer because CustomerRelation exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Customer  AccessAccount on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="AccessAccount"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_40", FK_COLUMNS="CustomerId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(CustomerId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,AccessAccount
      WHERE
        /*  %JoinFKPK(AccessAccount,deleted," = "," AND") */
        AccessAccount.CustomerId = deleted.CustomerId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Customer because AccessAccount exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Customer  Account_Member on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Account_Member"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_36", FK_COLUMNS="CustomerId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(CustomerId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Account_Member
      WHERE
        /*  %JoinFKPK(Account_Member,deleted," = "," AND") */
        Account_Member.CustomerId = deleted.CustomerId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Customer because Account_Member exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_CustomerRelation ON CustomerRelation FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on CustomerRelation */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Customer  CustomerRelation on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0002a1c8", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="CustomerRelation"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_42", FK_COLUMNS="RelationCustomerId" */
    IF EXISTS (SELECT * FROM deleted,Customer
      WHERE
        /* %JoinFKPK(deleted,Customer," = "," AND") */
        deleted.RelationCustomerId = Customer.CustomerId AND
        NOT EXISTS (
          SELECT * FROM CustomerRelation
          WHERE
            /* %JoinFKPK(CustomerRelation,Customer," = "," AND") */
            CustomerRelation.RelationCustomerId = Customer.CustomerId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last CustomerRelation because Customer exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Customer  CustomerRelation on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="CustomerRelation"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_41", FK_COLUMNS="CustomerId" */
    IF EXISTS (SELECT * FROM deleted,Customer
      WHERE
        /* %JoinFKPK(deleted,Customer," = "," AND") */
        deleted.CustomerId = Customer.CustomerId AND
        NOT EXISTS (
          SELECT * FROM CustomerRelation
          WHERE
            /* %JoinFKPK(CustomerRelation,Customer," = "," AND") */
            CustomerRelation.CustomerId = Customer.CustomerId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last CustomerRelation because Customer exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_CustomerRelation ON CustomerRelation FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on CustomerRelation */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insCustomerId int, 
           @insRelationCustomerId int,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Customer  CustomerRelation on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0002c4fe", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="CustomerRelation"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_42", FK_COLUMNS="RelationCustomerId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(RelationCustomerId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Customer
        WHERE
          /* %JoinFKPK(inserted,Customer) */
          inserted.RelationCustomerId = Customer.CustomerId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update CustomerRelation because Customer does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Customer  CustomerRelation on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="CustomerRelation"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_41", FK_COLUMNS="CustomerId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(CustomerId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Customer
        WHERE
          /* %JoinFKPK(inserted,Customer) */
          inserted.CustomerId = Customer.CustomerId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update CustomerRelation because Customer does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_DemographicData ON DemographicData FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on DemographicData */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Customer  DemographicData on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="000156ba", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="DemographicData"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_65", FK_COLUMNS="CustomerId" */
    IF EXISTS (SELECT * FROM deleted,Customer
      WHERE
        /* %JoinFKPK(deleted,Customer," = "," AND") */
        deleted.CustomerId = Customer.CustomerId AND
        NOT EXISTS (
          SELECT * FROM DemographicData
          WHERE
            /* %JoinFKPK(DemographicData,Customer," = "," AND") */
            DemographicData.CustomerId = Customer.CustomerId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last DemographicData because Customer exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_DemographicData ON DemographicData FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on DemographicData */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insCustomerId int, 
           @insDemoDataId int,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Customer  DemographicData on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0001740a", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="DemographicData"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_65", FK_COLUMNS="CustomerId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(CustomerId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Customer
        WHERE
          /* %JoinFKPK(inserted,Customer) */
          inserted.CustomerId = Customer.CustomerId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update DemographicData because Customer does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_ManagerContract ON ManagerContract FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on ManagerContract */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* ManagerContract  ContractBenefitPremium on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00025bb7", PARENT_OWNER="", PARENT_TABLE="ManagerContract"
    CHILD_OWNER="", CHILD_TABLE="ContractBenefitPremium"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_56", FK_COLUMNS="ManagerContractId" */
    IF EXISTS (
      SELECT * FROM deleted,ContractBenefitPremium
      WHERE
        /*  %JoinFKPK(ContractBenefitPremium,deleted," = "," AND") */
        ContractBenefitPremium.ManagerContractId = deleted.ManagerContractId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete ManagerContract because ContractBenefitPremium exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* ManagerContract  AssociateAccount on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="ManagerContract"
    CHILD_OWNER="", CHILD_TABLE="AssociateAccount"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_35", FK_COLUMNS="ManagerContractId" */
    IF EXISTS (
      SELECT * FROM deleted,AssociateAccount
      WHERE
        /*  %JoinFKPK(AssociateAccount,deleted," = "," AND") */
        AssociateAccount.ManagerContractId = deleted.ManagerContractId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete ManagerContract because AssociateAccount exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_ManagerContract ON ManagerContract FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on ManagerContract */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insManagerContractId int,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* ManagerContract  ContractBenefitPremium on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000295ff", PARENT_OWNER="", PARENT_TABLE="ManagerContract"
    CHILD_OWNER="", CHILD_TABLE="ContractBenefitPremium"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_56", FK_COLUMNS="ManagerContractId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ManagerContractId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,ContractBenefitPremium
      WHERE
        /*  %JoinFKPK(ContractBenefitPremium,deleted," = "," AND") */
        ContractBenefitPremium.ManagerContractId = deleted.ManagerContractId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update ManagerContract because ContractBenefitPremium exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* ManagerContract  AssociateAccount on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="ManagerContract"
    CHILD_OWNER="", CHILD_TABLE="AssociateAccount"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_35", FK_COLUMNS="ManagerContractId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ManagerContractId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,AssociateAccount
      WHERE
        /*  %JoinFKPK(AssociateAccount,deleted," = "," AND") */
        AssociateAccount.ManagerContractId = deleted.ManagerContractId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update ManagerContract because AssociateAccount exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_MriData ON MriData FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on MriData */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Customer  MriData on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00014571", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="MriData"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_64", FK_COLUMNS="CustomerId" */
    IF EXISTS (SELECT * FROM deleted,Customer
      WHERE
        /* %JoinFKPK(deleted,Customer," = "," AND") */
        deleted.CustomerId = Customer.CustomerId AND
        NOT EXISTS (
          SELECT * FROM MriData
          WHERE
            /* %JoinFKPK(MriData,Customer," = "," AND") */
            MriData.CustomerId = Customer.CustomerId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last MriData because Customer exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_MriData ON MriData FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on MriData */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insCustomerId int, 
           @insMRIId int,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Customer  MriData on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00017c76", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="MriData"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_64", FK_COLUMNS="CustomerId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(CustomerId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Customer
        WHERE
          /* %JoinFKPK(inserted,Customer) */
          inserted.CustomerId = Customer.CustomerId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update MriData because Customer does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_Product ON Product FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Product */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Product  ContractBenefit on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0001262c", PARENT_OWNER="", PARENT_TABLE="Product"
    CHILD_OWNER="", CHILD_TABLE="ContractBenefit"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_46", FK_COLUMNS="ProductId" */
    IF EXISTS (
      SELECT * FROM deleted,ContractBenefit
      WHERE
        /*  %JoinFKPK(ContractBenefit,deleted," = "," AND") */
        ContractBenefit.ProductId = deleted.ProductId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Product because ContractBenefit exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_Product ON Product FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Product */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insProductId int,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Product  ContractBenefit on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000132bb", PARENT_OWNER="", PARENT_TABLE="Product"
    CHILD_OWNER="", CHILD_TABLE="ContractBenefit"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_46", FK_COLUMNS="ProductId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ProductId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,ContractBenefit
      WHERE
        /*  %JoinFKPK(ContractBenefit,deleted," = "," AND") */
        ContractBenefit.ProductId = deleted.ProductId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Product because ContractBenefit exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


