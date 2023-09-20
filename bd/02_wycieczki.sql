-- 0. Wyświetl istniejące bazy danych, utwórz bazę Wycieczka
SHOW Databases
CREATE Database Wycieczka
-- 1. W nowej bazie danych Wycieczki utwórz tabelę Przewodnicy o następujących polach
-- przewodnik - pole jednoznacznie identyfikuje wiersz, liczby powinny pojawiać się automatycznie 
-- Telefon domowy - w polu przechowywane są teksty o długości do 15 znaków
-- nazwisko - tekst o długości do 50 znaków, pole jest wymagane
-- imię - tekst o długości do 30 znaków
USE Wycieczka;
 CREATE TABLE Przewodnicy
 (
    Przewodnik int PRIMARY KEY auto_increment,
    Telefon_domowy varchar(15),
    Nazwisko varchar(50) NOT NULL,
    Imie varchar(30)
 );

 

-- 2. Utwórz tabelę  Wycieczki o następujących polach:

-- kod wycieczki - teksty o długości 11 znaków, pole identyfikuje jednoznacznie daną wycieczkę
-- przewodnik - pole w którym wpisujemy numer przewodnika 
-- cena - podaj jako domyślną cenę 1000zł
-- data rozpoczęcia - pole przechowuje daty,
-- data zakończenia - pole przechowuje daty
CREATE TABLE Wycieczki
(
kod_wycieczki char(11) PRIMARY KEY,
przewodnik int,
cena dec(8,2),
data_rozpoczecia date,
data_zakonczenia date
);
ALTER TABLE wycieczki
ADD foreign key (przewodnik) REFERENCES przewodnicy (przewodnik)
-- 3. Wyświetl istniejace tabele
show tables;
-- 4. Wyświetl opis obu tabel
desc wycieczki;
desc przewodnicy;

-- 5. Wpisz przykładowe dane (co najmniej dwie wycieczki i dwóch przewodników) - użyj różnych wersji instrukcji
INSERT INTO Przewodnicy
(imie,nazwisko)
VALUES
('Jan','Kowalski');
INSERT INTO Wycieczki 
values
('1234',1,10000,'2023-09-12','2023-09-20');


-- 6. Wyświetl dane z obu tabel
SELECT * FROM wycieczki;
SELECT * FROM przewodnicy;
-- 7. Usuń po jednym wierszu z każdej z tabel (dobierz warunek)

 DELETE FROM Wycieczki
WHERE CENA=10000;

DELETE FROM Przewodnicy
WHERE Przewodnik=1;