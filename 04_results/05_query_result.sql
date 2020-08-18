--get correlation coefficient between 
--GDP from the happiness report and local purchasing power,
--happiness index and local purchasing power, 
-- grouped by years
--correlation coefficient of GDP to local purchasing power range between 0.748-0.807
--correlation coefficient of happiness index to local purchasing power range between 0.670-0.713
SELECT
	coli.year,
	count(happiness.economy) AS "number of entries",
	round(corr(happiness.economy,coli.localpurchpower_index)::numeric,3) AS "correlation - GDP by local purchasing power",
	round(corr(happiness.happyscore,coli.localpurchpower_index)::numeric,3) AS "correlation - happiness index by local purchasing power"
FROM happiness
INNER JOIN coli 
	ON happiness.countrycode=coli.countrycode
	AND coli.year=happiness.year
GROUP BY coli.year
ORDER BY coli.year
