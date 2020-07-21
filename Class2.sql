use syntaxhrm_mysql;
select * from hs_hr_employees;
select emp_firstname,emp_lastname
from hs_hr_employees
-- order by emp_firstname asc;
order by emp_firstname desc;
select distinct emp_firstname,emp_lastname from hs_hr_employees
order by emp_firstname desc;
-- how to get all yunus with firstname and lastname in ascending order
select emp_firstname,emp_lastname from hs_hr_employees
where emp_firstname="yunus"
order by emp_firstname asc;

select emp_firstname from hs_hr_employees
where emp_birthday is null
order by emp_firstname desc;

select emp_firstname from hs_hr_employees,emp_birthday
where emp_birthday is not null;
-- How to display information about employees who do not have assign job titles?
select emp_firstname,emp_lastname, job_title_code  from hs_hr_employees
where job_title_code is null;
-- How to find employees first name, last name that do not have home phone number and display first names in alphabetical order.
select emp_firstname,emp_lastname,emp_hm_telephone from hs_hr_employees
where emp_hm_telephone is null 
order by emp_firstname asc;
-- How to display about all employees whose DOB has been entered. We want to see employees sorted by last name from Z-A?
select emp_firstname,emp_lastname,emp_birthday from hs_hr_employees
where emp_birthday is not null
order by emp_lastname desc;
-- display all the info of employee whose firstname is John and lastname is Doe. All conditions must be true
select * from hs_hr_employees
where emp_firstname ="John" and emp_lastname="Doe";
--  display all the info from employees whose id are either or 13288 13290 13292, any condition should be true, at least 1 
select * from hs_hr_employees 
where employee_id=13288 or employee_id=13290 or  employee_id=13292;

SELECT  *
from hs_hr_employees
where employee_id in (13288, 13290, 13292);
-- display all the info from job title except Bakery Chef 
select * from ohrm_job_title 
where job_title ="Bakery Chef";
SELECT  * from hs_hr_employees
where (emp_firstname in ('John', 'Yunus')) and (emp_lastname in ('Yakut','Doe'));
-- Display employees first and last names and id who have employee ids from 11123 until 13288
SELECT emp_firstname,emp_lastname,employee_id from hs_hr_employees 
WHERE employee_id BETWEEN 11123 AND 13288
ORDER BY employee_id asc;
-- % creates a pattern 
-- 'a%' starts with a, 
-- '%a' ends with a, 
-- 'ja%'starts with ja and ends with a
SELECT emp_firstname from hs_hr_employees
WHERE emp_firstname like 'ja%e';
-- display firstname and lastname and birthday for those emps who were born after 2000
SELECT emp_firstname,emp_lastname,emp_birthday FROM hs_hr_employees
-- WHERE emp_birthday >'2000';
-- WHERE emp_birthday > '2000%' 
WHERE emp_birthday LIKE '2000%'; 
-- better to use % with like;
-- display all the nationalities which start with a;
SELECT * FROM ohrm_nationality 
WHERE NAME LIKE 'a%';
-- display all employees who were born in february
 -- underscore covers one letter 
SELECT emp_firstname,emp_lastname,emp_birthday FROM hs_hr_employees
WHERE emp_birthday LIKE '____-%02-__';

