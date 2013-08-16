SELECT
	name
FROM Battles AS b
WHERE DATEPART(year, date) NOT IN(
	SELECT launched FROM Ships WHERE launched IS NOT NULL
)
