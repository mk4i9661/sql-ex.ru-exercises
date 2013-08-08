SELECT P.model, P.price
FROM Printer AS P
WHERE P.price = (SELECT MAX(price) FROM Printer)
