-- =============================================================================
--                        Bike Buyers Data Cleaning
-- This script contains queries to find and remove duplicate records from the
-- bike_buyers table, ensuring data integrity before analysis.
-- =============================================================================

USE [bike_sales DB];
GO

-- =============================================================================
-- DATA CLEANING: DUPLICATE RECORDS
-- =============================================================================

-- Query 1: Find and Display All Duplicate Records
-- This query uses a Common Table Expression (CTE) to identify rows that are
-- perfect duplicates across all columns except for the ID.
WITH DuplicateCheck AS (
    SELECT
        *,
        COUNT(*) OVER (
            PARTITION BY
                Marital_Status, Gender, Income, Children, Education,
                Occupation, Home_Owner, Cars, Commute_Distance, Region,
                Age, Purchased_Bike
        ) AS duplicate_count
    FROM
        bike_buyers
)
SELECT *
FROM DuplicateCheck
WHERE duplicate_count > 1
ORDER BY Income, Age, ID;
GO


-- Query 2: Delete Duplicate Records
-- This query deletes all duplicate records, keeping only the instance with the
-- lowest ID for each set of duplicates.
WITH NumberedRows AS (
    SELECT
        *,
        ROW_NUMBER() OVER (
            PARTITION BY
                Marital_Status, Gender, Income, Children, Education,
                Occupation, Home_Owner, Cars, Commute_Distance, Region,
                Age, Purchased_Bike
            ORDER BY
                ID ASC
        ) AS rn
    FROM
        bike_buyers
)
DELETE FROM NumberedRows
WHERE rn > 1;
GO
