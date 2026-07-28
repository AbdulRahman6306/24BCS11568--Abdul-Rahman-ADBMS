# Write your MySQL query statement below
select E1.name, E2.bonus from Employee as E1
left join Bonus as E2
on E1.empId = E2.empId
where E2.bonus is null
or E2.bonus<1000;
