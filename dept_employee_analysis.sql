-- 16. Employees in Each Department
select d.department_id, d.department_name, count(e.employee_id) as total_employees
from employee e
join department d
on e.department_id = d.department_id
group by d.department_id, d.department_name
order by d.department_id ;

-- 17. Average Salary by Department
select d.department_id, d.department_name, avg(c.monthly_income) as avg_salary
from employee e
join department d
on e.department_id = d.department_id
join compensation c
on e.employee_id = c.employee_id
group by d.department_id, d.department_name
order by d.department_id ;

-- 18. Highest Paid Employees
select e.employee_id , e.job_role, c.monthly_income
from employee e 
join compensation c 
on e.employee_id = c.employee_id
group by employee_id
order by c.monthly_income desc
limit 10;

-- 19. Salary by Job Role
select e.job_role , avg(c.monthly_income) as avg_salary
from employee e 
join compensation c 
on e.employee_id = c.employee_id
group by e.job_role ;

-- 20. Attrition Count
select attrition , count(attrition) as total_attrition
from performance
group by attrition ;

-- 21. Attrition by Department
select d.department_name , p.attrition, count(p.attrition) as total_attrition
from employee e 
join performance p 
on e.employee_id = p.employee_id
join department d 
on e.department_id = d.department_id
group by d.department_name, p.attrition;

-- 22.  Attrition by Gender
select e.gender , p.attrition, count(p.attrition) as total_attrition
from employee e 
join performance p 
on e.employee_id = p.employee_id
group by e.gender, p.attrition
order by e.gender;

-- 23. Attrition by Education
select e.education_level , p.attrition, count(p.attrition) as total_attrition
from employee e 
join performance p 
on e.employee_id = p.employee_id
group by e.education_level, p.attrition
order by e.education_level;

-- 24. Attrition by Job Role
select e.job_role , p.attrition, count(p.attrition) as total_attrition
from employee e 
join performance p 
on e.employee_id = p.employee_id
group by e.job_role, p.attrition
order by e.job_role;

-- 25. Average Performance Rating by Department
select d.department_name, avg(p.performance_rating) as avg_performance_rating 
from employee e
join department d 
on e.department_id = d.department_id 
join performance p
on e.employee_id = p.employee_id
group by d.department_name
order by avg_performance_rating desc;

-- 26. Average Salary Hike
select avg(percent_salary_hike) as avg_salary_hike
from compensation;

-- 27. Employees Working Overtime
select p.overtime ,count(e.employee_id) as employees_working_overtime 
from employee e
join performance p
on e.employee_id = p.employee_id
group by p.overtime;

-- 28. Average Work-Life Balance
select avg(work_life_balance) as avg_work_life_balance
from performance;

-- 29. Average Job Satisfaction
select avg(job_satisfaction) as avg_job_satisfaction 
from performance;

-- 30. Employees with More Than 10 Years Experience
select employee_id , total_working_years
from performance
where total_working_years > 10
order by total_working_years desc;