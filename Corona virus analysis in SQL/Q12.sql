-- Q12. Check how corona virus spread out with respect to death case per month
--      (Eg.: total confirmed cases, their average, variance & STDEV )

SELECT 
    DATE_FORMAT(STR_TO_DATE(Date, '%d-%m-%Y'),
							'%Y-%m') AS month,
    SUM(Deaths) AS total_deaths,
    AVG(Deaths) AS average_deaths,
    VARIANCE(Deaths) AS Variance_spread,
    STDDEV(Deaths) AS Stddev_spread
FROM
    `corona virus dataset`
GROUP BY month;  