SELECT
	P.maker, AVG(PC.hd)
FROM(
	SELECT
		P.maker
	FROM Product AS P
	WHERE P.type = 'Printer'
) AS PR
INNER JOIN Product AS P ON P.maker = PR.maker
INNER JOIN PC ON P.model = PC.model
GROUP BY P.maker
