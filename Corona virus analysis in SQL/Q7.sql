WITH most_frequent_confirmed AS (
    SELECT 
        DATE_FORMAT(STR_TO_DATE(Date, '%d-%m-%Y'), '%Y-%m') AS month,
        Confirmed,
        COUNT(*) AS count,
        ROW_NUMBER() OVER (PARTITION BY DATE_FORMAT(STR_TO_DATE(Date, '%d-%m-%Y'), '%Y-%m') ORDER BY COUNT(*) DESC) AS row_num
    FROM `corona virus dataset`
    GROUP BY month, Confirmed
),
most_frequent_deaths AS (
    SELECT 
        DATE_FORMAT(STR_TO_DATE(Date, '%d-%m-%Y'), '%Y-%m') AS month,
        Deaths,
        COUNT(*) AS count,
        ROW_NUMBER() OVER (PARTITION BY DATE_FORMAT(STR_TO_DATE(Date, '%d-%m-%Y'), '%Y-%m') ORDER BY COUNT(*) DESC) AS row_num
    FROM `corona virus dataset`
    GROUP BY month, Deaths
),
most_frequent_recovered AS (
    SELECT 
        DATE_FORMAT(STR_TO_DATE(Date, '%d-%m-%Y'), '%Y-%m') AS month,
        Recovered,
        COUNT(*) AS count,
        ROW_NUMBER() OVER (PARTITION BY DATE_FORMAT(STR_TO_DATE(Date, '%d-%m-%Y'), '%Y-%m') ORDER BY COUNT(*) DESC) AS row_num
    FROM `corona virus dataset`
    GROUP BY month, Recovered
) 
SELECT c.month AS "year-month",
    c.Confirmed AS most_frequently_confirmed,
    d.Deaths AS most_frequently_deaths,
    r.Recovered AS most_frequently_recovered
FROM most_frequent_confirmed c
JOIN most_frequent_deaths d ON c.month = d.month AND d.row_num = 1
JOIN most_frequent_recovered r ON c.month = r.month AND r.row_num = 1
WHERE c.row_num = 1
ORDER BY c.month;