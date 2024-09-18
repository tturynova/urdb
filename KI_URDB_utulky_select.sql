
UPDATE Dobrovolnici
SET id_zar = (SELECT id_zar FROM Zarizeni ORDER BY RAND() LIMIT 1);

