SELECT ((SELECT SUM(inc) FROM Income_o WHERE date < '2001-04-15') - (SELECT SUM(out) FROM Outcome_o WHERE date < '2001-04-15'))
