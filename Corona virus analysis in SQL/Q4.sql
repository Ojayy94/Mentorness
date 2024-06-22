-- Q4. Check what is start_date and end_date

SELECT 
    MIN(STR_TO_DATE(Date, '%d-%m-%Y')) AS start_date,
    MAX(STR_TO_DATE(Date, '%d-%m-%Y')) AS end_date
FROM
    `corona virus dataset`;