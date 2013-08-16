SELECT DISTINCT
	battle
FROM Outcomes AS o
LEFT JOIN Ships AS s ON o.ship = s.name
LEFT JOIN Classes AS c ON o.ship = c.class OR s.class = c.class
WHERE c.class = 'Kongo'
