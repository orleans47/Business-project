-- Cleansed DimCustomer table
SELECT 
  cust.customerkey AS custom_key, 
  cust.firstname AS first_name, 
  cust.lastname AS last_name, 
  cust.firstname + ' ' + LastName AS full_name, 
  CASE 
  WHEN cust.gender = 'M' THEN 'Male' 
  WHEN cust.gender = 'F' THEN 'Female'
  END AS Gender, 
  cust.gender AS test, 
  cust.datefirstpurchase AS DateFirstPurchase, 
  geo.city AS [Customer City] -- join in customer city from Geography table
FROM 
  AdventureWorksDW2019.dbo.DimCustomer AS cust 
  LEFT JOIN AdventureWorksDW2019.dbo.DimGeography AS geo ON geo.geographykey = cust.geographykey 
ORDER BY 
  CustomerKey ASC;
