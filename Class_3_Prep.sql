SELECT * FROM hs_hr_employees;
--  ========SINGLE ROW CHARACTER FUNCTIONS=====>CONCAT/UPPER/LOWER/INITCAP============
-- IF INPUT IS ONE THEN OUTPUT IS ONE
-- Adds specified String text to the specified column rows 
SELECT CONCAT('My name is ', emp_firstname) FROM hs_hr_employees;
-- returns all values in specified column to uppercase/LOWERCASE
SELECT UPPER(emp_firstname) FROM hs_hr_employees;
-- returns all values in specified column to LOWERCASE
SELECT LOWER (emp_lastname) FROM hs_hr_employees;
SELECT UPPER ('Smith') FROM hs_hr_employees;
-- we can use functions in another functions
SELECT CONCAT(UPPER (emp_firstname), ' is the firstname'),emp_lastname FROM hs_hr_employees
WHERE emp_lastname='Smith';
SELECT CONCAT('Firstname is ', UPPER(emp_firstname),' and  Lastname is= ',Upper (emp_lastname)) as "Concat Function" from hs_hr_employees;
SELECT employee_id,emp_lastname FROM hs_hr_employees
WHERE LOWER( emp_lastname)=UPPER ('smith') ;
-- INITCAP initializes the first letter of each word in a charcter sequence 
SELECT INITCAP (emp_middle_name) from hs_hr_employees;
-- LENGTH () will return the employees which their firstname is 6 characters; 
SELECT emp_firstname, LENGTH(emp_firstname) 
as "length" FROM hs_hr_employees
WHERE LENGTH(emp_firstname)=6 ;
-- SUBSTR() is used to extract the parts of a string,SUSTR('HELLO',2,3) 2=starting point, 3=n of characters you wanna keep,returns the extracted part
 -- LPAD() IS FOR adding the chracter to the left side of the given string, 10=total n of characters after adding, '*' the character to add
 SELECT lpad('SMITH', 10,'*') FROM hs_hr_employees;
 -- LTRIM and Rtrim is for trimming from left and right 
 -- GROUPING FUNCTIONS==>input is multiple rows but output if single row
 select * from hs_hr_emp_basicsalary;
  -- display max salary 
 select max(ebsal_basic_salary) from hs_hr_emp_basicsalary;
 select min(ebsal_basic_salary) from hs_hr_emp_basicsalary;
  select sum(ebsal_basic_salary) from hs_hr_emp_basicsalary;
  select avg(ebsal_basic_salary) from hs_hr_emp_basicsalary;
 --  Counts those fields/cells that contain data
  Select count(emp_firstname) from hs_hr_employees;
 -- select avg(ebsal_basic_salary) from hs_hr_employees
--  where job_title_code=10 ;
 select * from ohrm_job_title ;
 select id,job_title, count(job_title) from ohrm_job_title
 group by(job_title);
 select count(*) from hs_hr_employees;
 select count(emp_marital_status) from hs_hr_employees
 where emp_marital_status is not null;
 -- display how many employees have marital status (single married or divorced) 
 select count(*) as married_number,emp_marital_status from hs_hr_employees
 -- where emp_marital_status is not null
 group by (emp_marital_status)
 having emp_marital_status in("single","married");
 -- display the youngest employee from db 
 select max(emp_birthday) as max_birtday, emp_firstname from hs_hr_employees;
 -- display the oldest employee from db
 -- select min(emp_birthday) as min_birthday, emp_firstname from hs_hr_employees;
--  display the gender of the employees (male) (female)
select count(emp_gender), emp_gender from hs_hr_employees
where emp_gender is not null
group by (emp_gender);
select * from ohrm_job_title;
select count(*) as job_number,job_title_code from hs_hr_employees
where job_title_code = 10 or job_title_code between 24 and 32
group by job_title_code;
select count(*) as job_number,job_title from ohrm_job_title
where job_title in ('developer','bakery chef')
group by job_title;

