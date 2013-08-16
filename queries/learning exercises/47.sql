SELECT
	ROW_NUMBER() OVER(ORDER BY R.c DESC, R.maker, p.model) AS n, R.maker, p.model
FROM(
	SELECT
		maker, COUNT(model) AS c
	FROM Product
	GROUP BY maker
) AS R
INNER JOIN Product AS p ON p.maker = R.maker
