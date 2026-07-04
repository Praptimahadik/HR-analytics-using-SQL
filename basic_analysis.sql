-- 1. Total employees
select count(employee_id) as total_employee
from employee;
 
-- 2. Total departments
select count(department_id) as total_department
from department;

-- 3. Average salary
select avg(monthly_income) as avg_salary
from compensation;

-- 4. Maximum salary
select max(monthly_income) as max_salary
from compensation;

-- 5. Minimum salary
select min(monthly_income) as min_salary
from compensation;

-- 6. Average Age
select avg(age) as avg_age 
from employee;

-- 7. Total Salary Paid
select sum(monthly_income) as total_salary
from compensation;

-- 8. Employees by Gender
select count(employee_id) as total_employees, gender
from employee
group by gender;

-- 9. Employees by Marital Status
select count(employee_id) as total_employees, marital_status
from employee
group by marital_status;

-- 10. Employees by Education Level
select count(employee_id) as total_employees, education_level
from employee
group by education_level;

-- 11. Employees by Education Field
select count(employee_id) as total_employees, education_field
from employee
group by education_field;

-- 12. Employees by Job Role
select count(employee_id) as total_employees, job_role
from employee
group by job_role;

-- 13. Employees by Business Travel
select count(employee_id) as total_employees, business_travel
from employee
group by business_travel;

-- 14. Average Distance from Home
select avg(distance_from_home) as avg_distance
from employee;

-- 15. Average Years at Company
select avg(years_at_company) as avg_years_at_company
from performance;
