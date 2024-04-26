# Repozirat k  SQL projektu

# Organizace repozitáøe

V repozitáøi uloen soubor Pruvodni_listina.pdf, kterı obsahuje textové odpovìdi na jednotlivé otázky ze zadání projektu.

Podkladové skripty pro odpovìdi na otázky uloeny jako Question_1-5.sql

Základem pro tvorbu odpovìdí jsou podkladové tabulky jejich skripty jsou uloeny pod názvy Script_table1.sql a Script_table2.sql

Dále uloeny skripty k novì vytvoøenım doprovodnım tabulkám projektu a to price_with_category.sql a czechia_gdp.sql

# Chybìjící data a doplòující informace

Pøi zpracování projektu detekovány chybìjící data v primárních tabulkách, které slouily jako podklad pro tvorbu vıchozích tabulek k projektu, upøesnìní pouitıch dat uvádíme níe:

- pøi vıpoètu prùmìrnıch mezd, pracováno jak s hodnotami pro fyzické osoby, tak s hodnotami o prùmìrnıch mzdách pro plné úvazky

- v primární tabulce nebyla specifikována všechna odvìtví k prùmìrnım mzdám, tedy tabulka obsahovala nulová data ve sloupci odvìtví, tudí tyto data nebyla zahrnuta do vıchozí tabulky k projektu

- v primárních tabulkách byl detekován jinı rozsah období u prùmìrnıch mezd a cen, kdy prùzkum cen potravin byl kratší, ne prùzkum prùmìrnıch mezd, tudí vıchozí tabulka k projektu obsahuje nulová data k cenám potravin za roky 2000 - 2005 a 2019 - 2021. 

- by data za roky 2000 - 2005 a 2019 - 2021 o prùmìrnıch mzdách nelze porovnávat s cenami potravin, pøesto byly zahrnuty do vıchozí tabulky, nebo slouily jako podklad pro první otázku projektu a bylo moné pouít pro srovnání delší èasovou øadu

- informace o cenách druhu potravin - Jakostní víno bílé, byly poskytnuty pouze za 3 roky, tudí tento druh potravin byl vyjmut z porovnání v otázce 3, nebo by vısledky porovnání nebyly validní