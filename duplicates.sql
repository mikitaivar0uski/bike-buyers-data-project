-- Finds and displays all duplicate records from the 'bike_buyers' table.
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
ORDER BY ID;

-- Deletes duplicate records from 'bike_buyers', keeping the one with the lowest ID.
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