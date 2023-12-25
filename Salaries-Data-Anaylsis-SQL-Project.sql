create DATABASE First_Project; 
use First_Project;

-- 1    Showing all the Rows and Columns in the Table
SELECT * from salaries ;

-- 2   Showing only selected column names from table ex: Employeename and Jobtitle
SELECT EmployeeName,JobTitle from salaries;

-- 3  showing the number of employees in the table
SELECT count(*) from salaries;

-- 4 Finding the unique Job Titles in the table 
SELECT distinct Jobtitle from salaries ;
SELECT count(distinct Jobtitle) from salaries;

-- 5 Finding the JobTitle and overtime pay for all the employees with overtime pay greater than 50000
SELECT JobTitle , OvertimePay from salaries
WHERE  OvertimePay>50000;

-- 6 Finding the Average basepay for all employess
SELECT  avg(BasePay) as 'Average BasePay' from salaries;

-- 7 Finding the top 10 Highest paid employees
SELECT EmployeeName, TotalPay from salaries 
order by TotalPay desc
limit 10;

-- 8 Finding the average of Basepay, Overtimepay, and otherpay for each employee
SELECT EmployeeName, (BasePay + OvertimePay + OtherPay) /3 as avg_of_three_columns from salaries;

-- 9 Finding the all employees who have the word 'manager' in thier job title 
SELECT Employeename , JobTitle from salaries
WHERE JobTitle LIKE '%Manager%';

-- 10 Finding all the employees with jobtitle not equal to 'Manager'
SELECT Employeename , JobTitle from salaries
WHERE JobTitle  <>'Manager';

-- 11 Finding all employees with a total pay between 50,000 and 70,000
SELECT Employeename , TotalPay from salaries
WHERE TotalPay>=50000 and TotalPay<=70000;

SELECT Employeename , TotalPay from salaries
WHERE TotalPay between 50000 and 70000;

-- 12 Finding all the employees with a base pay less than 50000 or total pay greater than 100000
SELECT * from salaries
WHERE Basepay <50000 or TotalPay >100000;

-- 13 Finding all the employees with totalpay benefits value between 125000 and 150000 and a job title containing the word ' Director' 
SELECT * from salaries
WHERE TotalPayBenefits between 125000 and 150000
and JobTitle LIKE '%Director%';


-- 14 Findinf all employess oredered by their total pay benefits in descending order 
SELECT * from salaries
order by TotalpayBenefits desc;


-- 15 Findning all job titles with an average base pay of at least 100000 and order them by the average basepay in descending order 
SELECT JobTitle , avg(BasePay) as avg_basepay from salaries
group by JobTitle 
having avg(BasePay) >=100000
order by avg_basepay desc;


-- 16 deleting the column 
SELECT * from salaries;
alter table salaries 
drop column Notes;
SELECT * from salaries;


-- 17 Updating the base pay of all employees with job title containing 'manager' by increasing it by 10% 
update salaries
set BasePay = Basepay * 1.1 
WHERE JobTitle Like	'%Manager%';

-- 18 Deleting all employees who have no Overtimepay 
SELECT * from salaries
WHERE OvertimePay = 0;

delete from salaries
WHERE OvertimePay = 0;

SELECT count(*) from salaries
WHERE OvertimePay = 0;
























