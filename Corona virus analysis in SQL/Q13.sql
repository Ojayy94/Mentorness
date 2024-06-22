-- Q13. Check how corona virus spread out with respect to recovered case
--      (Eg.: total confirmed cases, their average, variance & STDEV )

SELECT 
    DATE_FORMAT(STR_TO_DATE(Date, '%d-%m-%Y'),
							'%Y-%m') AS month,
    SUM(Recovered) AS total_recovered,
    AVG(Recovered) AS average_recovered,
    VARIANCE(Recovered) AS Variance_spread,
    STDDEV(Recovered) AS Stddev_spread
FROM
    `corona virus dataset`
GROUP BY month;  