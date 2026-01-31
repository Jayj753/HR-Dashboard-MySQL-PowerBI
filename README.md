# HR-Dashboard-MySQL-PowerBI

<img width="1602" height="900" alt="image" src="https://github.com/user-attachments/assets/bd01bc4e-831b-4c8e-87ac-102d4d3613b7" />

## Data Used

 **Data** - HR Data which amounts to over 22000 rows from the year 2000 to 2020.
 
 **Data Cleaning and Analysis** - MySQL

 **Data Visualization** -Power BI

 ## Questions 

 1. What is the gender breakdown of employees in the company?

2. What is the race/ethnicity breakdown of employees in the company?

3. What is the age distribution of employees in the company?

4. How many employees work at headquarters versus remote locations?

5. What is the average length of employment for employees who have been terminated?

6. How does the gender distribution vary across departments and job titles?

7. What is the distribution of job titles across the company?

8. Which department has the highest turnover rate?

9. What is the distribution of employees across locations by state?

10. How has the company's employee count changed over time based on hire and term dates?

11. What is the tenure distribution for each department?


  ## Summary of Findings

- There are more male employees.
  
- Racial and ethnic distribution analysis highlights uneven representation, suggesting potential areas for diversity improvement.
  
- The youngest employee is 20 years old and the oldest is 57 years old.

- 5 age groups were created (18-24, 25-34, 35-44, 45-54, 55-64). A large number of employees were between 25-
34 followed by 35-44 while the smallest group was 55-64.
  
- The organization employs both onsite and remote workers, with workforce concentration differing by location.A large number pf employees work at headquarters.
  
- The average length of employment for terminated employees is approximately 7 years, indicating moderate employee retention.
 
- Gender distribution across departments is relatively balanced; however, most departments still have a higher number of male employees.
  
- The Marketing department has the highest employee turnover rate, followed by the Training department. In contrast, Research and Development, Support, and Legal departments have the lowest turnover rates.
  
- A significant portion of the workforce is located in the state of Ohio, making it the primary employee location.
  
- Overall employee headcount has shown a positive net increase over the years, indicating organizational growth.
  
- The average tenure across departments is approximately 8 years, with Legal and Auditing having the longest tenure, while Services, Sales, and Marketing have the shortest.

## Limitations

-Some records had negative ages (967 records) and were excluded during querying. Only ages 18 years and above were included in the analysis.

-Some termination dates were in the future (1,599 records) and were excluded. Only termination dates less than or equal to the current date were considered.

## Recommendation

-Implement data validation rules at the point of data entry to prevent negative ages and future termination dates.

-Regularly review and clean the dataset to ensure accuracy and completeness, which will improve the reliability of future analyses.
 
