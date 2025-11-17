Q1 — Display all columns for all transactions
SELECT * 
FROM "PRACTICAL1"."RETAIL"."RETAIL_SALES_DATASET";

Q2 — Show Transaction ID, Date, and Customer ID
SELECT "TRANSACTION_ID", "DATE", "CUSTOMER_ID"
FROM "PRACTICAL1"."RETAIL"."RETAIL_SALES_DATASET";

Q3 — Distinct Product Categories
SELECT DISTINCT Product_Category
FROM "PRACTICAL1"."RETAIL"."RETAIL_SALES_DATASET";

Q4 — Distinct Gender Values
SELECT DISTINCT Gender
FROM "PRACTICAL1"."RETAIL"."RETAIL_SALES_DATASET";

Q5 — Transactions where Age > 40
SELECT *
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET
WHERE Age > 40;

Q6 — Transactions where Price per Unit is between 100 and 500
SELECT *
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET
WHERE Price_per_Unit BETWEEN 100 AND 500;

Q7 — Product Category is ‘Beauty’ or ‘Electronics’
SELECT *
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET
WHERE Product_Category IN ('Beauty', 'Electronics');

Q8 — Product Category is NOT ‘Clothing’
SELECT *
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET
WHERE Product_Category <> 'Clothing';

Q9 — Quantity ≥ 3
SELECT *
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET
WHERE Quantity >= 3;

Q10 — Count Total Transactions
SELECT COUNT(*) AS Total_Transactions
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET;

Q11 — Average Age of Customers
SELECT AVG(Age) AS Average_Age
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET;

Q12 — Total Quantity Sold
SELECT SUM(Quantity) AS Total_Quantity
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET;

Q13 — Maximum Total Amount in a Transaction
SELECT MAX(Total_Amount) AS Max_Total_Amount
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET;

Q14 — Minimum Price per Unit
SELECT MIN(Price_per_Unit) AS Min_Price_per_Unit
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET;

Q15 — Number of Transactions per Product Category
SELECT Product_Category, COUNT(*) AS Transaction_Count
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET
GROUP BY Product_Category;

Q17 — Average Price per Unit per Product Category
SELECT Product_Category, AVG(Price_per_Unit) AS Avg_Price
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET
GROUP BY Product_Category;

Q18 — Average Quantity per Category where Average > 2
SELECT Product_Category, AVG(Quantity) AS Average_Quantity
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET
GROUP BY Product_Category
HAVING AVG(Quantity) > 2;

Q19 — Total Revenue per Category where Revenue > 10000
SELECT Product_Category, SUM(Total_Amount) AS Total_Revenue
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET
GROUP BY Product_Category
HAVING SUM(Total_Amount) > 10000;

Q20 — Spending Level (High/Low)
SELECT Transaction_ID, Total_Amount,
       CASE
           WHEN Total_Amount > 1000 THEN 'High'
           ELSE 'Low'
       END AS Spending_Level
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET;

Q21 — Age Group Classification
SELECT Customer_ID, Age,
       CASE
           WHEN Age < 30 THEN 'Youth'
           WHEN Age BETWEEN 30 AND 59 THEN 'Adult'
           ELSE 'Senior'
       END AS Age_Group
FROM PRACTICAL1.RETAIL.RETAIL_SALES_DATASET;
