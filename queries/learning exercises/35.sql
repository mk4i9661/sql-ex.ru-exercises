SELECT DISTINCT
	model, type
FROM Product
WHERE
	model NOT LIKE '%[^0-9]%'
	OR
	model NOT LIKE '%[^a-z]%'
