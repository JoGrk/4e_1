-- a) W tabelach relacyjnej bazy danych istotne jest stosowanie kluczy. Dla każdej z tabel wskaż kolumnę lub grupę kolumn, która jest jej kluczem podstawowym. 

-- Uczniowie(Imię, Nazwisko, NumerLegitymacji, IdKlasy)
-- Klasy(IdKlasy, Profil)
-- Przedmioty(IdPrzedmiotu, Nazwa)
-- Zaprojektuj strukturę relacyjnej bazy danych, z której można uzyskać informacje potrzebne dyrektorowi. Przyjmij, że na maturze uczniowie mogą zdawać dowolną liczbę przedmiotów.  




-- 1. Ustal, jakie tabele będą wchodziły w skład bazy danych (wykorzystaj definicje tabel z punktu a), jeśli to konieczne dodaj nowe tabele).  


-- Określ nazwy kolumn i typy danych dla kolumn tworzących poszczególne tabele w Twojej bazie danych. Przyjmij, że numer legitymacji jest liczbą naturalną z zakresu od 1 do 999999.

-- Uczniowie(Imię, Nazwisko, NumerLegitymacji, IdKlasy)
-- Klasy(IdKlasy, Profil)
-- Przedmioty(IdPrzedmiotu, Nazwa)

CREATE TABLE Uczniowie(
    Imie varchar(50) NOT NULL,
    Nazwisko varchar(50) NOT NULL,
    NumerLegitymacji int Primary Key,
    IdKlasy char(1) NOT NULL
);

CREATE TABLE klasy(
    IdKlasy char(1) primary key,
    Profil varchar(30) NOT NULL unique
);

CREATE TABLE Przedmioty(
    IdPrzedmiotu CHAR(2) PRIMARY KEY,
    Nazwa VARCHAR(255) NOT NULL
);

ALTER TABLE Uczniowie
ADD FOREIGN KEY (IDKlasy) REFERENCES klasy (IdKlasy);