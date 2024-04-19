-- NOW()

-- 1. wyświetl aktualną datę i czas. 

-- DATE(), TIME() - tylko  data lub tylko czas ze typu datetime
SELECT now();

-- 2. Wyświetl w jednej kolumnie aktualną datę, w drugiej aktualny czas (wykorzystaj funkcję now)
SELECT DATE(now()) AS Data,TIME(now()) AS Czas;
-- CURDATE()

-- 3. Wyświetl bieżący czas systemowy
SELECT CURDATE();
-- DATE_FORMAT(data, tekst_formatujący) %m  %d  %Y

-- 4. Wyświetl aktualny czas w formacie amerykańskim (miesiąc/dzień/rok)

SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y') as US_date;

-- DATEDIFF(data1, data2) - różnica w dniach między datami

-- 5. wyświetl ilość dni między datą zakończenia roku szkolnego i datą rozpoczęcia
SELECT DATEDIFF('2024-06-30','2023-09-01');
-- DATE_ADD(data, INTERVAL n przedział_czasu) przedział_czasu to DAY, WEEK, MONTH, YEAR, n - ilość 

-- 6. Wyświetl dowolną datę, oraz datę dzień później, tydzień, miesiąc i rok

SELECT 
    CURDATE() Today, 
    DATE_ADD(CURDATE(), INTERVAL 1 day) Tomorrow,
     DATE_ADD(CURDATE(), INTERVAL 1 WEEK)  Week_later,
     DATE_ADD(CURDATE(), INTERVAL 1 MONTH)  Month_later,
     DATE_ADD(CURDATE(), INTERVAL 1 Year)  Year_later;
     

-- DATE_SUB(data, INTERVAL n przedział_czasu) przedział_czasu to DAY, WEEK, MONTH, YEAR, n - ilość 

-- 7. Wyświetl dowolną datę, oraz datę dzień wcześniej, tydzień, miesiąc i rok


SELECT 
    CURDATE() Today, 
    DATE_SUB(CURDATE(), INTERVAL 1 day) Yesterday,
     DATE_SUB(CURDATE(), INTERVAL 1 WEEK)  Week_ago,
     DATE_SUB(CURDATE(), INTERVAL 1 MONTH)  Month_ago,
     DATE_SUB(CURDATE(), INTERVAL 1 Year)  Year_ago;

-- DAY(data) MONTH(data) QUARTER(data) YEAR(data) - wyciągają z daty dzień, miesiąc, kwartał i rok

-- 8. wyciągnij z dowolnej daty dzień, miesiac, kwartał, rok

SELECT day(CURDATE()) day, month(CURDATE()) month,quarter(CURDATE()), year(CURDATE());  

-- WEEKDAY(data) wyświetla numer dnia tygodnia

-- 9. wyświetl numer aktualnego dnia tygodnia, czy tydzień zaczyna się od poniedziałku czy niedzieli?
SELECT WEEKDAY(CURDATE());