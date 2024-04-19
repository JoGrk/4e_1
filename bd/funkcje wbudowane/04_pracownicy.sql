-- 1. Wyświetl aktualną datę. 
SELECT CURDATE();
-- 2. wyświetl bieżący czas 
SELECT CURTIME();
-- 3, Ilu pracowników zatrudniono w poszczególnych miesiącach. MONTH(data)  (MONTHNAME)
SELECT count(*), MONTHNAME(data_zatrudnienia) as miesiac
from pracownicy
group by miesiac;
-- 4. Ile dni pracownicy byli zatrudnieni na poszczególnych stanowiskach (DATEDIFF(data1, data2) );  (historia_pracy)
SELECT pracownik_ID, DATEDIFF(koniec, poczatek) as 'Dlugosc zatrudnienia'
FROM historia_pracy;
-- 5. Wyświetl datę zatrudnienia w formacie dzień-miesiąc-rok (DATE_FORMAT(data, format)
SELECT DATE_FORMAT(data_zatrudnienia,'%d-%m-%Y')
FROM pracownicy;

-- 6. Pracownik o id 102 będzie pracował na stanowisku FI_MGR w dziale 20 od dzisiaj przez  miesiąc (DATE_ADD(data, interwał)
INSERT INTO historia_pracy
(pracownik_ID,stanowisko_ID,dzial_ID) VALUES (102,'FI_MGR',20)
-- 7. Dodaj nowego pracownika, zatrudnionego dzisiaj (CURDATE())