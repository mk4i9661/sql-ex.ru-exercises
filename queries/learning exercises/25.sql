SELECT DISTINCT
	P.maker 
FROM(
	SELECT DISTINCT
		P.maker
	FROM (
		SELECT
			model, ram
		FROM PC
		WHERE ram = (
			SELECT MIN(ram) FROM PC
		)
	) AS R1
	INNER JOIN PC ON PC.ram = R1.ram
	INNER JOIN(
		SELECT
			MAX(PC.speed) AS speed
		FROM (
			SELECT
				model, ram
			FROM PC
			WHERE ram = (
				SELECT MIN(ram) FROM PC
			)
		) AS R1
		INNER JOIN PC ON PC.ram = R1.ram
	) AS R2 ON PC.speed = R2.speed
	INNER JOIN Product AS P ON PC.model = P.model
) AS R
INNER JOIN Product AS P ON P.maker = R.maker
WHERE P.type = 'Printer'
