create database hr_analysis;

use hr_analysis;

CREATE TABLE department(
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) UNIQUE
);

CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    age INT,
    gender VARCHAR(20),
    marital_status VARCHAR(30),
    education_level INT,
    education_field VARCHAR(100),
    department_id INT,
    job_role VARCHAR(100),
    business_travel VARCHAR(50),
    distance_from_home INT,

    FOREIGN KEY (department_id)
    REFERENCES department(department_id)
);
ALTER TABLE employee
MODIFY COLUMN education_level VARCHAR(30);

CREATE TABLE compensation (
    employee_id INT PRIMARY KEY,
    daily_rate INT,
    hourly_rate INT,
    monthly_income INT,
    monthly_rate INT,
    percent_salary_hike INT,
    stock_option_level INT,

    FOREIGN KEY (employee_id)
    REFERENCES employee(employee_id)
);

CREATE TABLE performance (

    employee_id INT PRIMARY KEY,
    attrition VARCHAR(10),
    environment_satisfaction INT,
    job_involvement INT,
    job_level INT,
    job_satisfaction INT,
    num_companies_worked INT,
    over_18 VARCHAR(5),
    overtime VARCHAR(10),
    performance_rating INT,
    relationship_satisfaction INT,
    standard_hours INT,
    total_working_years INT,
    training_time_last_year INT,
    work_life_balance INT,
    years_at_company INT,
    years_in_current_role INT,
    years_since_last_promotion INT,
    years_with_currmanager INT,
    
    FOREIGN KEY (employee_id)
    REFERENCES employee(employee_id)
);