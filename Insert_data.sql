
--1. Insertion into EmployeeSkill--
INSERT INTO EmployeeSkill
    VALUES('1', 'Produce BluePrints', 100);
INSERT INTO EmployeeSkill
    VALUES('2', 'Supervise Foundation', 150);
INSERT INTO EmployeeSkill
    VALUES('3', 'Electrical Supervisor', 150);
    


--2. Insertion into Employee --
INSERT INTO Employee
    VALUES('311', 'Hall', 'Roy', SYSDATE - INTERVAL '7' YEAR, '(905)662-3887', '1');
INSERT INTO Employee
    VALUES('201', 'Relton', 'Joan', SYSDATE - INTERVAL '11' YEAR, NULL, '1');
INSERT INTO Employee
    VALUES('299', 'Rogers', 'Ann', SYSDATE - INTERVAL '9' YEAR, NULL, '2');
INSERT INTO Employee
    VALUES('331', 'Wang', 'Alex', SYSDATE - INTERVAL '5' YEAR, '(905)457-7728', '3');
INSERT INTO Employee
    VALUES('205', 'Chan', 'Pui-Ling', SYSDATE - INTERVAL '11' YEAR, '(905)662-3887', NULL);
INSERT INTO Employee
    VALUES('298', 'Guilmore', 'Robert', SYSDATE - INTERVAL '9' YEAR, NULL, NULL);
    
    

--3. Insertion into Project --
INSERT INTO Project
    VALUES('06-2337', 'Build North Bay Shopping Centre', 'North Bay, ON', '5 - Build Shopping Centre');
INSERT INTO Project
    VALUES('06-2338', 'Addition to South Lake Hospital', NULL, NULL);   
   

--4. Insertion into Project_Employee --
INSERT INTO Project_Employee
    VALUES('06-2337','311');
INSERT INTO Project_Employee
    VALUES('06-2337','201');
INSERT INTO Project_Employee
    VALUES('06-2337','299');
INSERT INTO Project_Employee
    VALUES('06-2337','331');
INSERT INTO Project_Employee
    VALUES('06-2338','205');
INSERT INTO Project_Employee
    VALUES('06-2338','298');
INSERT INTO Project_Employee
    VALUES('06-2338','311');
INSERT INTO Project_Employee
    VALUES('06-2338','201');
INSERT INTO Project_Employee
    VALUES('06-2338','331');
    


--5. Insertion Benefit --
INSERT INTO Benefit
    VALUES('SU-141', 'Sun Life Medical(Group 144)');
INSERT INTO Benefit
    VALUES('EPP-78', 'Engineer Pension Plan(Grp 78)');
INSERT INTO Benefit
    VALUES('MU-100', 'Mutual Life – Life Insurance-I');
    
    

--6. Insertion into Employee_Benefit --
INSERT INTO Employee_Benefit
    VALUES('205', 'SU-141', '1995-01-05');
INSERT INTO Employee_Benefit
    VALUES('205', 'EPP-78', '2004-09-15');
INSERT INTO Employee_Benefit
    VALUES('205', 'MU-100', '2004-09-15');
INSERT INTO Employee_Benefit
    VALUES('311', 'EPP-78', '2009-11-15');
INSERT INTO Employee_Benefit
    VALUES('311', 'MU-100', '2009-09-07');
INSERT INTO Employee_Benefit
    VALUES('331', 'SU-141', '2002-06-22');
    


--7. Insertion into CustomerType & Customer --
INSERT INTO CustomerType
    VALUES(CustomerType_NUM_SEQ.NEXTVAL, 'Government','Federal');
INSERT INTO Customer
    VALUES('1', 'Department of Defense', '(877)223-4172', NULL, '(207)223-4179', CustomerType_NUM_SEQ.CURRVAL);
INSERT INTO Customer
    VALUES('2', 'Department of Agriculture', '(877)223-4111', NULL, '(207)223-4113', CustomerType_NUM_SEQ.CURRVAL);
INSERT INTO Customer
    VALUES('3', 'National Archives', '(877)223-4201', NULL, '(207)223-4202', CustomerType_NUM_SEQ.CURRVAL);
INSERT INTO CustomerType
    VALUES(CustomerType_NUM_SEQ.NEXTVAL, 'Government','Provincial');
INSERT INTO Customer
    VALUES('4', 'Ministry of Transportation', '(595)326-5173', NULL, '(595)326-5181', CustomerType_NUM_SEQ.CURRVAL);
INSERT INTO Customer
    VALUES('5', 'Ministry of Health', '(583)566-4744', NULL, '(583)566-4743', CustomerType_NUM_SEQ.CURRVAL);
INSERT INTO CustomerType
    VALUES(CustomerType_NUM_SEQ.NEXTVAL, 'Corporation','Financial Services');
INSERT INTO Customer
    VALUES('6', 'DUCA Credit Union', '(859)692-4292', NULL, '(589)692-4299', CustomerType_NUM_SEQ.CURRVAL);
INSERT INTO Customer
    VALUES('7', 'Bank of Nova Scotia', '(978)288-4319', NULL, '(817)288-5319', CustomerType_NUM_SEQ.CURRVAL);
INSERT INTO CustomerType
    VALUES(CustomerType_NUM_SEQ.NEXTVAL, 'Corporation','Oil');
INSERT INTO Customer
    VALUES('8', 'Esso Imperial', '(856)945-5168', NULL, '(856)945-5163', CustomerType_NUM_SEQ.CURRVAL);
INSERT INTO CustomerType
    VALUES(CustomerType_NUM_SEQ.NEXTVAL, 'Corporation','Retail');
INSERT INTO Customer
    VALUES('103', 'Sears Canada', '(678)848-9987', '417 Allstate Road, Toronto, ON M2N 6H4', '(678-948-9989', CustomerType_NUM_SEQ.CURRVAL); 
    
    

--8. Insertion into SalesRep --Dont know hire date place
INSERT INTO SalesRep
    VALUES('23', 'Oliv Gardenor');
INSERT INTO SalesRep
    VALUES('13', 'Walter Chan');
INSERT INTO SalesRep
    VALUES('20', 'Joe Shoelly'); 
    
    

--9. Insertion into Invoice --Dont know hire date place
INSERT INTO Invoice
    VALUES('EAP-44720', '2005-10-17', '06-2337', '23', '103');
INSERT INTO Invoice
    VALUES('EAP-44721', '2005-10-18', NULL, '13', NULL);
INSERT INTO Invoice
    VALUES('EAP-44722', '2005-10-18', NULL, '23', NULL);
INSERT INTO Invoice
    VALUES('EAP-44723', '2005-10-18', NULL, '20', NULL); 
    
    

--10. Insertion into Invoice_EnggCharges --Dont know hire date place
INSERT INTO Invoice_EnggCharges
    VALUES('EAP-44720', '311', '2017-10-10', '7');
INSERT INTO Invoice_EnggCharges
    VALUES('EAP-44720', '311', '2017-10-11', '6.5');
INSERT INTO Invoice_EnggCharges
    VALUES('EAP-44720', '201', '2017-10-10', '6');
INSERT INTO Invoice_EnggCharges
    VALUES('EAP-44720', '201', '2017-10-11', '7.5');
INSERT INTO Invoice_EnggCharges
    VALUES('EAP-44720', '299', '2017-10-12', '7');
INSERT INTO Invoice_EnggCharges
    VALUES('EAP-44720', '299', '2017-10-13', '6');
INSERT INTO Invoice_EnggCharges
    VALUES('EAP-44720', '299', '2017-10-14', '7');
INSERT INTO Invoice_EnggCharges
    VALUES('EAP-44720', '331', '2017-10-13', '7');
INSERT INTO Invoice_EnggCharges
    VALUES('EAP-44720', '331', '2017-10-14', '6');
    
    

--11. Insertion into EquipmentClass --
INSERT INTO EquipmentClass
    VALUES('OFF', 'Office Copier');
INSERT INTO EquipmentClass
    VALUES('MIX', 'Concrete Mix');
INSERT INTO EquipmentClass
    VALUES('TRU', 'Wood Trusses');
INSERT INTO EquipmentClass
    VALUES('FRM', 'Framing');
INSERT INTO EquipmentClass
    VALUES('STF', 'Steel Framing');
INSERT INTO EquipmentClass
    VALUES('CST', 'Crushd Stone');
INSERT INTO EquipmentClass
    VALUES('FLD', 'Front Loader');
INSERT INTO EquipmentClass
    VALUES('CRA', 'Overhead Lift');
    
    

--12. Insertion into Equipment --
INSERT INTO Equipment
    VALUES('P100', 'Kodac Photocopier', 'OFF', '60');
INSERT INTO Equipment
    VALUES('CMT22', 'Concrete Mixer Truck', 'MIX', '250');
INSERT INTO Equipment
    VALUES('A100', q'[50' x 16' Roofing]', 'TRU', NULL);
INSERT INTO Equipment
    VALUES('A137', '2 x 4 x 8 Poplar', 'FRM', NULL);
INSERT INTO Equipment
    VALUES('STL100', 'Front Steel Loader', 'STF', NULL);
INSERT INTO Equipment
    VALUES('ST22', 'Stone Crusher', 'CST', NULL);
INSERT INTO Equipment
    VALUES('FL660', 'Front Loading Device', 'FLD', NULL);
INSERT INTO Equipment
    VALUES('CRA-11', q'[120' Overhead Crane]', 'CRA', NULL);
    

--13. Insertion into Invoice_EquipCharges --Dont know hire date place
INSERT INTO Invoice_EquipCharges
    VALUES('EAP-44720', 'P100', '2017-10-14', '7');
INSERT INTO Invoice_EquipCharges
    VALUES('EAP-44720', 'CMT22', '2017-10-14', '8');
INSERT INTO Invoice_EquipCharges
    VALUES('EAP-44720', 'CMT22', '2017-10-15', '8');
    /*Not adding anymore as dateused not available