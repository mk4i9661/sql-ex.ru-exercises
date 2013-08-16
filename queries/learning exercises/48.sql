SELECT
	c.class
FROM Classes AS c
WHERE EXISTS(
	SELECT NULL FROM Outcomes AS o WHERE o.result = 'sunk' AND o.ship = c.class
) OR EXISTS(
	SELECT NULL FROM Outcomes AS o 
	INNER JOIN Ships AS s ON s.name = o.ship
	WHERE o.result = 'sunk' AND s.class = c.class
)
