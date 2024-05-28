-- (wiersz poleceń)

-- 1. Dodaj nowego użytkownika kupiec łączącego się z lokalnej maszyny z hasłem kupiecE14
create user 'kupiecE14'@'localhost'
IDENTIFIED BY 'kupiecE14';
 
-- 2. Wykonaj testowe połączenie (zaloguj się) na koncie kupiec. Jakie bazy danych są widoczne?
 
-- 3. jako root sprawdź zawartość tabeli user (tylko pola host, user, password) (w bazie danych mysql) (pokaż zawartość tej tabeli)

SELECT host,user,password FROM mysql.user;
 
-- 4. Utwórz użytkownika szukacz z hasłem szukaczE14
create user 'szukaczE14'@'localhost'
IDENTIFIED BY 'kupiecE14';
 
-- 5. Wyloguj się z sesji kupca i wykonaj testowe połączenie jako szukacz

--  6. Zablokuj konto kupiec (ALTER USER .... ACCOUNT ...)
 
--  7. Wyloguj się z sesji szukacza i wykonaj testowe połączenie jako kupiec

 
-- 8 . Odblokuj  konto kupiec. Ustaw wygaszanie hasła po jednym dniu ( dzień lub dwa później spróbuj się zalogować, a jeśli się nie uda, napraw)
-- //-----------------------------------------------------
-- 9. Utwórz
-- A. bazę danych Egzaminy
-- B. w tej bazie tabelę Test (pole id typu int, klucz podstawowy, bez autoinkrementacji). 
-- C. Dodaj do tabeli Test cyfry 1, 2 i 3 
-- D. Utwórz tabelę tabela z jednym polem id typu całkowitego.
 CREATE DATABASE Egzaminy1;
 USE Egzaminy1;
 CREATE TABLE Test(
    id int PRIMARY KEY
 );
 INSERT INTO Test VALUES (1), (2), (3);
 CREATE TABLE tabela(
    id int
 );
-- 10. Daj kupcowi prawo do wprowadzania danych do tabeli test w bazie Egzaminy (samo wprowadzanie, bez wyszukiwania)
 GRANT INSERT ON Egzaminy.test TO kupiecE14;
-- 11. Daj szukaczowi prawo do wyświetlania danych z tabeli test w bazie Egzaminy
 GRANT SELECT ON Egzaminy.test TO szukacze14;
-- 12. Sprawdź, czy kupiec (prawo do wprowadzania danych):
INSERT INTO test VALUES (4);
-- A. widzi bazę Egzaminy
-- B. Może jej użyć
-- C. Widzi tabele w tej bazie
-- D. Może wyświetlić zawartość tabeli Test
-- E. Może dodać dane (liczbę 4)
 
-- 13. Sprawdź, czy szukacz (prawo do wyświetlania danych)

-- A. widzi bazę Egzaminy
-- B. Może jej użyć
-- C. Widzi tabele w tej bazie
-- D. Może wyświetlić zawartość tabeli Test
-- E. Może dodać dane (liczbę 5)
-- 14. Utwórz użytkownika serwisant
 
-- 15. Daj prawo serwisantowi do usuwania danych z tabeli test w bazie egzaminy (samo usuwanie, bez prawa do wyszukiwania).
 
-- 16. Sprawdź, czy serwisant (prawo do usuwania danych):
-- A. widzi bazę Egzaminy
-- B. Może jej użyć
-- C. Widzi tabele w tej bazie
-- D. Może wyświetlić zawartość tabeli Test
-- E. Może usunąć dane (liczbę 3)
-- F. Może usunąć wszystkie dane;
-- 17. Jeśli użytkownik serwisant ma problemy z usuwaniem, popraw to (ale nie dawaj mu za dużo praw, a już na pewno nie wszystkie), najpierw dodaj do tabeli liczby 1,2,3
 