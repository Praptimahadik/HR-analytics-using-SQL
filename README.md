# HR-analytics-using-SQL

## Project Overview
This project demonstrates SQL skills by analyzing employee data from the IBM HR Analytics dataset.The data is normalized into multiple relational tables, and SQL is used to answer business questions related to employee demographics, compensation, performance, and attrition.

This project covers database design, SQL query writing, joins, subqueries, window functions and business-oriented analysis.

---

## Project Objectives

- Design a normalized relational database
- Create multiple related tables using SQL
- Perform HR data analysis using SQL queries
- Apply Joins, Aggregate Functions, Window Functions, and Subqueries
- Generate meaningful business insights from employee data

---

## Tools & Technologies

- MySQL Workbench 8.0
- Microsoft Excel
- GitHub

---

## Dataset

**Dataset Name:** IBM HR Analytics Employee Attrition

**Source:** Kaggle

**Total Employees:** 1470

---

## Database Schema

The dataset was normalized into the following tables:

### Employees
- Employee ID
- Age
- Gender
- Marital Status
- Education Level
- Education Field
- Department ID
- Job Role
- Business Travel
- Distance From Home

### Departments
- Department ID
- Department Name

### Compensation
- Employee ID
- Daily Rate
- Hourly Rate
- Monthly Income
- Monthly Rate
- Percent Salary Hike
- Stock Option Level

### Performance
- Employee ID
- Attrition
- Performance Rating
- Job Satisfaction
- Work Life Balance
- Total Working Years
- Years At Company
- Overtime....so on

---

## SQL Concepts Covered

- Aggregate Functions
- GROUP BY
- HAVING
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- Window Functions
- RANK()
- DENSE_RANK()
- ROW_NUMBER()
- LAG()
- Subqueries

---

## Business Questions Solved

- Total Employees
- Average Employee Age
- Average Salary
- Employees by Department
- Employees by Gender
- Employees by Education Level
- Employees by Job Role
- Average Salary by Department
- Top 10 Highest Paid Employees
- Attrition Analysis
- Attrition by Department
- Attrition by Gender
- Attrition by Job Role
- Employees Working Overtime
- Average Job Satisfaction
- Average Work-Life Balance
- Employees with More Than 10 Years Experience
- Rank Employees by Salary
- Running Total of Salary
- Employees Earning Above Average Salary
- Departments Above Average Salary
- CTE Examples
- LEFT JOIN & RIGHT JOIN Examples

A total of **43 SQL queries** were implemented to perform comprehensive HR analytics.

---
## Key Business Insights

- Research & Development has the highest number of employees.
- Salary distribution varies significantly across departments and job roles.
- Overtime patterns can be analyzed alongside employee attrition.
- Departments differ in their average salary levels.
- Employees earning above the company average salary can be identified using subqueries.
- Window functions provide employee salary rankings and cumulative salary analysis.

---

## 🚀 Conclusion

This project demonstrates practical SQL skills by designing a normalized HR database and performing business-focused analysis using joins, aggregate functions, window functions, and subqueries. It showcases the ability to solve real-world HR analytics problems using SQL.

