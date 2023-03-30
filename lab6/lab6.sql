USE contacts;






-- 1)
-- SELECT * FROM klient WHERE id_klient = 3;

-- 2)
-- SELECT * FROM klient 
-- 	WHERE id_field_of_industry = (SELECT id_field FROM field_of_industry WHERE field_of_industry = "Бухгалтерия");

-- 3)
-- SELECT * FROM klient
-- 	WHERE id_district = (SELECT id_district FROM district WHERE district = "Первомайский");

-- 4)
-- SELECT * FROM kontakty
-- 	WHERE id_klient = (SELECT id_klient FROM klient 
-- 		WHERE id_district = (SELECT id_district FROM district WHERE district = "Аламединский"));

-- 5)
-- SELECT * FROM kontakty
-- 	WHERE id_klient = (SELECT id_klient FROM klient 
-- 		WHERE id_district = (SELECT id_district FROM district 
-- 			WHERE district = "Первомайский") && id_field_of_industry = (SELECT id_field FROM field_of_industry 
-- 				WHERE field_of_industry = "Бухгалтерия"));

-- 6)
-- SELECT * FROM klient 
-- 	WHERE id_district = (SELECT id_district FROM district 
-- 		WHERE district = "Октябрьский") && first_name LIKE "А%";

-- 7)
-- SELECT * FROM klient;
-- SELECT * FROM district;

-- SELECT COUNT(id_klient) FROM klient
-- 	WHERE id_district = (SELECT id_district FROM district 
-- 		WHERE district = "Ленинский");

-- SELECT COUNT(id_klient) FROM klient
-- 	WHERE id_district = (SELECT id_district FROM district 
-- 		WHERE district = "Первомайский");

-- SELECT COUNT(id_klient) FROM klient
-- 	WHERE id_district = (SELECT id_district FROM district 
-- 		WHERE district = "Сверловский");

-- SELECT COUNT(id_klient) FROM klient
-- 	WHERE id_district = (SELECT id_district FROM district 
-- 		WHERE district = "Октябрьский");

-- 8)
-- SELECT * FROM klient;
-- SELECT * FROM field_of_industry;

-- SELECT COUNT(id_klient) FROM klient
-- 	WHERE id_field_of_industry = (SELECT id_field FROM field_of_industry 
-- 		WHERE field_of_industry = "Реклама");

-- SELECT COUNT(id_klient) FROM klient
-- 	WHERE id_field_of_industry = (SELECT id_field FROM field_of_industry 
-- 		WHERE field_of_industry = "Маркетинг");

-- SELECT COUNT(id_klient) FROM klient
-- 	WHERE id_field_of_industry = (SELECT id_field FROM field_of_industry 
-- 		WHERE field_of_industry = "Бухгалтерия");

-- 9)
-- SELECT * FROM klient;
-- SELECT * FROM kontakty;

-- SELECT last_name FROM klient
-- 	WHERE id_klient = (SELECT id_klient FROM kontakty 
-- 		WHERE id_kontakty = 5);

-- 10)
-- SELECT * FROM klient;
-- SELECT * FROM kontakty;

-- SELECT id_district, id_tip_klienta FROM klient
-- 	WHERE id_klient = (SELECT id_klient FROM kontakty 
-- 		WHERE id_kontakty = 6);

-- 11)
-- SELECT * FROM klient;
-- SELECT * FROM tip_kontaktov;

-- SELECT id_district, id_tip_klienta FROM klient
-- 	WHERE id_klient = (SELECT id_tip_kontaktov FROM tip_kontaktov 
-- 		WHERE tip_kontaktov = "0555345678");

-- 12)
-- SELECT * FROM klient;
-- SELECT * FROM kontakty;

-- SELECT id_district, id_tip_klienta, id_field_of_industry, last_name FROM klient
-- 	WHERE id_klient = (SELECT id_klient FROM kontakty 
-- 		WHERE id_kontakty = 6);

-- 13)
-- SELECT * FROM kontakty
-- WHERE id_kontakty <= 5

-- 14)
-- SELECT * FROM klient;
-- SELECT * FROM district;

-- SELECT * FROM kontakty
-- 	WHERE id_klient = (SELECT id_klient FROM klient 
-- 		WHERE id_district = (SELECT id_district FROM district 
-- 			WHERE district = "Первомайский"));