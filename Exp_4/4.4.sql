-- 1.Employee and Manager Names: Display a list of employee names along with their manager's names. Use the 'employees' table provided.

select e1.employee_name as employee, e2.employee_name as Manager
from employees e1
left join employees e2
on e1.manager_id = e2.employee_id;


-- 2.Every Possible Combination: Show every possible combination of 'customer_name' from the 'customers' table and 'product_name' from the 'products' table.

select  customer_name, p.product_name
from customers as c
cross join products p;
