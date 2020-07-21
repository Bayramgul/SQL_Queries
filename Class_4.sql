use syntaxhrm_mysql;
select * from hs_hr_employees; 
select * from  hs_hr_emp_basicsalary;
-- display the avg salary for payperiod 
select avg(ebsal_basic_salary),payperiod_code
from hs_hr_emp_basicsalary 
group by payperiod_code;

-- display average salary per pay period but less than 90000
select avg(ebsal_basic_salary),payperiod_code
from hs_hr_emp_basicsalary
group by payperiod_code
having avg(ebsal_basic_salary) < 90000;