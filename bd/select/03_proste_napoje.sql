-- A. Wyświetl napoje, których składnikiem głównym jest woda sodowa.
SELECT nazwa,skladnik_glowny 
FROM proste_drinki 
WHERE skladnik_glowny='woda sodowa';
 
-- B. Wyświetl wszystkie napoje, których głównym składnikiem jest dowolny sok.
SELECT nazwa,skladnik_glowny
FROM proste_drinki
WHERE skladnik_glowny LIKE 'sok%';
 
-- C. Wyświetl wszystkie napoje, których głównym składnikiem jest dowolny sok lub nektar w ilości co najmniej 60 (ilosc1) ( ilość obowiązuje i przy soku, i przy nektarze)
select nazwa, skladnik_glowny
from proste_drinki
where (skladnik_glowny like 'sok%' OR skladnik_glowny like 'nektar%') and ilosc1 >= 60;
 
-- D. Wyświetl wszystkie napoje, których składnikiem dodatkowym jest dowolny sok w ilości 22 (ilosc2)
select nazwa, skladnik_dodatkowy
from proste_drinki
where skladnik_dodatkowy like 'sok%' and ilosc2=22;
 
-- E. Wyświetl wszystkie napoje, których nazwa zaczyna się od B i kończy na n
 
 select * from proste_drinki
 where nazwa like "B%n"; 
-- F. Wyświetl wszystkie napoje, w których ilość dodatkowego składnika (ilosc2) jest wartością z zakresu od 30 do 180
 select nazwa, skladnik_dodatkowy, ilosc2
 from proste_drinki
 where ilosc2 between 30 and 180;
-- G. Wyświetl nazwy napojów, w których składnikiem głównym lub dodatkowym jest herbata.
SELECT nazwa, skladnik_glowny, skladnik_dodatkowy
FROM proste_drinki
WHERE skladnik_glowny LIKE '%herbata' OR skladnik_dodatkowy LIKE '%herbata';