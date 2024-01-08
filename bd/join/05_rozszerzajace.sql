-- 1. Które osoby figurujące w bazie jako czytelnicy, nie wypożyczyły ani razu choćby jednej książki? (tabele: Czytelnik, Wypożyczenia, pola w kwerendzie: Czytelnik_Imie, Czytelnik_Nazwisko, Data_wypożyczenia)
SELECT Czytelnik_Imie, Czytelnik_Nazwisko, Data_wypozyczenia
FROM Czytelnik
LEFT JOIN Wypozyczenia ON Wypozyczenia.Czytelnik_ID = Czytelnik.ID
WHERE Data_wypozyczenia IS NULL;  


-- 2. Kto nie ma kota? (Tabele: Ludzie, Koty, pola w kwerendzie: Imie, Nazwisko, Imie_kota, Rasa)
SELECT Imię, Nazwisko, Imie_kota, Rasa
FROM  Ludzie
LEFT JOIN Koty on Koty.ID_właściciela = Ludzie.ID
where Rasa is null;

--3.Jak ma na imię kot bez właściciela?   (Tabele: Ludzie, Koty, pola w kwerendzie: Imie_kota oraz nie wyświetlane pole Nazwisko - tylko dla kryterium) 

SELECT Imie_kota, nazwisko
FROM Koty
    LEFT JOIN ludzie ON koty.ID_właściciela = ludzie.ID
WHERE nazwisko IS NULL

-- 4. Wyświetl informacje o uczniach, którzy nie mają ocen  (tabele: Uczniowie, Oceny, pola w kwerendzie: imie, nazwisko, ocena, data)

-- 5. Wyświetl informacje o przedmiotach, z których nie wystawiono żadnych ocen (tabele: Oceny, Przedmioty, pola w kwerendzie: Nazwa_przedmiotu, Nazwisko_nauczyciela, Data)