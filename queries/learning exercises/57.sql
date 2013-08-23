SELECT
	s.class, COUNT(CASE s.result WHEN 'sunk' THEN 1 ELSE 0 END) AS R
FROM (
	SELECT 
		s.class
	FROM (
		SELECT
			class, name AS ship
		FROM Ships AS s
		UNION
		SELECT
			class, ship AS ship
		FROM Outcomes AS o
		INNER JOIN Classes AS c ON o.ship = c.class
	) AS s
	GROUP BY s.class
	HAVING COUNT(s.ship) >= 3
) AS c
INNER JOIN (
	SELECT
		s.class, s.ship, o.result
	FROM (
		SELECT
			class, name AS ship
		FROM Ships AS s
		UNION
		SELECT
			class, ship AS ship
		FROM Outcomes AS o
		INNER JOIN Classes AS c ON o.ship = c.class
	) AS s
	INNER JOIN Outcomes AS o ON o.ship = s.ship
	WHERE o.result = 'sunk'
) AS s ON c.class = s.class
GROUP BY s.class
