SELECT
	c.country, CAST(AVG(c.bore * c.bore * c.bore) / 2 AS DECIMAL(16, 2)) AS mw
FROM(
	SELECT class FROM Ships
	UNION ALL
	SELECT DISTINCT ship AS class
	FROM Outcomes AS o
	WHERE NOT EXISTS(SELECT NULL FROM Ships AS s WHERE s.name = o.ship)
) AS R
INNER JOIN Classes AS c ON R.class = c.class
GROUP BY c.country
