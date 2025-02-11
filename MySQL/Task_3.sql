-- japanese-cities-name

select name from city where countrycode = "JPN";


-- weather-observation-station-2
select round(sum(LAT_N),2), roun(sum(Long_W),2) from station;

-- weather-observation-station-9
select distinct city from station where substr(city, 1, 1) not in ('A', 'E', 'I', 'O', 'U');

-- weather-observation-station-10
select distinct city from station where substr(city, length(city)) not in ('A', 'E', 'I', 'O', 'U');

-- weather-observation-station-12

select distinct city 
from station
where
substr(city, 1, 1) not in ('A', 'E', 'I', 'O', 'U')
and 
substr(city, length(city)) not in ('A', 'E', 'I', 'O', 'U');

-- average-population
select floor(avg(population)) from city;

-- teams-power-users

SELECT sender_id, count(sender_id) AS message_count  
FROM messages
WHERE sent_date BETWEEN '2022-08-01' AND '2022-08-31'
GROUP BY sender_id
ORDER BY message_count desc
LIMIT 2 ;

-- click-through-rate
select app_id,  
       round((sum(case when event_type = 'click' then 1 else 0 end) * 100.0    
       / sum(case when event_type = 'impression' then 1 else 0 end)),2)  
        as ctr  
from events 
WHERE 
    timestamp BETWEEN '2022-01-01' AND  '2023-01-01'
group by app_id;

