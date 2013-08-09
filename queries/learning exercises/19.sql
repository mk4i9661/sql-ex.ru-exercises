SELECT
	P.maker, AVG(L.screen)
FROM Product AS P
INNER JOIN Laptop AS L ON P.model = L.model
GROUP BY P.maker
