﻿SELECT
	P.maker, COUNT(DISTINCT P.model)
FROM Product AS P
WHERE P.type = 'PC'
GROUP BY P.maker
HAVING COUNT(DISTINCT P.model) > 2
