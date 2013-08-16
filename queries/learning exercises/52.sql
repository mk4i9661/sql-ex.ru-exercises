SELECT
	s.name
FROM Ships AS s
INNER JOIN Classes AS c ON s.class = c.class
WHERE
	c.type = 'bb' AND
	c.country = 'Japan' AND
	COALESCE(c.numGuns, 9) > 8 AND
	COALESCE(c.bore, 0) < 19 AND
	COALESCE(c.displacement, 0) <= 65000
