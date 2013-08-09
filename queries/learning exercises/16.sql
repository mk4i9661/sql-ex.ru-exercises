SELECT DISTINCT
	PC1.model, PC2.model, PC1.speed, PC1.ram
FROM PC AS PC1
INNER JOIN
	PC AS PC2 ON PC1.speed = PC2.speed AND
	PC1.ram = PC2.ram AND 
	PC1.code != PC2.code AND
	PC1.model > PC2.model
