INSERT INTO podzespoly 
(typy_id,producenci_id,nazwa,cena) 
VALUES (2,6,'DDR4 32',300);
2.
SELECT kategoria,nazwa,cena 
FROM podzespoly
    INNER JOIN typy ON podzespoly.typy_id = typy.id
    3.
SELECT id,kategoria FROM typy;