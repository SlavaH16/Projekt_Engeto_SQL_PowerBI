
-- Meziroční nárůsty/poklesy ve sledovaném období 2006-2018, dle druhu potravin --

SELECT
	tmh1.food_category,
	round( avg( tmh1.avg_price_per_year),2) AS avg_price_first_year,
	round( avg( tmh2.avg_price_per_year),2) AS avg_price_next_year,
	round((AVG( tmh2.avg_price_per_year) - AVG( tmh1.avg_price_per_year))/AVG( tmh1.avg_price_per_year),4)*100 AS year_increase
FROM t_miloslav_houska_project_sql_primary_final tmh1 
JOIN t_miloslav_houska_project_sql_primary_final tmh2
   		ON tmh1.food_category = tmh2.food_category  
   		AND tmh1.payroll_year = tmh2.payroll_year - 1
WHERE tmh1.food_category IS NOT NULL 
GROUP BY tmh1.food_category
ORDER BY year_increase ;


SELECT DISTINCT 
	tmh1.payroll_year,
	tmh1.food_category,
	tmh1.avg_price_per_year AS avg_price_first_year,
	tmh2.avg_price_per_year AS avg_price_next_year,
	round((tmh2.avg_price_per_year - tmh1.avg_price_per_year)/tmh1.avg_price_per_year,4)*100 AS year_increase
FROM t_miloslav_houska_project_sql_primary_final tmh1 
JOIN t_miloslav_houska_project_sql_primary_final tmh2
   		ON tmh1.food_category = tmh2.food_category  
   		AND tmh1.payroll_year = tmh2.payroll_year - 1
WHERE tmh1.food_category IS NOT NULL 
ORDER BY food_category, payroll_year ;

