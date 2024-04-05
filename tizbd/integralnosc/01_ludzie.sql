-- 1. Utwórz tabelę Jezyki
-- A. pole Id - klucz podstawowy, autoinkrementacja
-- B. jezyk - tekst do 20 znaków, pole nie może być puste, wartości w polu nie mogą się powtarzać
CREATE TABLE Jezyki (
    Id int PRIMARY KEY AUTO_INCREMENT,
    Jezyk varchar(20) NOT NULL UNIQUE
);

-- 2. Utwórz tabelę Ludzie
-- A. pole Id - klucz podstawowy, autoinkrementacja
-- B. imie tekst do 30 znaków, pole nie może być puste
-- C. nazwisko - tekst do 50 znaków, pole nie może być puste
-- D. wiek - całkowite, wpisywane wartości muszą być większe od 18 (bez constraint'a)
CREATE TABLE Ludzie(
    id int PRIMARY KEY AUTO_INCREMENT,
    imie varchar(30) NOT NULL,
    nazwisko varchar(50) NOT NULL ,
    wiek INT CHECK (wiek>18)
);


-- 3. Do tabeli Ludzie dodaj klucz obcy jezyk, odwołujący się do pola ID w tabeli języki (więzy powinny się nazywać fk_jezyki) uwaga: pole jezyk jest kluczem obcym powiązanym z kluczem podstawowym w tabeli Jezyki, dlatego powinien być tego samego typu co ID w tabeli Jezyki.

ALTER TABLE ludzie 
ADD jezyk int,
ADD constraint fk_jezyki foreign key(jezyk) references jezyki(id); 

-- 4. Do tabeli Jezyki dodaj więzy ch_jezyki , które sprawdzą, czy wpisywany tekst jest jednym ze zbioru tekstów 'angielski', 'francuski', 'niemiecki' (wersja z constraint)
ALTER TABLE Jezyki 
ADD constraint ch_jezyki CHECK (Jezyk in ('angielski', 'francuski', 'niemiecki'));  
-- 5. Sprawdź działanie więzów:

-- A. spróbuj wpisać dane do tabeli języki, pozostawiając pole jezyk puste. czy więzy not null działają? ______
insert into jezyki
values (null, null)

insert into jezyki
(id) values (3);
-- B. spróbuj wpisać dwa razy język angielski. czy więzy unique  działają? ____
INSERT INTO jezyki
values (NULL,'angielski')
-- C. Wpisz do tabeli Jezyki język norweski. Czy więzy check działają?___ 
INSERT INTO jezyki
(jezyk) VALUES ('norweski');
-- D. Wpisz dane do tabeli Ludzie, spróbuj wpisać wiek mniejszy od 18, czy więzy check działają? ______
INSERT INTO Ludzie
VALUES (NULL,'Kuba', 'czyz',15 , 1 )
-- E. Wpisz dane do tabeli Ludzie, wpisując jezyk o ID 100 (nie ma takiego w tabeli Jezyki). Czy więzy foreign key działają? _____
INSERT INTO Ludzie (Jezyk) Values (100);
-- F. Wpisz do tabeli Jezyk język francuski, oraz do tabeli Ludzie dane Andrzeja Kowalskiego, wiek 24, który zna język francuski 
INSERT INTO Jezyki (Jezyk) VALUES ("francuski");
INSERT INTO Ludzie (imie, nazwisko, wiek, jezyk) VALUES ("Andrzej", "Kowalski", 24, (SELECT Id FROM Jezyki WHERE jezyk = "francuski"));
-- G. Wyświetl dane z tabeli Jezyki oraz Ludzie.
-- H. Usuń z tabeli Języki język francuski. Czy więzy foreign key działają _____
-- I. Jeśli usuwanie nie powiodło się, usuń mimo to stosując podejście wyważone (izolowane usuwanie)  (można kilkoma zapytaniami)