
-- Vliv HDP na ceny a mzdy --

SELECT
	tmh1.payroll_year,
	tmh1.gdp AS gdp_per_year,
	tmh1.avg_payroll_per_year AS avg_payroll_per_year,
	tmh1.avg_price_per_year AS avg_price_per_year,
	round((tmh2.gdp - tmh1.gdp)/tmh1.gdp,4) * 100 AS next_year_gdp_increase,
	round((tmh2.avg_payroll_per_year - tmh1.avg_payroll_per_year)/tmh1.avg_payroll_per_year,4) * 100 AS next_year_payroll_increase,
	round((tmh2.avg_price_per_year - tmh1.avg_price_per_year)/tmh1.avg_price_per_year,4) * 100 AS next_year_price_increase
FROM t_miloslav_houska_project_sql_primary_final tmh1 
JOIN t_miloslav_houska_project_sql_primary_final tmh2
   		ON tmh1.food_category = tmh2.food_category
   		AND tmh1.payroll_year = tmh2.payroll_year -1
GROUP BY tmh1.payroll_year
ORDER BY  tmh1.payroll_year;

