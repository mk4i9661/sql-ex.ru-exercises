SELECT
	U.model
FROM(
	SELECT model, price FROM PC WHERE price = (
		SELECT MAX(price) FROM PC
	)
	UNION ALL
	SELECT model, price FROM Laptop WHERE price = (
		SELECT MAX(price) FROM Laptop
	)
	UNION ALL
	SELECT model, price FROM Printer WHERE price = (
		SELECT MAX(price) FROM Printer
	)
) AS U
GROUP BY U.model, U.price
HAVING U.price = (
	SELECT MAX(UU.price) FROM(
		SELECT model, price FROM PC WHERE price = (
			SELECT MAX(price) FROM PC
		)
		UNION ALL
		SELECT model, price FROM Laptop WHERE price = (
			SELECT MAX(price) FROM Laptop
		)
		UNION ALL
		SELECT model, price FROM Printer WHERE price = (
			SELECT MAX(price) FROM Printer
		)
	) AS UU
)
