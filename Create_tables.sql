--Okay
CREATE TABLE EmployeeSkill
( SkillNum	CHAR(4)
	CONSTRAINT EmployeeSkill_SkillNum_pk PRIMARY KEY
, SkillName	VARCHAR(30)
	CONSTRAINT EmployeeSkill_SkillName_req NOT NULL
, HourlyRate	Number(5,2)
	CONSTRAINT EmployeeSkill_HourlyRate_req NOT NULL
);

--Okay
CREATE TABLE Employee
( EmpNum	VARCHAR(3)
	CONSTRAINT Employee_EmpNum_pk PRIMARY KEY
, EmpLname	VARCHAR(20)
	CONSTRAINT Employee_EmpLname_req NOT NULL
, EmpFname	VARCHAR(20)
	CONSTRAINT Employee_EmpFname_req NOT NULL
, EmpHireDate	DATE
	CONSTRAINT Employee_EmpHireDate_req NOT NULL
, EmpPhone	CHAR(13)
, SkillNum	CHAR(4)
	CONSTRAINT Employee_SkillNum_fk REFERENCES
	EmployeeSkill
);

--Okay
CREATE TABLE Project
( ProjNum	CHAR(7)
	CONSTRAINT Project_ProjNum_pk PRIMARY KEY
, ProjName	VARCHAR(100)
	CONSTRAINT Project_ProjName_req NOT NULL
, ProjLocation	VARCHAR2(50)
, ProjType	VARCHAR2(100)
);

--Okay
CREATE TABLE Project_Employee
( ProjNum	CHAR(7)
	CONSTRAINT Project_Employee_ProjNum_fk REFERENCES
	Project
, EmpNum	VARCHAR(3)
	CONSTRAINT Project_Employee_EmpNum_fk REFERENCES
	Employee
, CONSTRAINT Project_Employee_pk PRIMARY KEY(ProjNum,EmpNum)
);

--Okay
CREATE TABLE Benefit
( BenefitNum	CHAR(6)
	CONSTRAINT Benefit_BenefitNum_pk PRIMARY KEY
, BenefitName	VARCHAR(100)
	CONSTRAINT Benefit_BenefitName_req NOT NULL
);

--Okay
CREATE TABLE Employee_Benefit
( EmpNum	VARCHAR(3)
	CONSTRAINT Employee_Benefit_EmpNum_fk REFERENCES
	Employee
, BenefitNum	CHAR(6)
	CONSTRAINT Employee_Benefit_BenefitNum_fk REFERENCES
	Benefit
, StartDate	DATE
	CONSTRAINT Employee_Benefit_StartDate_req NOT NULL
, CONSTRAINT Employee_Benefit_pk PRIMARY KEY(EmpNum,BenefitNum)
);


--Okay
CREATE TABLE SalesRep
( SRepNo	VARCHAR(2)
	CONSTRAINT SalesRep_SRepNo_pk PRIMARY KEY
, SRepName	VARCHAR(32)
	CONSTRAINT SalesRep_SRepName_req NOT NULL
);

--Okay
CREATE TABLE CustomerType
( CustType	VARCHAR(3)
	CONSTRAINT CustomerType_CustType_pk PRIMARY KEY
, CustGroup	VARCHAR(50)
	CONSTRAINT CustomerType_CustGroup_req NOT NULL
, CustSubGroup	VARCHAR(50)
	CONSTRAINT CustomerType_CustSubGroup_req NOT NULL
);

--Okay
CREATE TABLE Customer
( CustNum	VARCHAR(3)
	CONSTRAINT Customer_CustNum_pk PRIMARY KEY
, CustName	VARCHAR(50)
	CONSTRAINT Customer_CustName_req NOT NULL
, CustPhone	VARCHAR(13)
	CONSTRAINT Customer_CustPhone_req NOT NULL
, CustAddress	VARCHAR2(100)
, CustFax	VARCHAR(13)
, CustType	VARCHAR(3)
	CONSTRAINT Customer_CustType_fk REFERENCES
	CustomerType
);

--Okay
CREATE TABLE Invoice
( InvNum	CHAR(9)
	CONSTRAINT Invoice_InvNum_pk PRIMARY KEY
, InvDate	DATE
	CONSTRAINT Invoice_InvDate_req NOT NULL
, ProjNum	CHAR(7)
	CONSTRAINT Invoice_ProjNum_fk REFERENCES
	Project
, SRepNo	VARCHAR(2)
	CONSTRAINT Invoice_SRepNo_fk REFERENCES
	SalesRep
, CusNum	VARCHAR2(3)
	CONSTRAINT Invoice_CusNum_fk REFERENCES
	Customer
);



--Okay
CREATE TABLE Invoice_EnggCharges
( InvNum	CHAR(9)
	CONSTRAINT Inv_EngChrg_InvNum_fk REFERENCES
	Invoice
, EmpNum	VARCHAR(3)
	CONSTRAINT Inv_EngChrg_EmpNum_fk REFERENCES
	Employee
, DateWorked	DATE
, HoursWorked	NUMBER
	CONSTRAINT Inv_EngChrg_HrsWrkd_req NOT NULL
, CONSTRAINT Invoice_EnggCharges_pk PRIMARY KEY(InvNum,EmpNum, DateWorked)
);

--Okay
CREATE TABLE EquipmentClass
( EquipClassNum	VARCHAR(10)
	CONSTRAINT EqpCls_EqpClsNum_pk PRIMARY KEY
, EquipClassDesc	VARCHAR(50)
	CONSTRAINT EqpCls_EqpClsDesc_req NOT NULL
);

--Okay
CREATE TABLE Equipment
( EquipNum	VARCHAR2(10)
	CONSTRAINT Equipment_EquipNum_pk PRIMARY KEY
, EquipDesc	VARCHAR(50)
	CONSTRAINT Equipment_EquipDesc_req NOT NULL
, EquipClassNum	VARCHAR(10)
	CONSTRAINT Equipment_EquipClassNum_fk REFERENCES
	EquipmentClass
, HourlyRate NUMBER(5,2)
);

--Okay
CREATE TABLE Invoice_EquipCharges
( InvNum	CHAR(9)
	CONSTRAINT Inv_EqpChrg_InvNum_fk REFERENCES
	Invoice
, EquipNum	VARCHAR2(10)
	CONSTRAINT Inv_EqpChrg_EqpNum_fk REFERENCES
	Equipment
, DateUsed	DATE
, HoursUsed	NUMBER
	CONSTRAINT Inv_EqpChrg_HrsUsed_req NOT NULL
, CONSTRAINT Invoice_EqpCharges_pk PRIMARY KEY(InvNum,EquipNum, DateUsed)
);


