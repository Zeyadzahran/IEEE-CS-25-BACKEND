-- revising-the-select-query
select * from city where population >= 100000 and CountryCode = 'USA';

-- revising-the-select-query-2
select name from city where population > 120000 and CountryCode  = 'USA';

-- japanese-cities-attributes
select * from city where  COUNTRYCODE  = "JPN"; 

-- name-of-employees
select name from employee order by name ASC 

-- salary-of-employees

select name from Employee where salary > 2000 and months < 10 order by employee_id ASC ;

-- more-than-75-marks
select name from Students where Marks > 75 order by substring(name,Length(name)-2) , id ;

-- tesla-unfinished-parts
SELECT part, assembly_step FROM parts_assembly where finish_date is  NULL;