-- 1. Do tabeli Handlowcy wprowadź dane z tabeli

-- imię	nazwisko	email	autor_wpisu	data_wpisu	login
-- Milan	Ogon	milo@komis.pl	ibn	2010-09-01	milo
-- Wojciech	Żak	wojt@komis.eu	ibn	2010-09-02	wojt
-- Piotr	Kupisz	pik@komis.eu	ktc	2015-02-20	pik
INSERT INTO Handlowcy 
(imie, nazwisko, email, autor_wpisu, data_wpisu, login)
VALUES('Milan', 'Ogon', 'milo@komis.pl', 'ibn', '2010-09-01', 'milo'),
('Wojciech', 'Żak', 'wojt@komis.eu', 'ibn', '2010-09-02', 'wojt'),
('Piotr','Kupisz','pik@komis.eu','ktc','2015-02-20','pik');
-- 2. 

-- A. Jeśli w tabeli Handlowcy brak jest pola sektor- dodaj je (typ int)
ALTER TABLE Handlowcy ADD sektor INT;

-- B. Zaktualizuj (update) wartości kolumny sektor: dla loginów ibn, ktc ustaw sektor 1, dla milo oraz pik ustaw wartość pola sektor na 2, dla wojt na 3, a dla agam na 4
UPDATE Handlowcy
SET sektor = 1
WHERE login IN ('ibn', 'ktc');

UPDATE Handlowcy
SET sektor = 2
WHERE login IN ('milo', 'plik');

UPDATE Handlowcy
SET sektor = 3
WHERE login = 'wojt'

UPDATE Handlowcy
SET sektor = 4
WHERE login = 'agam'

-- 3. Wyświetl całą zawartość tabeli handlowcy, a następnie zmodyfikuj wpisy:

 

-- A. poprawiając adres mailowy użytkownika milo na milo@komis.eu oraz 

UPDATE Handlowcy
SET email = 'milo@komis.eu'
WHERE login = 'milo';

-- B. usuń użytkownika z adresem mailowym pik@komis.eu
 
 DELETE FROM Handlowcy
 WHERE email = 'pik@komis.eu'; 

-- 4. Zmodyfikuj tabelę Rezerwacje 

 

-- A. Dodaj pole status (tekst do 20 znaków)
ALTER TABLE Rezerwacje
ADD status varchar(20);

ALTER TABLE Handlowcy
DROP Column status;
-- B. Zaktualizuj rekordy rezerwacji. Dla id = 1 nadaj status 'Oczekuje', dla id=2 nadaj status 'Anulowana'
UPDATE Rezerwacje
SET  status = 'oczekuje'
WHERE id = 1;

UPDATE Rezerwacje
SET  status = 'Anulowana'
WHERE id = 2;
 


-- 5. 

-- A.  Utwórz tabelę Pracownicy i zaimportuj do niej dane z plikuzatrudnieni.csv (pierwszy wiersz zawiera nazwy pól)

-- B. W tabeli Pracownicy zaktualizuj dane pracownika o loginie skos w związku z jego przejściem do sektora handlowego - ustaw mu sektor 1. Przyjmij datę wpisu 2015-03-08 i autora wpisu ibn.




-- 6. Zaktualizuj wartość wszystkich aut w związku ze spadkiem ich wartości rynkowej o 10%. Pamiętaj o aktualizacji daty i autora wpisu ( 2015-03-08 i  ibn )

 