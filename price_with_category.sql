


CREATE TABLE czechia_price_with_category 
SELECT
	cp.value,
	cp.date_from,
	cp.date_to,
	cpc.name,
	cpc.price_value,
	cpc.price_unit
FROM czechia_price cp 
	JOIN czechia_price_category cpc 
	ON cp.category_code = cpc.code
	
