use syntaxhrm_mysql;
-- Display all employees whose last name ends with ‘a’
SELECT emp_lastname FROM hs_hr_employees
WHERE emp_lastname LIKE '%a';
-- Display all HRMS offices except those located in US, Canada and Brazil.
SELECT name,country_code FROM ohrm_location
WHERE NOT country_code  in ('US', 'CA','BA');
-- Verify all employees who was born from January 1st of 1980 until December 31st of 2000.
SELECT emp_firstname,emp_lastname,emp_birthday FROM hs_hr_employees 
WHERE emp_birthday BETWEEN '1980-01-01' AND '2000-12-31';
-- Display all nationalities that start with ‘C’?
SELECT * FROM ohrm_nationality 
WHERE name LIKE 'a%';
-- Display all employees’ whose birthday is in August and do not forget to sort employee’s last name from A-Z.
SELECT emp_lastname ,emp_firstname, emp_birthday FROM hs_hr_employees
WHERE emp_birthday LIKE '____-%08-%'
ORDER BY emp_lastname ASC;
-- Verify all the employees who are managers.
SELECT * FROM ohrm_job_title
WHERE job_title LIKE '%Manager%';
-- How to display first name, last name, dob of employees who is a Freelancer or developer.
SELECT emp_firstname,emp_lastname,emp_birthday, employee_id,job_title_code FROM hs_hr_employees
 WHERE job_title_code =10 OR job_title_code=35;
 SELECT * FROM ohrm_job_title 
WHERE job_title ='Freelancer' OR job_title='developer';
select 
emp_firstname, emp_lastname, emp_birthday
   FROM
    hs_hr_employees
WHERE
    job_title_code in('10', '35');
