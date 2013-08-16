SELECT 
	s.class, s.name, c.country
FROM Ships AS s
INNER JOIN Classes AS c ON s.class = c.class
WHERE c.numGuns >= 10
