SELECT
	CAST(AVG(CAST(c.numGuns AS DECIMAL)) AS DECIMAL(10, 2))
FROM Classes AS c
WHERE c.type = 'bb'
