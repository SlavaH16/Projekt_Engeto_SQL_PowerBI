
/*
 * Porovnání průměrných mezd, dle jednotlivých období,
 * pro porovnání a přehlednost použit cyklus porovnání mezd po 5-ti letech, 
 * poslední období protaženo do konce dat tedy do roku 2021
 */ 

SELECT 
   tmh.industry_branch_name,
   round(tmh.avg_payroll_per_year,0) AS 'avg_payroll_2000',
   round(tmh2.avg_payroll_per_year,0) AS 'avg_payroll_2005',
   round(tmh3.avg_payroll_per_year,0) AS 'avg_payroll_2010',
   round(tmh4.avg_payroll_per_year,0) AS 'avg_payroll_2015',
   round(tmh5.avg_payroll_per_year,0) AS 'avg_payroll_2021'
FROM t_miloslav_houska_project_sql_primary_final tmh
  	JOIN t_miloslav_houska_project_sql_primary_final tmh2
   		ON tmh.industry_branch_name = tmh2.industry_branch_name 
   		AND tmh.payroll_year = tmh2.payroll_year - 5
 	JOIN t_miloslav_houska_project_sql_primary_final tmh3
   		ON tmh.industry_branch_name = tmh3.industry_branch_name 
   		AND tmh.payroll_year = tmh3.payroll_year - 10
   	JOIN t_miloslav_houska_project_sql_primary_final tmh4
   		ON tmh.industry_branch_name = tmh4.industry_branch_name 
   		AND tmh.payroll_year = tmh4.payroll_year - 15
   	JOIN t_miloslav_houska_project_sql_primary_final tmh5
   		ON tmh.industry_branch_name = tmh5.industry_branch_name 
   		AND tmh.payroll_year = tmh5.payroll_year - 21
WHERE tmh.payroll_year = '2000';
  

-- Výčet meziročních poklesů průměrných mezd v jednotlivých odvětvích --

SELECT 
   tmh.industry_branch_name,
   tmh.payroll_year,
   tmh2.payroll_year AS 'payroll_next_year',
   round(tmh.avg_payroll_per_year,0) AS 'avg_payroll',
   round(tmh2.avg_payroll_per_year,0) AS 'avg_payroll_next_year',
   CASE 
   	WHEN tmh.avg_payroll_per_year < tmh2.avg_payroll_per_year THEN 'up'
   	ELSE 'down' 
   END AS y_on_y_comparisons
 FROM t_miloslav_houska_project_sql_primary_final tmh
  	JOIN t_miloslav_houska_project_sql_primary_final tmh2
   		ON tmh.industry_branch_name = tmh2.industry_branch_name 
   		AND tmh.payroll_year = tmh2.payroll_year - 1
 ORDER BY y_on_y_comparisons,industry_branch_name  
 LIMIT 30;