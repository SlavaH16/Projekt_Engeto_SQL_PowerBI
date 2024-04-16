
-- Počty kg chleba a litrů mléka, které je možné koupit za první a poslední porovnatelné období --

SELECT
	payroll_year ,
	food_category,
	round(avg(avg_payroll_per_year),0) AS all_industry_avg_payroll,
	avg_price_per_year,
	round(avg(avg_payroll_per_year)/avg_price_per_year,0) AS count_pieces_of_food_category
FROM t_miloslav_houska_project_sql_primary_final tmhpspf 
WHERE payroll_year IN ('2006','2018') AND food_category IN('Mléko polotučné pasterované', 'Chléb konzumní kmínový')
GROUP BY payroll_year, food_category
ORDER BY food_category, payroll_year ;



-- Detail, dle kategorií --

SELECT
	payroll_year,
	industry_branch_name,
	food_category,
	avg_payroll_per_year,
	avg_price_per_year,
	round(avg_payroll_per_year/avg_price_per_year,0) AS count_pieces_of_food_category
FROM t_miloslav_houska_project_sql_primary_final tmhpspf 
WHERE payroll_year IN ('2006','2018') AND food_category IN('Mléko polotučné pasterované', 'Chléb konzumní kmínový')
GROUP BY payroll_year, industry_branch_name, food_category
ORDER BY industry_branch_name, payroll_year, food_category ;
 
