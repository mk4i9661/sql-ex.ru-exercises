SELECT
	name
FROM (
	SELECT name FROM Ships
	UNION
	SELECT ship FROM Outcomes
) AS N
WHERE name LIKE '%[ ]%[ ]%'
