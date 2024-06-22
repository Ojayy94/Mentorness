-- Q9. Find maximum values of confirmed, deaths, recovered per year

SELECT 
    EXTRACT(YEAR FROM STR_TO_DATE(Date, '%d-%m-%Y')) AS "Year",
    MAX(Confirmed) Monthly_confirmed,
    MAX(Deaths) Monthly_deaths,
    MAX(Recovered) Monthly_recovered
FROM
    `corona virus dataset`
GROUP BY Year;
