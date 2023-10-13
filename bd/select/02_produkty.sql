CREATE TABLE IF NOT EXISTS produkty(`id` int(2), `nazwa` varchar(9), `cena` int(2), `id_sklepu` int(1));
INSERT INTO produkty (`id`, `nazwa`, `cena`, `id_sklepu`) VALUES (1, 'bułka', 2, 1), (2, 'sok', 4, 1), (3, 'chipsy', 6, 1), (4, 'cola', 8, 1), (5, 'chleb', 5, 1), (6, 'ciastka', 7, 1), (7, 'czosnek', 1, 1), (8, 'chleb', 6, 2), (9, 'ciastka', 11, 2), (10, 'masło', 8, 2), (11, 'czekolada', 5, 2), (12, 'sok', 7, 2);

-- 1. napisz zapytanie, które wyświetli nazwę i  cenę produktów
 SELECT nazwa, cena
 FROM produkty;
-- 2. wyświetl nazwy i ceny produktów, posortowane malejąco według ceny;
select nazwa, cena
from produkty 
order by cena desc;
 
-- 3. wyświetl nazwy i ceny produktów, posortowane malejąco według ceny, ale tylko te produkty, których cena jest mniejsza od 5
 select nazwa, cena
from produkty
WHERE cena <5
order by cena desc;
-- 4. dodatkowo interesują nas tylko produkty na literę B
 
-- 5.jak wyżej, ale oprócz produktów na B zainteresowani jesteśmy produktami na literę S
 
-- 6. interesują nas produkty o cenie pomiędzy 5 a 10 złotych
 
-- 7. chcemy wypisać nazwy i ceny produktów, które są bułeczkami, sokami, chipsy (nazwa:  chleb, sok, chipsy)