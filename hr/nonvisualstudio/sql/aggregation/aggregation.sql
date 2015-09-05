#average population
SELECT AVG(POPULATION) FROM CITY;

#Japan POPULATION
SELECT SUM(POPULATION) FROM CITY WHERE CountryCode = 'JPN';

#Population Density Difference
SELECT (MAX(Population) - MIN(Population)) FROM CITY;

#Weather Observation Station 2
SELECT
CAST(SUM(LAT_N) as decimal(16,2)),
CAST(SUM(LONG_W) as decimal(16,2))
FROM STATION ;

#Weather Observation Station 13

SELECT CAST(SUM(LAT_N) as decimal(16,4)) FROM STATION
WHERE LAT_N BETWEEN 38.7880 AND 137.2345;

#Weather Observation Station 14
SELECT CAST(MAX(LAT_N) as decimal(16,4)) FROM STATION
WHERE LAT_N < 137.2345;

#Weather Observation Station 15
SELECT TOP 1 CAST(LONG_W as decimal(16,4)) FROM STATION
WHERE LAT_N < 137.2345
ORDER BY LAT_N DESC;

#Weather Observation Station 16
SELECT TOP 1 CAST(LAT_N as decimal(16,4)) FROM STATION
WHERE LAT_N > 38.7780
ORDER BY LAT_N;

#Weather Observation Station 17
SELECT TOP 1 CAST(LONG_W as decimal(16,4)) FROM STATION
WHERE LAT_N > 38.7780
ORDER BY LAT_N;

#Weather Observation Station 18
SELECT CAST(ABS(MIN(LONG_W) - (MIN(LAT_N))) + ABS(MAX(LONG_W) - (MAX(LAT_N))) as decimal(16,4)) FROM STATION;

#Weather Observation Station 19
#a:MIN(LAT_N)
#b:MAX(LAT_N)
#c:MIN(LONG_W)
#d:MAX(LONG_W)

SELECT CAST(SQRT(
  SQUARE(MIN(LAT_N) - MIN(LONG_W)) +
  SQUARE(MAX(LAT_N) - MAX(LONG_W))
   ) as decimal(16,4))
FROM STATION;

#Weather Observation Station 20
SELECT CAST(
(
 (SELECT MAX(LAT_N) FROM
   (SELECT TOP 50 PERCENT LAT_N FROM STATION ORDER BY LAT_N) AS BottomHalf)
 +
 (SELECT MIN(LAT_N) FROM
   (SELECT TOP 50 PERCENT LAT_N FROM STATION ORDER BY LAT_N DESC) AS TopHalf)
) / 2 as decimal(16,4));
