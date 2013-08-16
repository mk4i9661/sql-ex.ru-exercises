SELECT
	s.name
FROM Classes AS c
LEFT JOIN Ships AS s ON c.class = s.class
WHERE c.displacement >= 35000 AND c.type = 'bb' AND s.launched >= 1922
