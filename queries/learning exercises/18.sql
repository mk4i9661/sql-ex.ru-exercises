SELECT DISTINCT
	P.maker, PN.price
FROM Product AS P
INNER JOIN Printer AS PN ON P.model = PN.model AND PN.color = 'y'
WHERE PN.price = (
	SELECT MIN(price) FROM Printer AS IP WHERE IP.color = 'y'
)
