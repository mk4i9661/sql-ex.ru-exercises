SELECT 
	fields, descr
FROM(
	SELECT TOP 1
		CAST(cd AS VARCHAR(50)) AS cd,
		CAST(model AS VARCHAR(50)) AS model,
		CAST(hd AS VARCHAR(50)) AS hd,
		CAST(price AS VARCHAR(50)) AS price,
		CAST(ram AS VARCHAR(50)) AS ram,
		CAST(speed AS VARCHAR(50)) AS speed
	FROM PC
	ORDER BY code DESC
) AS R
UNPIVOT(
	descr FOR  fields IN (cd, model, hd, price, ram, speed)
) AS UP
