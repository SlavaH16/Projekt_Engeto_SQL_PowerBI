
SELECT 
	`year`,
	country,
	gdp,
	gini,
	population 
FROM economies e
WHERE country IN ('Albania','Latvia','Andorra','Liechtenstein','Armenia','Lithuania','Austria','Luxembourg','Azerbaijan','Malta','Belarus','Moldova','Belgium','Monaco','Bosnia and Herzegovina','Montenegro','Bulgaria','Netherlands','Croatia','Norway','Cyprus','Poland','Czech Republic','Portugal','Denmark','Romania','Estonia','Russia','Finland','San Marino','Former Yugoslav Republic of Macedonia','Serbia','France','Slovakia','Georgia','Slovenia','Germany','Spain','Greece','Sweden','Hungary','Sweden','Iceland','Switzerland','Ireland','Turkey','Italy','Ukraine','Kosovo','United Kingdom'
) AND `year` IN ('2006','2007','2008','2009','2010','2011','2012','2013','2014','2015','2016','2017','2018')
ORDER BY country, `year`;