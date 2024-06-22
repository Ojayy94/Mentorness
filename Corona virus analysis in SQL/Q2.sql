-- Q2. If NULL values are present, update them with zeros for all columns.
  
UPDATE `corona virus dataset` 
SET 
    Confirmed = IFNULL(Confirmed, 0),
    Deaths = IFNULL(Deaths, 0),
    Recovered = IFNULL(Recovered, 0);

/* Query on MSSQL
SELECT 
    ISNULL(Confirmed, 0),
    ISNULL(Deaths, 0),
    ISNULL(Recovered, 0)
FROM
    `corona virus dataset`; */