--- CLEANSED DIM_Customer TABLE ---
SELECT
 c.[CustomerKey] As CustomerKey
 ---     ,[GeographyKey]
 ---     ,[CustomerAlternateKey]
 ---     ,[Title]
 ,c.[FirstName] As [First Name]
 ---     ,[MiddleName]
 ,c.[LastName] As [Last Name]
 ,c.FirstName + ' '+ LastName As [Full Name]
 ---     ,[NameStyle]
 ---     ,[BirthDate]
 ---     ,[MaritalStatus]
 ---     ,[Suffix]
 ,CASE c.[Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END As Gender
 ---     ,[EmailAddress]
 ---     ,[YearlyIncome]
 ---     ,[TotalChildren]
 ---     ,[NumberChildrenAtHome]
 ---     ,[EnglishEducation]
 ---     ,[SpanishEducation]
 ---     ,[FrenchEducation]
 ---     ,[EnglishOccupation]
 ---     ,[SpanishOccupation]
 ---     ,[FrenchOccupation]
 ---     ,[HouseOwnerFlag]
 ---     ,[NumberCarsOwned]
 ---     ,[AddressLine1]
 ---     ,[AddressLine2]
 ---     ,[Phone]
 ,c.[DateFirstPurchase] As DateFirstPurchase
 ---     ,[CommuteDistance]
,g.City As [Customer City]  --- Joined in Customer City from geography Table
FROM [AdventureWorksDW2019].[dbo].[DimCustomer] As c
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimGeography] As g ON g.GeographyKey = c.GeographyKey
ORDER BY
  CustomerKey ASC --- Ordered List by CustomerKey
