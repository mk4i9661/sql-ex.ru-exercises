SELECT 
	R.name
FROM(
	SELECT
		s.name, c.class, c.displacement, c.numGuns
	FROM Classes AS c
	INNER JOIN Ships AS s ON c.class = s.class
	UNION
	SELECT
		o.ship, c.class, c.displacement, c.numGuns
	FROM Classes AS c
	INNER JOIN Outcomes AS o ON c.class = o.ship
) AS R
WHERE R.numGuns = (
	SELECT MAX(I.numGuns) FROM (
		SELECT
			s.name, c.class, c.displacement, c.numGuns
		FROM Classes AS c
		INNER JOIN Ships AS s ON c.class = s.class
		UNION
		SELECT
			o.ship, c.class, c.displacement, c.numGuns
		FROM Classes AS c
		INNER JOIN Outcomes AS o ON c.class = o.ship
	) AS I
	WHERE I.displacement = R.displacement
)
