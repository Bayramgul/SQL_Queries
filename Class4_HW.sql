use syntaxhrm_mysql;
-- List all employees who are Cloud Architects?
select * from hs_hr_employees
 where job_title_code=(
 select id from ohrm_job_title 
 where job_title='Cloud Architect');
-- How to retrieve information of  the employee who earns the lowest  salary?
select * from hs_hr_emp_basicsalary;
select * 
from hs_hr_employees 
where emp_number =(select emp_number
 from hs_hr_emp_basicsalary
 where ebsal_basic_salary=(select min(ebsal_basic_salary)
 from hs_hr_emp_basicsalary));
-- List all employees who are Self Employed?
select * from ohrm_job_title;
select * from hs_hr_employees
where job_title_code
 =(select id from ohrm_job_title 
 where job_title='Self Employed');
-- Display emergency contact name and phone number of Adam Adams
select eec_name,eec_home_no,eec_mobile_no from hs_hr_emp_emergency_contacts
where emp_number=
(select emp_number 
from hs_hr_employees 
where emp_firstname='Adam' and emp_lastname='Adams');
-- How can you display the third highest salary? ;
select max(ebsal_basic_salary) from hs_hr_emp_basicsalary
where ebsal_basic_salary<
(select max(ebsal_basic_salary) from hs_hr_emp_basicsalary
 where ebsal_basic_salary<
(select max(ebsal_basic_salary )from hs_hr_emp_basicsalary));

