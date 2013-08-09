SELECT
	I.maker
FROM(
	SELECT DISTINCT P.maker FROM Product AS P INNER JOIN PC ON P.model = PC.model AND PC.speed >= 750
	INTERSECT
	SELECT DISTINCT P.maker FROM Product AS P INNER JOIN Laptop AS L ON P.model = L.model AND L.speed >= 750
) AS I
