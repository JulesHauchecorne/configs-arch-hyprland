# 0
-- select e.first_name, e.last_name, e.salary, e.job_id, d.department_name, 
--    l.city, c.country_name 
--    from employees e, departments d, locations l, countries c 
--    where e.salary > all ( select salary 
--                            from employees
--                            where e.employee_id != employee_id)
--    and d.department_id = e.department_id 
--    and l.location_id = d.location_id
--    and c.country_id = l.country_id;

# 1 

select e.first_name, e.last_name, e.salary, e.job_id, e.department_name, 
    e.city, e.country_name 
    from emp_details_view e
    where e.salary > all ( select salary 
                            from employees
                            where e.employee_id != employee_id);

# 2

select e.first_name, e.last_name, e.job_id, e.salary, e.manager_id
    from employees e 
    where ( e.first_name, e.last_name ) in ( select c.first_name, c.last_name 
                                                from consultants c ) ;
# 3
select c.cust_id, c.cust_fname, c.cust_lname, c.cust_city,
    format(ifnull(max( s.sales_amt ), 0), 2) as Largest_sale, format(ifnull(sum( s.sales_amt ), 0), 2) as Total_sales, 
    format(ifnull(max(s.sales_amt)/sum(s.sales_amt), 0), 2) as '% of total sales in 1 sale', 
    format(ifnull(avg( s.sales_amt ), 0), 2) as Average_sale,
    count( s.sales_amt ) as Nbr_of_sales
    from customers c
    left join sales s
    on c.cust_id = s.sales_cust_id
    group by c.cust_id;

# 4 
-- select m.first_name, m.last_name, m.department_name, l.street_address, l.city, l.state_province
-- from emp_details_view m , locations l 
-- where not exists (
--     select e.department_id, e.manager_id 
--     from employees e
--     where m.department_id = e.department_id 
--     and m.employee_id != e.manager_id ) 
-- and l.location_id = m.location_id ;
    
select m.first_name, m.last_name, m.department_name, l.street_address, l.city, l.state_province
from emp_details_view m , locations l  
where m.employee_id = all ( select e.manager_id 
    from employees e
    where m.department_id = e.department_id
    and e.employee_id != m.employee_id )
and l.location_id = m.location_id 
order by m.department_id;

# 5

select e.first_name, e.last_name, e.job_id, e.salary,
m.first_name as 'Manager first name', m.last_name as 'Manager last name', m.job_id as 'Manager job id' ,
m.salary as 'Manager salary'
from employees e , employees m 
where e.salary >= m.salary 
and e.manager_id = m.employee_id;

# 6
 
select e.employee_id, e.first_name, e.last_name, e.job_id, e.salary
from employees e 
where ( e.job_id , e.employee_id) in (
    select jh.job_id , jh.employee_id 
    from job_history jh
);

# 7 

select e.first_name, e.last_name, e.job_id, e.salary 
from employees e  
where e.salary > ( select min(m.salary)
        from employees m 
        join employees 
        on m.employee_id = employees.manager_id
    )
and not exists ( select manager_id 
    from employees
    where e.employee_id = manager_id )
order by e.salary;


# 8 
select r.region_name, count( e.employee_id ) as 'Number of employees'
from regions r 
left join emp_details_view e 
on e.region_name = r.region_name
group by r.region_name;

# 9 
set autocommit = 0;

# 10 part1
update employees 
set department_id = 80, first_name = "Kimberly"
where employees.first_name = "Kimberely"
and employees.last_name = "Grant";

# 10 part2

update employees 
set salary = ( select 
    consultants.salary 
    from consultants 
    where consultants.last_name = "Taylor" )
where employees.last_name = "Weiss" 
or employees.last_name = "Fripp";

# 11

delete from consultants 
where ( consultants.last_name, consultants.first_name ) in (
    select employees.last_name, employees.first_name 
    from employees 
    where employees.last_name = consultants.last_name 
    and employees.first_name = consultants.first_name
);

# 12

update regions 
set region_name = "North America"
where region_name = "Americas";

update regions 
set region_name = "Middle East"
where region_name = "Middle East and Africa";

# 13

insert into regions ( region_id, region_name )
values ( 5, "South America"), 
        ( 6, "Africa");

# 14 

-- commit;

# 15 

select s.sales_rep_id, e.first_name, e.last_name, s.sales_amt , 
s.sales_timestamp, s.sales_cust_id, c.cust_lname
from sales s, employees e, customers c
where s.sales_amt > ( select max( sales.sales_amt )
        from sales 
        where s.sales_rep_id = sales.sales_rep_id
        and s.sales_id != sales.sales_id )
and s.sales_rep_id = e.employee_id 
and s.sales_cust_id = c.cust_id
order by s.sales_rep_id;

# 16 

with a as ( select e.last_name, e.first_name,  (e.salary + ((sum(s.sales_amt ))*e.commission_pct)) as totPay
    from employees e, sales s 
    where e.employee_id = s.sales_rep_id 
    group by e.employee_id),
    b as ( select avg( totPay ) as average 
        from a )
select first_name, last_name, round(totPay, 2) as 'Total pay'
from a 
where totPay > ( select average 
                from b)
order by totPay;

# 17 

with a as ( select m.employee_id, m.last_name, m.salary, m.commission_pct  
        from employees m 
        where exists ( select employees.employee_id 
            from employees 
            where employees.manager_id = m.employee_id
            )
        ), 
    b as ( select sum( sales.sales_amt) as sumSales 
        from sales, employees e  
        where sales.sales_rep_id = e.employee_id 
        and e.manager_id in (select employee_id 
                from a )
        )
  select a.employee_id, a.last_name, round((a.salary+(b.sumSales*a.commission_pct)), 2) as 'Total compensation'
  from a, b 
  order by a.employee_id;
-- select sumSales 
-- from b 

