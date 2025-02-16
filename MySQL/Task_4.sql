-- what-type-of-triangle
select
    case
        when a + b <= c
        or a + c <= b
        or b + c <= a then 'Not A Triangle'
        when a = b
        and b = c then 'Equilateral'
        when a = b
        or b = c
        or a = c then 'Isosceles'
        else 'Scalene'
    end
from triangles

-- the-pads

SELECT concat(
        name, '(', substr(OCCUPATION, 1, 1), ')'
    ) as output
FROM OCCUPATIONS
union
SELECT concat(
        'There are a total of ', count(*), ' ', lower(OCCUPATION), 's.'
    ) as output
FROM OCCUPATIONS
group by
    OCCUPATION
order by output

-- the-company
SELECT
    c.company_code,
    c.founder,
    count(distinct lm.lead_manager_code) AS total_lead_managers,
    count(
        distinct sm.senior_manager_code
    ) AS total_senior_managers,
    count(distinct m.manager_code) AS total_managers,
    count(distinct e.employee_code) AS total_employees
FROM
    company c
    left join Lead_Manager lm on c.company_code = lm.company_code
    left join Senior_Manager sm on lm.lead_manager_code = sm.lead_manager_code
    left join Manager m on sm.senior_manager_code = m.senior_manager_code
    left join Employee e on m.manager_code = e.manager_code
GROUP BY
    c.company_code,
    c.founder
ORDER BY c.company_code;

-- sql-projects

SELECT MIN(Start_Date) as Project_Start, MAX(End_Date) as Project_End
FROM (
        SELECT
            Task_ID, Start_Date, End_Date, Start_Date - INTERVAL(
                ROW_NUMBER() OVER (
                    ORDER BY Start_Date
                )
            ) DAY AS project_group
        FROM Projects
    ) AS grouped_projects
GROUP BY
    project_group
ORDER BY DATEDIFF(
        MAX(End_Date), MIN(Start_Date)
    ), MIN(Start_Date);

-- average-population

    select round(avg(population)) from city 


-- harry-potter-and-wands


    SELECT W.id, WP.age, W.coins_needed, W.power
FROM Wands W
JOIN Wands_Property WP ON W.code = WP.code
WHERE WP.is_evil = 0
AND W.coins_needed = (
    SELECT MIN(W2.coins_needed)
    FROM Wands W2
    JOIN Wands_Property WP2 ON W2.code = WP2.code
    WHERE WP2.is_evil = 0 
    AND WP2.age = WP.age 
    AND W2.power = W.power
)
ORDER BY  W.power DESC, WP.age DESC;


-- weather-observation-station-15

SELECT ROUND(long_w, 4)
FROM station
WHERE lat_n = (SELECT MAX(lat_n) FROM station WHERE lat_n < 137.2345);

-- the-report
SELECT 
    CASE 
        WHEN g.grade >= 8 then s.name 
        ELSE 'NULL' 
    END,
    g.grade,
    s.marks
FROM students s
JOIN grades g 
    on s.Marks BETWEEN g.min_mark AND g.max_mark
order by  
    g.grade desc, 
    case 
        when g.grade >= 8 then s.name
        else NULL
    end asc,
    s.Marks asc;


-- symmetric-pairs
    SELECT DISTINCT f1.X AS X1, f1.Y AS Y1
FROM functions f1
join functions f2 
    on f1.X = f2.Y and f1.Y = f2.X
where f1.X < f1.Y 
   or (f1.X = f1.Y AND (SELECT count(*) from Functions f3 WHERE f3.X = f1.X AND f3.Y = f1.Y) > 1)
order by x1, y1;

