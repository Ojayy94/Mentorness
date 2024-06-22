-- Q15. Find Country having lowest number of the death case

SELECT 
   `Country/Region` AS Country,
    SUM(deaths) AS lowest_deaths
FROM
    `corona virus dataset`
GROUP BY `Country/Region`
ORDER BY lowest_deaths
LIMIT 1;