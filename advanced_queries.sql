-- 31. Employee with Department
select e.employee_id, d.department_name
from employee e
join department d 
on e.department_id = d.department_id;

-- 32. Employee Salary Details
select e.employee_id, e.job_role, c.monthly_income, c.percent_salary_hike
from employee e 
join compensation c 
on e.employee_id = c.employee_id;

-- 33. Employee Performance
select e.employee_id, e.job_role, p.performance_rating 
from employee e 
join performance p
on e.employee_id = p.employee_id;

-- 34. Employees without performance record
select e.employee_id, e.job_role
from employee e 
left join performance p 
on e.employee_id = p.employee_id
where p.employee_id is null;

-- 35. All Departments
select e.employee_id, d.department_name
from employee e
right join department d 
on e.department_id = d.department_id;

-- 36. Rank Employees by Salary
select employee_id, monthly_income,
rank() over (order by monthly_income desc) as highest_salary_rank
from compensation c 
limit 10;

-- 37. Dense Rank Employees by Salary
select employee_id, monthly_income,
dense_rank() over (order by monthly_income desc) as highest_salary_rank
from compensation c ;

-- 38. Running Salary Total
select employee_id , monthly_income,
sum(monthly_income) over (order by employee_id) as running_salary
from compensation;

-- 39. Previous Employee Salary
select employee_id , monthly_income,
lag(monthly_income) over (order by employee_id) as previous_salary
from compensation;

-- 40. Employees Earning Above Average Salary
select employee_id , monthly_income 
from compensation
where monthly_income> (
                      select avg(monthly_income) as average_salary
                      from compensation
					  )
order by monthly_income;

-- 41. Employees with Highest Salary
select employee_id , monthly_income
from compensation
where monthly_income = (
                    select max(monthly_income) as highest_salary
                    from compensation
);

-- 42. Departments Above Average Salary
select d.department_id , d.department_name , avg(c.monthly_income) 
from employee e 
join department d 
on e.department_id = d.department_id
join compensation c
on e.employee_id = c.employee_id
group by d.department_id, d.department_name
having avg(c.monthly_income) > (
                         select avg(monthly_income) as average_salary
                         from compensation
);

-- 43. Employees with Above Average Experience
select employee_id , total_working_years 
from performance
where total_working_years > (
                             select avg(total_working_years) as average_exp
                             from performance
);
