SELECT DISTINCT U.model, U.price
FROM(
	SELECT price, model FROM Laptop AS L
	UNION ALL SELECT price, model FROM PC
	UNION ALL SELECT price, model FROM Printer AS PR
) AS U
INNER JOIN Product AS P ON P.model = U.model
WHERE P.maker LIKE 'B'
