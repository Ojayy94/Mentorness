-- Q8. Find minimum values for confirmed, deaths, recovered per year

SELECT 
    EXTRACT(YEAR FROM STR_TO_DATE(Date, '%d-%m-%Y')) AS "Year",
    MIN(Confirmed) Monthly_confirmed,
    MIN(Deaths) Monthly_deaths,
    MIN(Recovered) Monthly_recovered
FROM
    `corona virus dataset`
GROUP BY Year;