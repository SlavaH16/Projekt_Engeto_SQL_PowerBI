


CREATE TABLE t_miloslav_houska_project_sql_primary_final AS
    SELECT
    cp.payroll_year,
    cpib.name AS industry_branch_name,
    round(avg(cp.value),0) AS avg_payroll_per_year,
    cpwc.name_category AS food_category,
    round(avg(cpwc.value),2) AS avg_price_per_year,
    cpwc.price_value,
    cpwc.price_unit
    FROM czechia_payroll cp
    	JOIN czechia_payroll_industry_branch cpib 
    	ON cp.industry_branch_code = cpib.code
    	LEFT JOIN czechia_price_with_category cpwc 
    	ON cp.payroll_year = YEAR (cpwc.date_from)
    WHERE cp.value_type_code = '5958'
    GROUP BY cp.payroll_year, cp.industry_branch_code, cpwc.name_category
    ORDER BY cp.payroll_year, cpib.name, cpwc.name_category;
   
   
 
