SELECT 
    DATE_FORMAT(STR_TO_DATE(Date, '%d-%m-%Y'), '%Y-%m') AS 'year-month',
    SUM(Confirmed) AS total_confirmed,
    AVG(Confirmed) AS average_confirmed,
    VARIANCE(Confirmed) AS Variance_spread,
    STDDEV(Confirmed) AS Stddev_spread
FROM
    `corona virus dataset`
GROUP BY DATE_FORMAT(STR_TO_DATE(Date, '%d-%m-%Y'), '%Y-%m');        