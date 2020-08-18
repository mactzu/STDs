select happiness.countrycode, country.continent, happiness.happyscore, happiness.happyrank
from country
inner join happiness on country.countrycode = happiness.countrycode
where happiness.year = 2019;
