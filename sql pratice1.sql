create table personel                                                                         
(                                                                                            
id serial primary key  ,                                                                      
isim varchar(20),                                                                            
yas int,                                                                                      
maas int,                                                                                     
email varchar(30)                                                                             
);                                                                                            
                                                                                              
-- auto_increment kullandığımızda otomatik olarak id ler 1 den başlayacaktır.                 
insert into personel (isim, yas, maas, email) values ('Ali', 39, 12500, 'ali@gmail.com');
insert into personel (isim, yas, maas, email) values ('Derya', 28, 15000, 'derya@yahoo.com');
insert into personel (isim, yas, maas, email) values ('Sevim', 24, 25000, 'sevim@hotmail.com');
insert into personel (isim, yas, maas, email) values ('Yusuf', 32, 18000, 'yusuf@gmail.com');
insert into personel (isim, yas, maas, email) values ('Halil', 48, 22000, 'halil@gmail.com');
insert into personel (isim, yas, maas, email) values ('Ece', 54, 21000, 'ece@gmail.com');
insert into personel (isim, yas, maas, email) values ('Can', 38, 19000, 'can@gmail.com');
insert into personel (isim, yas, maas, email) values ('Elif', 27, 14000, 'elif@gmail.com');
insert into personel (isim, yas, maas, email) values ('Ezgi', 38, 21000, 'ezgi@gmail.com');
insert into personel (isim, yas, maas, email) values ('Sena', 25, 11000, NULL);
select * from personel
-- 2) isim, yaş ve maaş bilgilerini listeleyiniz
select isim,yas,maas from personel
-- 4) id'si 5 olan personelin isim, yaş ve email bilgilerini listeleyiniz
select isim,yas,email,id serial from personel where id=5
-- 5) 30 yaşından büyük personel bilgilerini listeleyiniz.
select *from  personel where yas>30
-- 6) maası 21000 olmayan personel bilgilerini listeleyiniz.
select * from personel where maas<>21000
-- 7) ismi a harfi ile başlayan personel bilgilerini listeleyiniz.
select *from personel where isim ilike 'a%'
--  ismi n harfi ile biten personel bilgilerini listeleyiniz.
select * from personel where isim ilike '%n'
-- 9) email adresi gmail olan personel bilgilerini listeleyiniz.
select *from personel where email ilike '%gmail.com'
-- 10) email adresi gmail olmayan personel bilgilerini listeleyiniz.
select *from personel where email not like '%gmail.com' -- % ile arama yaparsak null gelmez

--SELECT - LIKE koşulu
--LIKE : Sorgulama yaparken belirli kalıp ifadeleri kullanabilmemizi sağlar
--ILIKE : Sorgulama yaparken büyük/küçük harfe duyarsız olarak eşleştirir
--LIKE : ~~
---ILIKE : ~~*
--NOT LIKE : !~~
--NOT ILIKE :!~~*
--% --> 0 veya daha fazla karakteri belirtir.
--_ --> Tek bir karakteri belirtir

-- 11) id'si 3,5,7 ve 9 olan personel bilgilerini listeleyiniz.
select *from personel where id in(3,5,7,9)
-- 12) yaşı 39,48 ve 54 olmayan personel bilgilerini listeleyiniz.
select *from personel where yas not in (39,48,54)

-- 13) yaşı 30 ve 40 arasında olan personel bilgilerini listeleyiniz.
select*from personel where yas between  30 and 40
-- 14) yaşı 30 ve 40 arasında olmyan personel bilgilerini listeleyiniz.
select * from personel where yas<30 or yas>40
select *from personel where yas not between 30 and 40;

-- 15) emaili null olan personel bilgilerini listeleyiniz.
select *from personel where email is null
-- 16) personel bilgilerini yaşa göre sıralayınız.
select *from personel order by yas
-- 17) personel bilgilerini maaşa göre sıralayınız.
select *from personel order by maas
-- 18) personelin yaşlarını büyükten küçüğe doğru sıralayınız.
select *from personel order by maas desc
-- 20) En yüksek maaş olan ilk 3 personel bilgilerini sıralayınız
select *from personel order by maas desc limit 3

CREATE TABLE workers
(
  id int,
  name varchar(20),
  title varchar(60),
  manager_id int
);
INSERT INTO workers VALUES(1, 'Ali Can', 'Dev', 2);
INSERT INTO workers VALUES(2, 'John Davis', 'QA', 3);
INSERT INTO workers VALUES(3, 'Angie Star', 'Dev Lead', 4);
INSERT INTO workers VALUES(4, 'Amy Sky', 'CEO', 5);

select * from workers;

-- Tabloya company_industry isminde sütun ekleyiniz
alter table workers add company_industry varchar(20)
-- TABLOYA worker_address sütunu ve defaullt olarakta 'Miami, FL, USA' adresini ekleyiniz.
alter table workers add worker_address varchar(100) default 'miami,fl,usa'
-- tablodaki worker_address sütununu siliniz
alter table workers drop column worker_address;
-- Tablodaki company_industry sütununu, company_profession olarak değiştiriniz.
alter table workers rename column company_industry to company_profession 
-- Tablonun ismini employees olarak değişitiriniz.
alter table workers rename to employees

select*from employees


Muzaffer
  
-- Tablodaki title sütununa data tipini VARCHAR(50) olarak değiştiriniz.
alter  table employees  alter column title type varchar(50)
-- Tablodaki title sütununa "UNIQUE" kıstlaması ekleyiniz.
alter table employees add constraint hasan unique (title)

-- TABLOYA DATA EKLEME
CREATE TABLE students
(
    student_id CHAR(3) PRIMARY KEY,
    student_name VARCHAR(50) UNIQUE,
    student_age int NOT NULL,
    student_dob DATE,
    CONSTRAINT student_age_check CHECK(student_age BETWEEN 0 AND 20)
);
-- Tam veri girişi
INSERT INTO students VALUES(101, 'ALI CAN', 13, '021-08-11');
INSERT INTO students VALUES(102, 'VELI HAN', 14, '2007-08-10');
INSERT INTO students VALUES(103, 'AYSE TAN', 14, '2007-08-08');
INSERT INTO students VALUES(104, 'KEMAL KUZU', 15, null);
INSERT INTO students VALUES(105, 'TOM HANKS', 20, '2005-10-12');
INSERT INTO students VALUES(106, 'ANGELINA JULIE', 18, '1986-10-12');
INSERT INTO students VALUES(107, 'BRAD PITT', 0, '2021-08-10');
-- Parçalı veri girişi
INSERT INTO students(student_id, student_age) VALUES('108', 17);
INSERT INTO students(student_name, student_id, student_age) VALUES('JOHN DAVID', '109', 20);
select * from students;

-- 101 id öğrencinin ismini 'LEO OCEAN' olarak güncelleyinin