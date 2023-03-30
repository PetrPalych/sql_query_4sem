USE contacts;

-- 1)
-- SELECT * FROM district;
-- SELECT * FROM field_of_industry;
-- SELECT * FROM klient;
-- SELECT * FROM kontakty;
-- SELECT * FROM tip_klienta;
-- SELECT * FROM tip_kontaktov;

-- SELECT sum(tbl.EachTableCount) FROM (
-- SELECT count(*) AS EachTableCount FROM district 
-- UNION ALL 
-- SELECT count(*) AS EachTableCount FROM field_of_industry 
-- UNION ALL
-- SELECT count(*) AS EachTableCount FROM klient 
-- UNION ALL
-- SELECT count(*) AS EachTableCount FROM kontakty 
-- UNION ALL
-- SELECT count(*) AS EachTableCount FROM tip_klienta 
-- UNION ALL
-- SELECT count(*) AS EachTableCount FROM tip_kontaktov)tbl;

-- 2)
-- SELECT * FROM klient;
-- SELECT * FROM district;

-- SELECT count(*) FROM klient
-- WHERE id_district = (SELECT id_district FROM district WHERE district = "Ленинский");

-- SELECT count(*) FROM klient
-- WHERE id_district = (SELECT id_district FROM district WHERE district = "Первомайский");

-- SELECT count(*) FROM klient
-- WHERE id_district = (SELECT id_district FROM district WHERE district = "Сверловский");

-- SELECT count(*) FROM klient
-- WHERE id_district = (SELECT id_district FROM district WHERE district = "Октябрьский");

-- 3)
-- same as 2)

-- 4)
-- SELECT count(*) FROM klient WHERE record_date <= "2018-05-01";

-- 5)
-- SELECT * FROM kontakty;
-- SELECT * FROM klient;

-- SELECT count(*) FROM kontakty WHERE id_klient = 3;

-- 6)
-- SELECT * from tip_klienta;

-- SELECT count(*) FROM kontakty 
-- WHERE id_klient IN (SELECT id_klient FROM klient WHERE id_tip_klienta = (SELECT id_tip_klienta FROM tip_klienta 
-- WHERE tip_klienta = "Юридические лица"));

-- 7)
-- SELECT * FROM klient 
-- WHERE id_klient NOT IN (SELECT id_klient FROM kontakty);

-- 8)
-- SELECT count(*) FROM kontakty 
-- WHERE id_klient IN (SELECT id_klient FROM klient WHERE id_klient = 3 && record_date <= '2019.10.10');