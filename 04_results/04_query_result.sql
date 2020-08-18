--get correlation coefficient of country happiness index by cost of living index grouped by years
--correlation coefficient range between 0.622-0.725 
-- there is a moderate correlation between country happiness index and cost of living index
SELECT coli.year AS "year", 
	round(corr(happiness.happyscore,coli.costofliving_index)::numeric,3) AS "correlation coefficient"
FROM happiness
INNER JOIN coli
	ON coli.countrycode=happiness.countrycode
	AND coli.year=happiness.year
GROUP BY coli.year
ORDER BY coli.year;