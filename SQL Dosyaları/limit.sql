
--LİMİT--

-- KİİSLER TABLOSUNDAKİ İLK 5 KİŞİYİ SIRALAR--


select * from kisiler limit 5 --ilk 5 veri sıralanır
select * from kisiler limit 5 offset 2 --ilk 2 veriden sonraki 5 veriyi listeler
select * from kisiler where id>5 limit 2  --id si 5 den büyük olan ilk iki veri
select * from kisiler order by maas desc limit 3 --maası en yüksek ilk üç
select * from kisiler order by maas desc limit 3 offset 3  -- maası en yüksek olan 3 kişiden sonraki 3 kişi yani 4,5,6

