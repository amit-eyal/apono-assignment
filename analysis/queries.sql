-- Product Analyst Home Assignment - SQL Queries
-- Amit Eyal

-- 0) Check for duplicate customers by CustomerID
  SELECT 
      CustomerID, COUNT(*)
  FROM customers
  GROUP BY CustomerID
  HAVING COUNT(*) > 1;

-- 1) Feature Renewals - Select Enterprise Customers Only
  SELECT
    * 
  FROM customers 
  WHERE(customers.AccountType= "Enterprise");

-- 2) Adoption Improvement - Select Mid-Market Customers Only
  SELECT
    * 
  FROM customers 
  WHERE(customers.AccountType= "Mid-Market");

-- 3) Support Tickets - Sum ticket breakdown by category
  SELECT 
    SUM("Access Delays")         AS sum_Access_Delays, 
    SUM("Compliance Questions")  AS sum_Compliance_Questions,
    SUM("Integration Issues")    AS sum_Integration_Issues,
    SUM(Other)                   As sum_Other
  FROM customers;
