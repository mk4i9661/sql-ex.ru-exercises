SELECT
	R.name
FROM(
	SELECT name FROM Ships
	UNION 
	SELECT ship AS name FROM Outcomes
) AS R
INNER JOIN Classes AS c ON c.class = R.name
