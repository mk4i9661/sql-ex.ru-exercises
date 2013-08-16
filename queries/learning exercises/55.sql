SELECT DISTINCT
	c.class, 
	CASE WHEN s.launched IS NULL
		THEN (SELECT MIN(launched) FROM Ships WHERE class = c.class)
		ELSE (SELECT s.launched)
	END
FROM Classes AS c
LEFT JOIN Ships AS s ON c.class = s.class
WHERE s.launched IS NULL OR s.launched = (
	SELECT MIN(launched) FROM Ships WHERE class = c.class
)
