-- =============================================================================
--                        Bike Buyers Data Analysis
-- This script contains all T-SQL queries used for the exploratory data analysis.
-- =============================================================================

USE [bike_sales DB];
GO

-- =============================================================================
-- 1. DEMOGRAPHIC ANALYSIS
-- Analyzing customer data based on gender, marital status, and age.
-- =============================================================================

-- Query 1.1: Purchase Rate by Gender and Marital Status
SELECT
    Gender,
    Marital_Status,
    COUNT(ID) AS Total_Customers,
    SUM(CASE WHEN Purchased_Bike = 1 THEN 1 ELSE 0 END) AS Buyers_Count,
    CAST(AVG(CAST(Purchased_Bike AS FLOAT)) * 100 AS DECIMAL(5, 2)) AS Purchase_Rate_Percent
FROM
    bike_buyers
GROUP BY
    Gender,
    Marital_Status
ORDER BY
    Purchase_Rate_Percent DESC;
GO

-- Query 1.2: Purchase Rate by Age Brackets
-- This query was missing from your list.
SELECT
    CASE
        WHEN Age < 30 THEN 'Under 30'
        WHEN Age BETWEEN 30 AND 40 THEN '30-40'
        WHEN Age BETWEEN 41 AND 55 THEN '41-55'
        ELSE 'Over 55'
    END AS Age_Bracket,
    COUNT(ID) AS Total_Customers,
    SUM(CASE WHEN Purchased_Bike = 1 THEN 1 ELSE 0 END) AS Buyers_Count,
    CAST(AVG(CAST(Purchased_Bike AS FLOAT)) * 100 AS DECIMAL(5, 2)) AS Purchase_Rate_Percent
FROM
    bike_buyers
GROUP BY
    CASE
        WHEN Age < 30 THEN 'Under 30'
        WHEN Age BETWEEN 30 AND 40 THEN '30-40'
        WHEN Age BETWEEN 41 AND 55 THEN '41-55'
        ELSE 'Over 55'
    END
ORDER BY
    Age_Bracket;
GO


-- =============================================================================
-- 2. SOCIOECONOMIC ANALYSIS
-- Analyzing the impact of income, education, and occupation.
-- =============================================================================

-- Query 2.1: Purchase Rate by Education Level
SELECT
    Education,
    COUNT(ID) AS Total_Customers,
    SUM(CASE WHEN Purchased_Bike = 1 THEN 1 ELSE 0 END) AS Buyers_Count,
    CAST(AVG(CAST(Purchased_Bike AS FLOAT)) * 100 AS DECIMAL(5, 2)) AS Purchase_Rate_Percent
FROM
    bike_buyers
GROUP BY
    Education
ORDER BY
    Purchase_Rate_Percent DESC;
GO

-- Query 2.2: Purchase Rate by Occupation
SELECT
    Occupation,
    COUNT(ID) AS Total_Customers,
    SUM(CASE WHEN Purchased_Bike = 1 THEN 1 ELSE 0 END) AS Buyers_Count,
    CAST(AVG(CAST(Purchased_Bike AS FLOAT)) * 100 AS DECIMAL(5, 2)) AS Purchase_Rate_Percent
FROM
    bike_buyers
GROUP BY
    Occupation
ORDER BY
    Purchase_Rate_Percent DESC;
GO

-- Query 2.3: Purchase Rate by Income Brackets
SELECT
    CASE
        WHEN Income < 40000 THEN 'Low (Under $40k)'
        WHEN Income BETWEEN 40000 AND 60000 THEN 'Medium ($40k-$60k)'
        WHEN Income BETWEEN 60001 AND 80000 THEN 'Upper-Medium ($60k-$80k)'
        ELSE 'High (Over $80k)'
    END AS Income_Bracket,
    COUNT(ID) AS Total_Customers,
    SUM(CASE WHEN Purchased_Bike = 1 THEN 1 ELSE 0 END) AS Buyers_Count,
    CAST(AVG(CAST(Purchased_Bike AS FLOAT)) * 100 AS DECIMAL(5, 2)) AS Purchase_Rate_Percent
FROM
    bike_buyers
GROUP BY
    CASE
        WHEN Income < 40000 THEN 'Low (Under $40k)'
        WHEN Income BETWEEN 40000 AND 60000 THEN 'Medium ($40k-$60k)'
        WHEN Income BETWEEN 60001 AND 80000 THEN 'Upper-Medium ($60k-$80k)'
        ELSE 'High (Over $80k)'
    END
ORDER BY
    Purchase_Rate_Percent DESC;
GO


-- =============================================================================
-- 3. LIFESTYLE ANALYSIS
-- Analyzing factors like children, cars, and home ownership.
-- =============================================================================

-- Query 3.1: Purchase Rate by Number of Children
SELECT
    Children,
    COUNT(ID) AS Total_Customers,
    SUM(CASE WHEN Purchased_Bike = 1 THEN 1 ELSE 0 END) AS Buyers_Count,
    CAST(AVG(CAST(Purchased_Bike AS FLOAT)) * 100 AS DECIMAL(5, 2)) AS Purchase_Rate_Percent
FROM
    bike_buyers
GROUP BY
    Children
ORDER BY
    Children ASC;
GO

-- Query 3.2: Purchase Rate by Number of Cars Owned
SELECT
    Cars,
    COUNT(ID) AS Total_Customers,
    SUM(CASE WHEN Purchased_Bike = 1 THEN 1 ELSE 0 END) AS Buyers_Count,
    CAST(AVG(CAST(Purchased_Bike AS FLOAT)) * 100 AS DECIMAL(5, 2)) AS Purchase_Rate_Percent
FROM
    bike_buyers
GROUP BY
    Cars
ORDER BY
    Cars ASC;
GO

-- Query 3.3: Purchase Rate by Home Ownership
SELECT
    CASE
        WHEN Home_Owner = 1 THEN 'Home Owner'
        ELSE 'Renter'
    END AS Home_Owner_Status,
    COUNT(ID) AS Total_Customers,
    SUM(CASE WHEN Purchased_Bike = 1 THEN 1 ELSE 0 END) AS Buyers_Count,
    CAST(AVG(CAST(Purchased_Bike AS FLOAT)) * 100 AS DECIMAL(5, 2)) AS Purchase_Rate_Percent
FROM
    bike_buyers
GROUP BY
    Home_Owner
ORDER BY
    Purchase_Rate_Percent DESC;
GO


-- =============================================================================
-- 4. HYPOTHESIS TESTING QUERIES
-- Specific queries used to validate or disprove hypotheses during analysis.
-- =============================================================================

-- Query 4.1: Average Age by Education and Purchase Status
-- Used to test if "more educated buyers are simply older".
SELECT
    Education,
    CASE
        WHEN Purchased_Bike = 1 THEN 'Buyer'
        ELSE 'Non-Buyer'
    END AS Customer_Type,
    COUNT(ID) AS Customer_Count,
    AVG(Age) AS Average_Age
FROM
    bike_buyers
GROUP BY
    Education,
    Purchased_Bike
ORDER BY
    Education,
    Customer_Type;
GO
