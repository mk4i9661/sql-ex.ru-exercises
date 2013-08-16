SELECT
	c.class, COUNT(R.ship)
FROM(
	SELECT 
			o.ship, s.class, o.result
	FROM Classes AS c
	INNER JOIN Ships AS s ON c.class = s.class
	INNER JOIN Outcomes AS o ON s.name = o.ship
	WHERE o.result = 'sunk'
	UNION
	SELECT
		o.ship, c.class, o.result
	FROM Classes AS c
	INNER JOIN Outcomes AS o ON c.class = o.ship
	WHERE o.result = 'sunk'
) AS R
RIGHT JOIN Classes AS c ON R.class = c.class
GROUP BY c.class
