SELECT DISTINCT P.maker
FROM Product AS P
INNER JOIN PC ON P.model = PC.model
WHERE speed >= 450
