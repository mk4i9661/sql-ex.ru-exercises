SELECT
	AVG(U.price)
FROM(
	SELECT
		model, price
	FROM PC
	UNION ALL
	SELECT
		model, price
	FROM Laptop
) AS U
INNER JOIN Product AS P ON P.model = U.model
WHERE P.maker = 'A'
