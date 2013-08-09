SELECT
	P.maker, MAX(PC.price)
FROM Product AS P
INNER JOIN PC ON P.model = PC.model
GROUP BY P.maker
