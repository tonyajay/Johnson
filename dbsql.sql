
select empno,empname from employee
select deptno,deptname from dept
select partno,partname from parts where qoh=0
select empno,empname from employee where salary between 10000 and 12000
select itnum,itname,itprice,itprice*1.1 from item where itdept=49
select empno,empname,salary from employee where empname like 'S%'
select partno,partname,weight from parts where partno in (select part from supply where suppliers=(select supno from supplier where supname='dec'))
select distinct a.partno,a.partname,a.weight from parts a,supply b,supplier c where a.partno=b.part and b.suppliers=c.supno and c.supname='DEC'
select partno,partname,color from parts where weight > (select weight from parts where partname='tape  drive' and color='black')
select a.partno,a.partname,a.color from parts a,parts b where a.weight > b.weight and b.partname='tape  drive' and b.color='black' 
select avg(salary) from employee where empmanager=199
select supname,count(distinct itname) as no_of_items from supplier join item on supplier.supno=item.itsupplier group by supname
select sum(a.weight) as total_weight from parts a,supply b,supplier c,city d where a.partno=b.part and b.suppliers=c.supno and c.supcity=d.cityname and d.citystate='MASS' group by b.suppliers
insert into supplier values (1015,'Datatec','Denver')
select a.empname,a.empno,a.salary from employee a,dept b where a.empno=b.deptmanager and b.deptstore=8
update employee set salary=1.05*salary where empno in (select deptmanager from dept where deptstore=8)
select a.empname,a.empno,a.salary from employee a,dept b where a.empno=b.deptmanager and b.deptstore=8