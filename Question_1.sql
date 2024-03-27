
  
  
SELECT 
   tmh.name AS 'industry_branch',
   round(tmh.avg_per_year,0) AS 'avg_payroll_2000',
   round(tmh2.avg_per_year,0) AS 'avg_payroll_2005',
   round(tmh3.avg_per_year,0) AS 'avg_payroll_2010',
   round(tmh4.avg_per_year,0) AS 'avg_payroll_2015',
   round(tmh5.avg_per_year,0) AS 'avg_payroll_2020'
FROM t_miloslav_houska_project_sql_primary_final tmh
  	JOIN t_miloslav_houska_project_sql_primary_final tmh2
   		ON tmh.name = tmh2.name 
   		AND tmh.payroll_year = tmh2.payroll_year - 5
 	JOIN t_miloslav_houska_project_sql_primary_final tmh3
   		ON tmh.name = tmh3.name 
   		AND tmh.payroll_year = tmh3.payroll_year - 10
   	JOIN t_miloslav_houska_project_sql_primary_final tmh4
   		ON tmh.name = tmh4.name 
   		AND tmh.payroll_year = tmh4.payroll_year - 15
   	JOIN t_miloslav_houska_project_sql_primary_final tmh5
   		ON tmh.name = tmh5.name 
   		AND tmh.payroll_year = tmh5.payroll_year - 20
WHERE tmh.payroll_year = '2000';
  
   