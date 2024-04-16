--- CLEANSED DIM_Products TABLE ---

SELECT
  p.[ProductKey]
 ,p.[ProductAlternateKey] As ProductItemCode
 --		,[ProductSubcategoryKey]
 --     ,[WeightUnitMeasureCode]
 --     ,[SizeUnitMeasureCode]
 ,p.[EnglishProductName] As [Product Name]
 ,ps.EnglishProductSubcategoryName As [Sub Category]  -- Joined in from Sub Category Table
 ,pc.EnglishProductCategoryName As [Product Category] -- Joined in from Category Table
 --     ,[SpanishProductName]
 --     ,[FrenchProductName]
 --     ,[StandardCost]
 --     ,[FinishedGoodsFlag]
 ,p.[Color] As [Product Color]
 --     ,[SafetyStockLevel]
 --     ,[ReorderPoint]
 --     ,[ListPrice]
 ,p.[Size] As [Product Size]
 --     ,[SizeRange]
 --     ,[Weight]
 --     ,[DaysToManufacture]
 ,p.[ProductLine] As [Product Line]
 --     ,[DealerPrice]
 --     ,[Class]
 --     ,[Style]
 ,p.[ModelName] As [Product Model Name]
 --     ,[LargePhoto]
 ,p.[EnglishDescription] As [Product Description]
 --     ,[FrenchDescription]
 --     ,[ChineseDescription]
 --     ,[ArabicDescription]
 --     ,[HebrewDescription]
 --     ,[ThaiDescription]
 --     ,[GermanDescription]
 --     ,[JapaneseDescription]
 --     ,[TurkishDescription]
 --     ,[StartDate]
 --     ,[EndDate]
 ,ISNULL (p.[Status], 'Outdated') As [Product Status]
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] As p
  LEFT JOIN [AdventureWorksDW2019].[dbo].DimProductSubcategory As ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
  LEFT JOIN [AdventureWorksDW2019].[dbo].DimProductCategory As pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
ORDER BY
  p.ProductKey ASC
