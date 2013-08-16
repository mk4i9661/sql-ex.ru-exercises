SELECT
	c.class
FROM Classes AS c
WHERE (SELECT COUNT(*) FROM(
	SELECT name FROM Ships AS s WHERE s.class = c.class OR s.name = c.class
	UNION
	SELECT ship FROM Outcomes AS o WHERE o.ship = c.class
) AS R) = 1
