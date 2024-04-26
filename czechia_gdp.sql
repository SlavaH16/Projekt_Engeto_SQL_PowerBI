

CREATE TABLE czechia_gdp AS
SELECT 
	e.country,
	e.`year`,
	e.GDP ,
	e.population, 
	round (e.GDP/e.population,0) AS GDP_per_resident
FROM economies e
WHERE country = 'Czech Republic' AND e.GDP IS NOT NULL 
ORDER BY `year` ;


