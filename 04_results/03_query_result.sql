--get average happiness score, cost of living index, and property affordability index
--across continents and years
SELECT
	country.continent as "continent",
	happiness.year as "year",
	round(avg(happiness.happyscore),3) as "happiness score",
	round(avg(coli.costofliving_index),3) as "cost of living index",
	round(avg(property.affordability_index),3) as "property affordabilty index"
FROM happiness
INNER JOIN coli 
	on happiness.countrycode=coli.countrycode
	and happiness.year=coli.year
INNER JOIN property
	on happiness.countrycode=property.countrycode
	and happiness.year=property.year
INNER JOIN country
	on happiness.countrycode=country.countrycode
GROUP BY country.continent, happiness.year
ORDER BY country.continent, happiness.year;
