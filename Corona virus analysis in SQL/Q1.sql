SHOW DATABASES;
CREATE DATABASE Mentorness;
USE Mentorness;

-- Q1. Write a code to check NULL values
SELECT 
    *
FROM
    `corona virus dataset`
HAVING 'NULL';

SELECT 
    SUM(CASE
        WHEN Confirmed IS NULL THEN 1
        ELSE 0
    END) AS confirmed,
    SUM(CASE
        WHEN Deaths IS NULL THEN 1
        ELSE 0
    END) AS deaths,
    SUM(CASE
        WHEN Recovered IS NULL THEN 1
        ELSE 0
    END) AS recovered
FROM
    `corona virus dataset`;
