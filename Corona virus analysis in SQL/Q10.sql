-- Q10. The total number of case of confirmed, deaths, recovered each month

SELECT 
    DATE_FORMAT(STR_TO_DATE(Date, '%d-%m-%Y'), '%Y-%m') AS 'year-month',
    SUM(Confirmed) AS confirmed_total,
    SUM(Deaths) AS total_deaths,
    SUM(Recovered) AS total_recovered
FROM
    `corona virus dataset`
GROUP BY DATE_FORMAT(STR_TO_DATE(Date, '%d-%m-%Y'), '%Y-%m');
