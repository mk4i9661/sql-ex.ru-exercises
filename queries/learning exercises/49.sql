SELECT name FROM Ships AS s 
WHERE EXISTS(SELECT NULL FROM Classes AS c WHERE c.class = s.class AND c.bore = 16)
UNION
SELECT ship AS name FROM Outcomes AS o
WHERE EXISTS(SELECT NULL FROM Classes AS c WHERE c.class = o.ship AND c.bore = 16)
