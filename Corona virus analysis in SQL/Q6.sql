-- Q6. Find monthly average for confirmed, deaths, recovered
-- select avg(confirmed) as 'Confirmed average' from `corona virus dataset`;

SELECT 
    DATE_FORMAT(STR_TO_DATE(Date, '%d-%m-%Y'), '%Y-%m') AS "year-month",
    AVG(Confirmed) AS confirmed_avg,
    AVG(Deaths) AS avg_deaths,
    AVG(Recovered) AS avg_recovered
FROM `corona virus dataset`
GROUP BY DATE_FORMAT(STR_TO_DATE(Date, '%d-%m-%Y'), '%Y-%m');