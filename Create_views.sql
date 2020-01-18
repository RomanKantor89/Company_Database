 --Invoice info--
create view User_view_inv_info as
select inv.invnum as "Invoice Num", inv.invdate as "Invoice Date", c.custaddress as "Customer Address",
p.projname as "Project", p.projtype as "Project Type", p.projlocation as "Location"
from customer c inner join invoice inv 
ON inv.cusnum = c.custnum 
inner join project p
ON inv.projnum = p.projnum;

--view 1.2 engineering charges--
create view User_view_eng_charge as
select e.emplname || ', ' || e.empfname as "Employee", es.skillname as "Skill", es.hourlyrate as "Skill Hourly Rate",
ie.dateworked as "Date", ie.hoursworked as "Hrs.", es.hourlyrate * ie.hoursworked as "Charge"
from employee e inner join employeeskill es
ON e.skillnum = es.skillnum
inner join invoice_enggcharges ie
ON ie.empnum = e.empnum;

--view 1.3 equipment charges--
create view User_view_equip_charge as
select e.equipnum || ' - ' || e.equipdesc as "Equipment Number" ,ie.dateused as "Date", 
ie.hoursused as "Total Hours", e.hourlyrate as "Hourly Rate", ie.hoursused * e.hourlyrate as "Charge"
from equipment e inner join invoice_equipcharges ie
ON e.equipnum = ie.equipnum;

--view 1.4 total of ENG charges
create view User_view_eng_total as
select sum(es.hourlyrate * ie.hoursworked) as "Sub-total Engineering Charges"
from invoice_enggcharges ie inner join employee emp
ON  ie.empnum = emp.empnum
inner join employeeskill es
ON es.skillnum = emp.skillnum;

--totals for eqipment charges
create view User_view_equip_total as
select sum(eqp.hourlyrate * ie.hoursused) as "Sub-total Equipment Charges"
from invoice_equipcharges ie inner join equipment eqp
ON  ie.equipnum = eqp.equipnum;

--view 2 
create view User_view_2 as
select pe.projnum as "ProjNum", b.projname as "Project Name", emp.empnum as "EmpNum",
emp.empfname || ' ' || emp.emplname as "Name",  floor((sysdate - emp.emphiredate)/365) as "Years in Company"
from employee emp  inner join project_employee pe 
    ON emp.empnum = pe.empnum 
    inner join project b 
    ON pe.projnum = b.projnum;
    
 
-- view 3
create view User_view_3 as
select E.empnum as "Emp Num", E.empfname || ' ' || E.emplname as "Emp Name", E.empPhone as "Phone",
B.benefitnum as "Benefit Num.", B.BenefitName as "Benefit", EB.startdate as "Start Date"
from employee e inner JOIN employee_benefit eb
    ON eB.empnum = e.empnum
    inner JOIN benefit b
    ON eb.benefitnum = b.benefitnum ;

--view 4
create view User_view_4 as
select ct.custgroup as "Customer Type", ct.custsubgroup as "Customer Sub-Group", c.custname as "Customer Name",
c.custphone as "Phone", c.custfax as "FAX"
from customer c inner join customertype ct 
ON c.custtype = ct.custtype;


--view 5 part 01--
create view User_view_5_part01 as
select equipclassnum as "Equip Class", equipclassdesc as "Class Description"
from equipmentclass;

--view 5 part 1--
create view User_view_5_part1 as
select e.equipclassnum as "Equip Class", e.equipnum, e.equipdesc as "Equipment Description", 
sum(iec.hoursused)*e.hourlyrate as "charge", iec.invnum as "InvNum",
count(e.equipnum) as "Qty"
from invoice_equipcharges iec join equipment e
ON e.equipnum = iec.equipnum
group by e.equipnum, e.hourlyrate, e.equipdesc, e.equipclassnum, iec.invnum;

--view 5 part 2--
create view User_view_5_part2 as
select invnum as "Inv.Num.", invdate as "Inv.Date", srepno as "SalesRep", cusnum as "Cust No"
from invoice;

--view 5 final view--
create view user_view_5_final as
select p01."Equip Class", p01."Class Description", p1.Equipnum as "EquipNum", p1."Equipment Description",
p1."charge" as "Charge",p1."Qty", p2."Inv.Num.",p2."Inv.Date", p2."SalesRep", p2."Cust No"
from user_view_5_part01 p01 inner join user_view_5_part1 p1
ON p01."Equip Class" = p1."Equip Class"
inner join user_view_5_part2 p2 
ON p1."InvNum" = p2."Inv.Num.";

select * from user_view_5_final;


