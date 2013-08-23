SELECT
	i.point, ISNULL(i.s - o.s, i.s)
FROM(
	SELECT point, SUM(inc) AS s
	FROM Income_o
	WHERE date < '2001-04-15'
	GROUP BY point
) AS i
LEFT JOIN(
	SELECT point, SUM(out) AS s
	FROM Outcome_o
	WHERE date < '2001-04-15'
	GROUP BY point
) AS o ON i.point = o.point
