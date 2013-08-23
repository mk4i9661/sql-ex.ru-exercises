SELECT ((SELECT SUM(inc) FROM Income_o) - (SELECT SUM(out) FROM Outcome_o))
