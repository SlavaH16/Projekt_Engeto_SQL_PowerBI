# Repozirat k  SQL projektu

# Organizace repozitáře
Prvotně uložen souboru k POWER BI projektu, veškerý následující obsah repozitáře se vztahuje k projektu SQL, viz. níže.
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
V repozitáři uložen soubor Pruvodni_listina.pdf, který obsahuje textové odpovědi na jednotlivé otázky ze zadání projektu.

Podkladové skripty pro odpovědi na otázky uloženy jako Question_1-5.sql

Základem pro tvorbu odpovědí jsou podkladové tabulky jejichž skripty jsou uloženy pod názvy Script_table1.sql a Script_table2.sql

Dále uloženy skripty k nově vytvořeným doprovodným tabulkám projektu a to price_with_category.sql a czechia_gdp.sql

# Chybějící data a doplňující informace

Při zpracování projektu detekovány chybějící data v primárních tabulkách, které sloužily jako podklad pro tvorbu výchozích tabulek k projektu, upřesnění použitých dat uvádíme níže:

- při výpočtu průměrných mezd, pracováno jak s hodnotami pro fyzické osoby, tak s hodnotami o průměrných mzdách pro plné úvazky

- v primární tabulce nebyla specifikována všechna odvětví k průměrným mzdám, tedy tabulka obsahovala nulová data ve sloupci odvětví, tudíž tyto data nebyla zahrnuta do výchozí tabulky k projektu

- v primárních tabulkách byl detekován jiný rozsah období u průměrných mezd a cen, kdy průzkum cen potravin byl kratší, než průzkum průměrných mezd, tudíž výchozí tabulka k projektu obsahuje nulová data k cenám potravin za roky 2000 - 2005 a 2019 - 2021. 

- byť data za roky 2000 - 2005 a 2019 - 2021 o průměrných mzdách nelze porovnávat s cenami potravin, přesto byly zahrnuty do výchozí tabulky, neboť sloužily jako podklad pro první otázku projektu a bylo možné použít pro srovnání delší časovou řadu

- informace o cenách druhu potravin - Jakostní víno bílé, byly poskytnuty pouze za 3 roky, tudíž tento druh potravin byl vyjmut z porovnání v otázce 3, neboť by výsledky porovnání nebyly validní
