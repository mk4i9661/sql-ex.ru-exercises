SELECT
	CAST(AVG(CAST(R.numGuns AS DECIMAL)) AS DECIMAL(10, 2))
FROM(
	SELECT s.name, c.numGuns, c.type FROM Ships AS s
	INNER JOIN Classes AS c ON s.class = c.class
	UNION
	SELECT o.ship, c.numGuns, c.type FROM Outcomes AS o
	INNER JOIN Classes AS c ON o.ship = c.class
) AS R
WHERE R.type = 'bb'
