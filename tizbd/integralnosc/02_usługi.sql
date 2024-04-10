-- Firma remontowa potrzebuje bazy danych do obsługi klientów.  Wymagania:

-- 1. Tabela Klienci. 

-- A. ID całkowite, autoinkrementacja, klucz podstawowy
-- B. Imie - tekst do 30 znaków, pole nie może być puste
-- C. Nazwisko - tekst do 50 znaków, pole nie może być puste
-- D. e-mail - tekst do 50 znaków, wartości w polu nie mogą się powtarzać, w środku musi wystąpić znak @
CREATE Table Klienci (
    id int PRIMARY KEY AUTO_INCREMENT,
    imie varchar (30) NOT NULL,
    Nazwisko varchar (50) NOT NULL,
    e_mail varchar(50) unique check(e_mail like '%@%')
);
-- 2. Tabela Uslugi

-- A. ID całkowite, autoinkrementacja, klucz podstawowy
-- B. nazwa - tekst do 50 znaków, 
-- C. opis - teksty do 512 znaków
-- D. cena - stałoprzecinkowy typ: ceny do 7 znaków przed przecinkiem i 2 znaków po przecinku, 
CREATE TABLE Uslugi(
    id int PRIMARY KEY AUTO_INCREMENT,
    nazwa varchar(50),
    opis varchar(512),
    cena decimal(9,2)
);
-- 3. Do tabeli Usługi dodaj więzy integralności: 

-- A. do pola nazwa: wartości w polu nie mogą się powtarzać, pole nie może być puste
-- B. do pola cena: wpisywane wartości muszą być większe od 10
-- A
ALTER TABLE Uslugi
MODIFY nazwa varchar(50) unique NOT NULL; 
-- B
ALTER TABLE Uslugi
ADD CONSTRAINT ch_cena check (cena > 10)  


-- 4. Połącz obie tabele:

-- A. określ typ związku i sposób przejścia do postaci relacyjnej
-- B. dodaj potrzebne pole i/lub tabele, pokaż projekt na zrzucie
-- C. dodaj więzy integralności referencyjnej

CREATE TABLE lol(
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_klienta int,
    id_uslugi int
);
ALTER TABLE lol
ADD constraint fk_klient FOREIGN KEY(id_klienta) references Klienci (id),
ADD CONSTRAINT fk_uslugi FOREIGN KEY(id_uslugi) references
Uslugi (id)

-- 5. Wprowadź dane dwóch klientów i dwie usługi
INSERT INTO Klienci(imie,nazwisko,email)
VALUES
    ("Ktos","Jakis","mail@mail.com"),
    ("Andrzej","Nowak","nowy@mail.com");

INSERT INTO Uslugi (nazwa,opis,cena)
VALUES 
    ("Praca","Droga",20.5),
    ("Kolejna","Jakas",41.4);

-- 6. Upewnij się, że działają więzy integralności (nie puste, wartości się nie powtarzają, check)

-- A. w tabeli Klienci

-- B. w tabeli Uslugi

-- 7. Zamów i wyprowadź do bazy danych wykonanie usług: 

-- A. pierwszy klient zamawia pierwszą usługę, przy wprowadzaniu danych posługuj się nazwami usług
INSERT INTO lol (id_klienta, id_uslugi)
VALUES 
    ((SELECT id FROM klienci WHERE nazwisko='Jakis'),
    (SELECT id FROM uslugi WHERE nazwa='Praca')
    );

-- B. Drugi klient zamawia obie usługi, przy wprowadzaniu danych posługuj się nazwami usług

-- 8. Upewnij się, że działają więzy integralności referencyjnej

-- A. usuń dane pierwszego klienta z tabeli klienci,
--  B. z tabeli klienci usuń dane pierwszego klienta stosując podejście wyważone
-- C. z tabeli klienci usuń dane drugiego klienta stosując podejście kaskadowe usuwanie powiązanych pól