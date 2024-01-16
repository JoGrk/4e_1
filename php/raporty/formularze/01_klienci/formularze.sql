create database 4e_1_formularze;
use 4e_1_formularze;
create table klienci (
id int auto_increment primary key,
imie varchar(50),
nazwisko varchar(50)
);
insert into klienci(imie, nazwisko)
values('Andrzej', 'Kmicic');