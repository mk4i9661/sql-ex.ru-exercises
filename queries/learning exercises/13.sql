SELECT AVG(PC.speed)
FROM Product AS P
INNER JOIN PC ON P.model = PC.model
WHERE P.maker LIKE 'A'
