# SQL Data Analysis Portfolio

Welcome to my SQL data analysis portfolio. This repository showcases my skills in SQL through two main projects: Airlines Data Analysis and Thyroid Case Analysis.

## Projects

### 1. Airlines Data Analysis

This project uses SQL to analyze flight data, providing insights into airline operations and performance.

**Key Queries:**
- Finding the longest flights
- Calculating average air time by airline
- Analyzing on-time performance
- Examining delays by day of the week and hour
- Identifying busiest hours and airports with most delays

**Sample Query:**
```sql
SELECT carrier, 
       1 - (SUM(CASE WHEN dep_delay > 0 THEN 1 ELSE 0 END) / COUNT(*)) AS OntimePercentage
FROM flights 
GROUP BY carrier
ORDER BY OnTimePercentage DESC;
```

[View Full Project](https://github.com/0299Imam/SQL_Portofolio/blob/main/Airlines%20Data%20Analysis.sql)

### 2. Thyroid Case Analysis

This project demonstrates the use of SQL for analyzing medical data, specifically thyroid cases.

**Key Analyses:**
- Distribution of thyroid function types and risk levels
- Impact of smoking on thyroid conditions
- Recurrence rate analysis
- Predictive modeling for treatment response
- Stage and risk analysis
- Outcome assessment based on treatment responses

**Sample Query:**
```sql
SELECT "Thyroid Function", Risk, COUNT(*) AS Number_of_Patients
FROM Thyroid_Diff 
GROUP BY "Thyroid Function", Risk
ORDER BY Number_of_Patients DESC;
```

[View Full Project](https://github.com/0299Imam/SQL_Portofolio/blob/main/Thyroid%20Case%20Using%20SQL.sql)

## Skills Demonstrated

- Complex SQL queries (JOIN, subqueries, aggregations)
- Data filtering and sorting
- Statistical analysis using SQL
- Healthcare data analysis
- Aviation data analysis
- Data aggregation and summarization
- Predictive analysis using SQL

## Tools Used

- SQL
- Dbeaver

## How to Use This Repository

Each project folder contains:
- SQL script files with all queries
- A README explaining the project objectives and key findings
- Any additional resources or datasets used (if applicable)

To run these queries:
1. Set up a SQL database with the appropriate schema
2. Import the provided datasets (if available)
3. Execute the SQL scripts in your preferred SQL environment

## Contact

I'm open to discussing these projects or potential collaborations. Feel free to reach out:

- Email: [imam0299@gmail.com]
- LinkedIn: [https://www.linkedin.com/in/imamsantoso10/]

Thank you for visiting my SQL portfolio!
