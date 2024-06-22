-- Q5. Number of month present in dataset

SELECT 
    COUNT(
			DISTINCT 
			DATE_FORMAT(STR_TO_DATE(Date, '%d-%m-%Y'), 
            '%Y-%m'))
            AS number_of_months
FROM
    `corona virus dataset`;