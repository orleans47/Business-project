-- Cleansing the tables that are related to the products
-- NULL in the "Status" column is taken as an outdated product
SELECT  
	prod.ProductKey AS product_key,
	prod.ProductAlternateKey AS product_item_code,
	prod.EnglishProductName AS english_prod_name,
	prodsub.EnglishProductSubcategoryName AS sub_category,
	prodcat.EnglishProductCategoryName AS product_category,
	prod.color AS prod_color,
	prod.Size AS product_size,
	prod.ProductLine AS product_line,
	prod.ModelName AS model_name,
	prod.EnglishDescription AS english_description,
	ISNULL(prod.Status, 'outdated') AS product_status
    
FROM
	dbo.DimProduct AS prod
	LEFT JOIN dbo.DimProductSubcategory AS prodsub
	ON prod.ProductSubcategoryKey = prodsub.ProductSubcategoryKey
	LEFT JOIN dbo.DimProductCategory AS prodcat
	ON prodsub.ProductCategoryKey = prodcat.ProductCategoryKey

ORDER By prod.ProductKey;