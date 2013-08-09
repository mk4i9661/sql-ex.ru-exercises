SELECT P.maker, P.type
FROM Product AS P
GROUP BY P.maker, P.type
HAVING COUNT(P.model) > 1 AND (
	SELECT COUNT(*)
	FROM(
		SELECT DISTINCT PP.type 
		FROM Product AS PP 
		WHERE PP.maker = P.maker
		GROUP BY PP.type
	) AS R
) = 1
