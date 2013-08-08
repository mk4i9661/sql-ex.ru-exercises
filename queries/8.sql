SELECT P.maker 
FROM 
(
	SELECT P.maker
	FROM Product AS P
	WHERE type = 'PC'
) AS P
EXCEPT (
	SELECT P.maker
	FROM Product AS P
	WHERE type = 'Laptop'
)
