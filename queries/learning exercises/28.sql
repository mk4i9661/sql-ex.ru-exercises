SELECT
	AVG(PC.hd)
FROM PC
INNER JOIN Product AS P1 ON P1.model = PC.model
WHERE EXISTS(
	SELECT NULL FROM Product AS P2 WHERE P2.type = 'Printer' AND P2.maker = P1.maker
)
