# Repozirat k  SQL projektu

# Organizace repozit��e

V repozit��i ulo�en soubor Pruvodni_listina.pdf, kter� obsahuje textov� odpov�di na jednotliv� ot�zky ze zad�n� projektu.

Podkladov� skripty pro odpov�di na ot�zky ulo�eny jako Question_1-5.sql

Z�kladem pro tvorbu odpov�d� jsou podkladov� tabulky jejich� skripty jsou ulo�eny pod n�zvy Script_table1.sql a Script_table2.sql

D�le ulo�eny skripty k nov� vytvo�en�m doprovodn�m tabulk�m projektu a to price_with_category.sql a czechia_gdp.sql

# Chyb�j�c� data a dopl�uj�c� informace

P�i zpracov�n� projektu detekov�ny chyb�j�c� data v prim�rn�ch tabulk�ch, kter� slou�ily jako podklad pro tvorbu v�choz�ch tabulek k projektu, up�esn�n� pou�it�ch dat uv�d�me n�e:

- p�i v�po�tu pr�m�rn�ch mezd, pracov�no jak s hodnotami pro fyzick� osoby, tak s hodnotami o pr�m�rn�ch mzd�ch pro pln� �vazky

- v prim�rn� tabulce nebyla specifikov�na v�echna odv�tv� k pr�m�rn�m mzd�m, tedy tabulka obsahovala nulov� data ve sloupci odv�tv�, tud� tyto data nebyla zahrnuta do v�choz� tabulky k projektu

- v prim�rn�ch tabulk�ch byl detekov�n jin� rozsah obdob� u pr�m�rn�ch mezd a cen, kdy pr�zkum cen potravin byl krat��, ne� pr�zkum pr�m�rn�ch mezd, tud� v�choz� tabulka k projektu obsahuje nulov� data k cen�m potravin za roky 2000 - 2005 a 2019 - 2021. 

- by� data za roky 2000 - 2005 a 2019 - 2021 o pr�m�rn�ch mzd�ch nelze porovn�vat s cenami potravin, p�esto byly zahrnuty do v�choz� tabulky, nebo� slou�ily jako podklad pro prvn� ot�zku projektu a bylo mo�n� pou��t pro srovn�n� del�� �asovou �adu

- informace o cen�ch druhu potravin - Jakostn� v�no b�l�, byly poskytnuty pouze za 3 roky, tud� tento druh potravin byl vyjmut z porovn�n� v ot�zce 3, nebo� by v�sledky porovn�n� nebyly validn�