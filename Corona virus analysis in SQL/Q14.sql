-- Q14. Find Country having highest number of the Confirmed case

SELECT 
    `Country/Region` AS Country,
    SUM(Confirmed)
		AS highest_confirmed
FROM
    `corona virus dataset`
GROUP BY `Country/Region`
ORDER BY highest_confirmed DESC
LIMIT 1;