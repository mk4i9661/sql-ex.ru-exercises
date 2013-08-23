SELECT
	r1.maker, r1.type, CAST(r1.mc * 100.0 / r2.tc AS DECIMAL(16, 2))
FROM (
	SELECT
		p.maker, p.type, COUNT(p.model) AS mc
	FROM Product AS p
	GROUP BY p.maker, p.type
) AS r1
INNER JOIN (
	SELECT 
		p.maker, COUNT(p.model) AS tc
	FROM Product AS p
	GROUP BY p.maker
) AS r2 ON r1.maker = r2.maker
UNION
SELECT DISTINCT
	p.maker, t.type, .00
FROM Product AS p
CROSS JOIN(
	SELECT DISTINCT type FROM Product
) AS t
WHERE NOT EXISTS(
	SELECT NULL FROM Product AS ip WHERE ip.maker = p.maker AND ip.type = t.type
)
