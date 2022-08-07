-- Internet sales cleansed table
SELECT 
  [ProductKey]
  ,[OrderDateKey]
  ,[DueDateKey]
  ,[ShipDateKey]
  ,[CustomerKey]
  ,[SalesOrderNumber]
  ,[SalesAmount]

FROM 
  [AdventureWorksDW2019].[dbo].[FactInternetSales]

 WHERE
	LEFT(OrderDateKey, 4) >= YEAR(GETDATE() )-2 -- It ensures that the data corresponds to the time span of 2 years

ORDER BY 
	OrderDateKey ASC;



