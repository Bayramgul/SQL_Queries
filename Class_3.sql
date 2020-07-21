use syntaxhrm_mysql;
SELECT UPPER(emp_lastname), lower(emp_firstname) FROM hs_hr_employees;
select count(*) as title_number, job_title_code from hs_hr_employees
where job_title_code is null;
select count(*) as married_number, emp_marital_status from hs_hr_employees
where emp_marital_status='married';
select max(emp_birthday) as max_birtday, emp_firstname from hs_hr_employees;
select count(*) as job_number,job_title from ohrm_job_title
where job_title ='developer'
group by job_title;
select count(*) as job_number,job_title_code from hs_hr_employees
where job_title_code = 10 
group by job_title_code;
select count(*), emp_firstname from hs_hr_employees
where emp_firstname like 'a%';
select count(*) as job_number, job_title from ohrm_job_title
where job_title  in('Database Administrator','Application Developer','Production Manager')
group by job_title;
select count(*), job_title_code
from hs_hr_employees
where job_title_code in (8, 9, 14)
group by job_title_code;
-- display the employee count per job title , i wanna see where the employee count is more than 3
 -- having filters our groups where filters rows
select count(*), job_title_code from hs_hr_employees group by job_title_code
having count(*) >3;
-- display the youngest employees in each job title but display only who were born after 2000
select max(emp_birthday) as youngest_emp, job_title_code from hs_hr_employees
-- where job_title_codeis not null
group by job_title_code
having max(emp_birthday) >'%2000%';

