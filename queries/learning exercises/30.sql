SELECT
	COALESCE(i.point, o.point) AS point, COALESCE(i.date, o.date) AS date, o.s, i.s
FROM (
SELECT
	point, date, SUM(inc) AS s
FROM Income 
GROUP BY point, date
) AS i
FULL JOIN(
	SELECT point, date, SUM(out) AS s
	FROM Outcome
	GROUP BY point, date
) AS o ON i.point = o.point AND i.date = o.date
