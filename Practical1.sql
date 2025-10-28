---- Q1. Display all columns for all transactions.
SELECT
    *
FROM
    "PRACTICAL1"."RETAIL"."RETAIL_SALES_DATASET";
    
    ---- Q2. Display only the Transaction ID, Date, and Customer ID for all records
SELECT "TRANSACTION_ID", "DATE", "CUSTOMER_ID"
FROM "PRACTICAL1"."RETAIL"."RETAIL_SALES_DATASET";

---- Q3. Display all distinct product categories
SELECT DISTINCT Product_Category
FROM "PRACTICAL1"."RETAIL"."RETAIL_SALES_DATASET";

-- Q4: Display distinct gender values
SELECT DISTINCT 
Gender
FROM "PRACTICAL1"."RETAIL"."RETAIL_SALES_DATASET";

-- Q5: Transactions where Age > 40
SELECT *
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET
WHERE Age > 40;

---- Q5: Display all transactions where the Age is greater than 40.
SELECT *
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET
WHERE Price_per_Unit BETWEEN 100 AND 500;


--- Q6. Transactions where Price per Unit is between 100 and 500
SELECT *
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET
WHERE Price_per_Unit BETWEEN 100 AND 500;

----Q7. Transactions where Product Category is 'Beauty' or 'Electronics'
SELECT *
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET
WHERE Product_Category IN ('Beauty', 'Electronics');

---Q8. Transactions where Product Category is NOT 'Clothing'
SELECT *
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET
WHERE Product_Category <> 'Clothing';

---- Q9.Display all transactions where the Quantity is greater than or equal to 3.
SELECT *
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET
WHERE Quantity >= 3;

---Q10. Count total transactions
SELECT COUNT(*) AS Total_Transactions
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET;

--Q11. Find average Age of customers
SELECT AVG(Age) AS Average_Age
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET;

---Q12. Find the total quantity of products sold
SELECT SUM(Quantity) AS Total_Quantity
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET;

---Q13. Find the maximum Total Amount spent in a single transaction.
SELECT MAX(Total_Amount) AS Max_Total_Amount
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET;

---Q14. Find the minimum Price per Unit in the dataset.
SELECT MIN(Price_per_Unit) AS Min_Price_per_Unit
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET;

---Q15. Number of transactions per Product Category
SELECT Product_Category, COUNT(*) AS Transaction_Count
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET
GROUP BY Product_Category;

--Q16.Find the number of transactions per Product Category.
SELECT Product_Category, COUNT(*) AS Transaction_Count
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET
GROUP BY Product_Category;

---Q17. Find the average Price per Unit per product category.
SELECT Product_Category, COUNT(*) AS Transaction_Count
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET
GROUP BY Product_Category;

---Q18. Average quantity per Product Category where average > 2
SELECT Product_Category, AVG(Quantity) AS Average_Quantity
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET
GROUP BY Product_Category
HAVING AVG(Quantity) > 2;
SELECT Product_Category, SUM(Total_Amount) AS Total_Revenue
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET
GROUP BY Product_Category
HAVING SUM(Total_Amount) > 10000;

--Q19. Find the average quantity per product category where the average is more than 2.
SELECT Product_Category, AVG(Quantity) AS Average_Quantity
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET
GROUP BY Product_Category
HAVING AVG(Quantity) > 2;

---Q20.Display a column called Spending_Level that shows 'High' if Total Amount > 1000,
otherwise 'Low'.
SELECT Transaction_ID, Total_Amount,
       CASE
           WHEN Total_Amount > 1000 THEN 'High'
           ELSE 'Low'
       END AS Spending_Level
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET;

---Q21. Display a new column called Age_Group that labels customers as:
-- 'Youth' if Age < 30
--'Adult' if Age is between 30 and 59
--'Senior' if Age >= 60

SELECT Customer_ID, Age,
       CASE
           WHEN Age < 30 THEN 'Youth'
           WHEN Age BETWEEN 30 AND 59 THEN 'Adult'
           ELSE 'Senior'
       END AS Age_Group
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET;
