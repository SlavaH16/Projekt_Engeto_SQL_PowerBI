


CREATE TABLE t_miloslav_houska_project_sql_primary_final AS
    SELECT
    cpib.name AS industry_branch_name,
    cp.payroll_year,
    round(avg(cp.value),0) AS avg_payroll_per_year
    FROM czechia_payroll cp
    	JOIN czechia_payroll_industry_branch cpib 
    	ON cp.industry_branch_code = cpib.code 
    WHERE value_type_code = '5958'
    GROUP BY payroll_year, name
    ORDER BY name, payroll_year;
    
   
