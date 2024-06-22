-- Q16. Find top 5 countries having highest recovered case

SELECT 
    `Country/Region` AS Country,
    SUM(Recovered) AS recovered_cases
FROM
    `corona virus dataset`
GROUP BY `Country/Region`
ORDER BY recovered_cases DESC
LIMIT 5;