SELECT DISTINCT P.maker, L.speed
FROM Product AS P
INNER JOIN Laptop AS L ON P.model = L.model
WHERE P.type = 'Laptop' AND hd >= 10
