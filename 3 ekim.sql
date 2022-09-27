--function oluşturma
--1. örnek : iki parametre ile calışıp buparametreleritoplayark return yapan bir fonksiyon oluşturun

CREATE or replace  FUNCTION toplamaf( x numeric , y numeric)
returns numeric
language plpgsql
as
$$
 begin

 return x+y;


 end
$$
SELECT * FROM toplamaf(15,25)as toplam;