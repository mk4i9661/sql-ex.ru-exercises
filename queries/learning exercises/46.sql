SELECT
		R1.name, c.displacement, c.numGuns
FROM(
	SELECT ship AS name FROM Outcomes AS o
	WHERE o.battle = 'Guadalcanal'
	INTERSECT
	SELECT name FROM Ships AS s
) R1
INNER JOIN Ships AS s ON R1.name = s.name
INNER JOIN Classes AS c ON s.class = c.class
UNION
SELECT
	o.ship, c.displacement, c.numGuns
FROM Outcomes AS o
INNER JOIN Classes AS c ON o.ship = c.class
WHERE o.battle = 'Guadalcanal'
UNION
SELECT
	o.ship, c.displacement, c.numGuns
FROM Outcomes AS o
LEFT JOIN Classes AS c ON o.ship = c.class
WHERE o.battle = 'Guadalcanal' AND o.ship NOT IN(
	SELECT name FROM Ships
)
