SELECT DISTINCT
	ship
FROM Outcomes AS o
INNER JOIN Battles AS b ON o.battle = b.name AND o.result = 'damaged'
WHERE EXISTS(
	SELECT NULL FROM Outcomes AS io
	INNER JOIN Battles AS ib ON io.battle = ib.name
	WHERE io.ship = o.ship AND ib.date > b.date
)
