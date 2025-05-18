
-- 📊 STREAMING KPI SQL SCRIPT
-- This script recreates the streaming KPI dataset in SQL and includes several exploratory queries.

-- 1️⃣ Create Table
CREATE TABLE streaming_data (
    Company TEXT,
    Year INTEGER,
    Revenue_B_USD REAL,
    Subscribers_M REAL,
    Annual_Churn REAL
);

-- 2️⃣ Insert Data (sample rows shown; full data should be inserted in real use)
INSERT INTO streaming_data (Company, Year, Revenue_B_USD, Subscribers_M, Annual_Churn) VALUES
    ('NFLX', 2018, 15.79, 139.3, 7.5),
    ('NFLX', 2019, 20.16, 167.1, 7.3),
    ('NFLX', 2020, 24.99, 203.7, 7.1),
    ('DIS', 2020, 2.80, 73.7, 43.5),
    ('AMZN', 2022, 14.60, 168.3, 6.7),
    ('WBD', 2023, 8.00, 95.8, 50.5),
    ('AAPL', 2024, 1.20, 45.0, 45.9);

-- (You can insert the full data programmatically or manually)

-- 3️⃣ Sample Queries

-- Total revenue per year
SELECT Year, SUM(Revenue_B_USD) AS Total_Revenue_B_USD
FROM streaming_data
GROUP BY Year
ORDER BY Year;

-- Average churn per platform
SELECT Company, ROUND(AVG(Annual_Churn), 2) AS Avg_Churn_Percent
FROM streaming_data
GROUP BY Company
ORDER BY Avg_Churn_Percent;

-- Top company by revenue per year
SELECT Company, Year, Revenue_B_USD
FROM (
    SELECT Company, Year, Revenue_B_USD,
           RANK() OVER (PARTITION BY Year ORDER BY Revenue_B_USD DESC) AS rank
    FROM streaming_data
)
WHERE rank = 1;

-- Group platforms by churn segments
SELECT Company, Year, Annual_Churn,
       CASE
           WHEN Annual_Churn < 10 THEN 'Low Churn'
           WHEN Annual_Churn BETWEEN 10 AND 30 THEN 'Moderate Churn'
           ELSE 'High Churn'
       END AS Churn_Segment
FROM streaming_data;

-- Filter data for Netflix
SELECT * FROM streaming_data
WHERE Company = 'NFLX'
ORDER BY Year;
