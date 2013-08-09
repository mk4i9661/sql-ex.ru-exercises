SELECT DISTINCT
	P.type, P.model, L.speed
FROM Laptop AS L
INNER JOIN Product AS P ON P.model = L.model
WHERE L.speed < ALL(SELECT speed FROM PC)
