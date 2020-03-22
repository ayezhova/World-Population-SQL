-- Distinct years in the Dataset:

SELECT COUNT(DISTINCT year) from population_years;

-- Largest Population Size for Gabon:

SELECT * FROM population_years
WHERE country='Gabon'
ORDER BY population DESC
LIMIT 1;

-- 10 lowest population in 2005:

SELECT * FROM population_years
WHERE year=2005
ORDER BY population
LIMIT 10;

-- Distinct countries in 2010 with populations
-- Greater than 100 million

SELECT DISTINCT country, population, year
FROM population_years
WHERE year=2010 AND population>100;

-- Number of distinct countries countaining the word
-- 'Islands'

SELECT COUNT(DISTINCT country) FROM population_years
WHERE country LIKE "%islands%";

-- Population changes in Indonesia from 2000 to 2010

SELECT population, year
FROM population_years
WHERE country='Indonesia' AND (year=2000 OR year=2010);