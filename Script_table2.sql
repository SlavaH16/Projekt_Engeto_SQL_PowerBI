
CREATE TABLE t_miloslav_houska_project_SQL_secondary_final AS 
SELECT 
	`year`,
	country,
	gdp,
	gini,
	population,
	round(gdp/population) AS gdp_per_resident
FROM economies e
WHERE country IN ('Albania','Latvia','Andorra','Liechtenstein','Armenia','Lithuania','Austria','Luxembourg','Azerbaijan','Malta','Belarus','Moldova','Belgium','Monaco','Bosnia and Herzegovina','Montenegro','Bulgaria','Netherlands','Croatia','Norway','Cyprus','Poland','Czech Republic','Portugal','Denmark','Romania','Estonia','Russian Federation','Finland','San Marino','North Macedonia','Serbia','France','Slovakia','Georgia','Slovenia','Germany','Spain','Greece','Sweden','Hungary','Sweden','Iceland','Switzerland','Ireland','Turkey','Italy','Ukraine','Kosovo','United Kingdom'
) AND `year` IN ('2000','2001','2002','2003','2004','2005','2006','2007','2008','2009','2010','2011','2012','2013','2014','2015','2016','2017','2018','2019','2020','2021')
ORDER BY country, `year`;