-- Cleansed dim_date_table --
SELECT 
	[DateKey],
    [FullDateAlternateKey] AS dates,
    [EnglishDayNameOfWeek] AS days,
    [WeekNumberOfYear] AS week_numb_year,
    [EnglishMonthName] AS months,
    [MonthNumberOfYear] AS month_no,
    [CalendarQuarter] AS quarters,
    [CalendarYear] AS years
      

  FROM [AdventureWorksDW2019].[dbo].[DimDate]

  WHERE CalendarYear >= 2019