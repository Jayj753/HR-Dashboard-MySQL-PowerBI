CREATE DATABASE projects;

USE projects;

SELECT * FROM hr;

select termdate from hr;

ALTER TABLE hr
CHANGE COLUMN ï»¿id emp_id VARCHAR(20) NULL;

DESCRIBE hr;

SELECT birthdate FROM hr;

SET SQL_SAFE_UPDATES = 0;

UPDATE hr
SET birthdate = CASE
    WHEN birthdate LIKE '%/%' THEN
        DATE_FORMAT(STR_TO_DATE(birthdate, '%m/%d/%Y'), '%Y-%m-%d')
    WHEN birthdate LIKE '%-%' THEN
        DATE_FORMAT(STR_TO_DATE(birthdate, '%m-%d-%Y'), '%Y-%m-%d')
END
WHERE emp_id IS NOT NULL;

ALTER TABLE hr
MODIFY COLUMN birthdate DATE;

UPDATE hr
SET hire_date = CASE
    WHEN hire_date LIKE '%/%' THEN
        DATE_FORMAT(STR_TO_DATE(hire_date, '%m/%d/%Y'), '%Y-%m-%d')
    WHEN hire_date LIKE '%-%' THEN
        DATE_FORMAT(STR_TO_DATE(hire_date, '%m-%d-%Y'), '%Y-%m-%d')
END;

   ALTER  TABLE hr
   MODIFY COLUMN hire_date DATE;


SELECT
    termdate AS original_termdate,
    CASE
        WHEN termdate IS NOT NULL AND termdate <> ''
        THEN DATE(STR_TO_DATE(termdate, '%Y-%m-%d %H:%i:%s UTC'))
        ELSE NULL
    END AS converted_termdate
FROM hr
LIMIT 20;



UPDATE hr
SET termdate =
    CASE
        WHEN termdate IS NOT NULL AND termdate <> ''
        THEN DATE(STR_TO_DATE(termdate, '%Y-%m-%d %H:%i:%s UTC'))
        ELSE NULL
    END;
    
    ALTER  TABLE hr
    MODIFY COLUMN termdate DATE;

ALTER TABLE hr ADD COLUMN age INT;

SELECT * FROM  hr;

UPDATE hr
SET age = timestampdiff(YEAR,birthdate,CURDATE());

SELECT birthdate, age FROM hr;

SELECT 
    min(age) AS youngest,
    max(age) AS oldest
    FROM hr;
    
    SELECT count(*) FROM hr WHERE age < 18;