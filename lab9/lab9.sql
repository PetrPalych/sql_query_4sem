-- CREATE DATABASE lab9;
USE lab9;

-- CREATE TABLE tip_klient (
--     id_tip_klient INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     tip_klient VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE rayon (
--     id_rayon INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     rayon VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE klient_ (
--     id_klient INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     fam VARCHAR(50) NOT NULL,
--     imya VARCHAR(50) NOT NULL,
--     otch VARCHAR(50) NOT NULL,
--     passport VARCHAR(12) NOT NULL,
--     pasword VARCHAR(50) NOT NULL,
--     loginn VARCHAR(50) NOT NULL,
--     mesto_raboty VARCHAR(50) NOT NULL,
--     skidka VARCHAR(50) NOT NULL,
--     id_rayon INT NOT NULL,
--     id_tip_klient INT NOT NULL,
--     FOREIGN KEY (id_rayon) REFERENCES rayon (id_rayon),
--     FOREIGN KEY (id_tip_klient) REFERENCES tip_klient (id_tip_klient)
-- );

-- CREATE TABLE tip_kontaktov (
--     id_tip_kontaktov INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     tip_kontaktov VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE kontakty (
--     id_kontakty INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     kontakty VARCHAR(50) NOT NULL,
--     id_klient INT NOT NULL,
--     id_tip_kontaktov INT NOT NULL,
--     FOREIGN KEY (id_klient) REFERENCES klient_ (id_klient),
--     FOREIGN KEY (id_tip_kontaktov) REFERENCES tip_kontaktov (id_tip_kontaktov)
-- );

-- CREATE TABLE tip_zakaza (
--     id_tip_zakaza INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     tip_zakaza VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE tip_prodaj (
--     id_tip_prodaj INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     tip_prodaj VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE sostoyanie (
--     id_sostoyanie INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     sostoyanie VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE doljnist (
--     id_doljnist INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     doljnist VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE sotrudnik (
--     id_sotrudnik INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     fam VARCHAR(50) NOT NULL,
--     imya VARCHAR(50) NOT NULL,
--     otch VARCHAR(50) NOT NULL,
--     id_doljnist INT NOT NULL,
--     FOREIGN KEY (id_doljnist) REFERENCES doljnist (id_doljnist)
-- );

-- CREATE TABLE zakaz (
--     id_zakaz INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     dataPos DATE NOT NULL,
--     nommer_doc VARCHAR(50) NOT NULL,
--     comments VARCHAR(50) NOT NULL,
--     id_klient INT NOT NULL,
--     id_tip_zakaza INT NOT NULL,
--     id_sostoyanie INT NOT NULL,
--     id_tip_prodaj INT NOT NULL,
--     id_sotrudnik INT NOT NULL,
--     FOREIGN KEY (id_klient) REFERENCES klient_ (id_klient),
--     FOREIGN KEY (id_tip_zakaza) REFERENCES tip_zakaza (id_tip_zakaza),
--     FOREIGN KEY (id_sostoyanie) REFERENCES sostoyanie (id_sostoyanie),
--     FOREIGN KEY (id_tip_prodaj) REFERENCES tip_prodaj (id_tip_prodaj),
--     FOREIGN KEY (id_sotrudnik) REFERENCES sotrudnik (id_sotrudnik)
-- );

-- CREATE TABLE vid_oplaty (
--     id_vid_oplaty INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     vid_oplaty VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE oplata (
--     id_oplata INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     dataOplati DATE NOT NULL,
--     summa FLOAT NOT NULL,
--     comments VARCHAR(50) NOT NULL,
--     id_zakaz INT NOT NULL,
--     id_vid_oplaty INT NOT NULL,
--     FOREIGN KEY (id_zakaz) REFERENCES zakaz (id_zakaz),
--     FOREIGN KEY (id_vid_oplaty) REFERENCES vid_oplaty (id_vid_oplaty)
-- );

-- CREATE TABLE tip_tovara (
--     id_tip_tovara INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     tip_tovara VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE tovar (
--     id_tovar INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     tovar VARCHAR(50) NOT NULL,
--     comments VARCHAR(50) NOT NULL,
--     photo VARCHAR(500) NOT NULL,
--     id_tip_tovara INT NOT NULL,
--     FOREIGN KEY (id_tip_tovara) REFERENCES tip_tovara (id_tip_tovara)
-- );

-- CREATE TABLE price_list (
--     id_price_list INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     cena FLOAT NOT NULL,
--     dataa DATE NOT NULL,
--     comments NVARCHAR(50) NOT NULL,
--     id_tovar INT NOT NULL,
--     FOREIGN KEY (id_tovar) REFERENCES tovar (id_tovar)
-- ); 

-- CREATE TABLE tip_postavshika (
--     id_tip_postavshika INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     tip_postavshika VARCHAR(50) NOT NULL
-- ); 

-- CREATE TABLE postavshik (
--     id_postavshik INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     nazvanie VARCHAR(50) NOT NULL,
--     fam VARCHAR(50) NOT NULL,
--     imya VARCHAR(50) NOT NULL,
--     otch VARCHAR(50) NOT NULL,
--     id_tip_postavshika INT NOT NULL,
--     FOREIGN KEY (id_tip_postavshika) REFERENCES tip_postavshika (id_tip_postavshika)
-- );

-- CREATE TABLE tip_postavki (
--     id_tip_postavki INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     tip_postavki VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE postavki (
--     id_postavki INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     nomer_doc VARCHAR(50) NOT NULL,
--     dataa DATE NOT NULL,
--     comments VARCHAR(500) NOT NULL,
--     id_postavshik INT NOT NULL,
--     id_tip_postavki INT NOT NULL,
--     FOREIGN KEY (id_postavshik) REFERENCES postavshik (id_postavshik),
--     FOREIGN KEY (id_tip_postavki) REFERENCES tip_postavki (id_tip_postavki)
-- );

-- CREATE TABLE oplataPostavki (
--     id_oplata INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     dataOp DATE NOT NULL,
--     summa FLOAT NOT NULL,
--     comments VARCHAR(500) NOT NULL,
--     id_postavki INT NOT NULL,
--     FOREIGN KEY (id_postavki) REFERENCES postavki (id_postavki)
-- );

-- CREATE TABLE spisok_postavki (
--     id_spisok_postavki INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     id_postavki INT NOT NULL,
--     ceana FLOAT NOT NULL,
--     kol_vo INT NOT NULL,
--     srok_godnosti DATE NOT NULL,
--     FOREIGN KEY (id_postavki) REFERENCES postavki (id_postavki)
-- );

-- CREATE TABLE spisok_tovarov (
--     id_spisok_tovarov INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     cena FLOAT NOT NULL,
--     kolichestvo INT NOT NULL,
--     id_zakaz INT NOT NULL,
--     id_tovar INT NOT NULL,
--     id_spisok_postavki INT NOT NULL,
--     FOREIGN KEY (id_zakaz) REFERENCES zakaz (id_zakaz),
--     FOREIGN KEY (id_tovar) REFERENCES tovar (id_tovar),
--     FOREIGN KEY (id_spisok_postavki) REFERENCES spisok_postavki (id_spisok_postavki)
-- );







-- INSERT INTO tip_tovara (tip_tovara) VALUES 
-- ('Electronics'),
-- ('Clothing'),
-- ('Furniture'),
-- ('Home goods');

-- INSERT INTO tovar (tovar, comments, photo, id_tip_tovara) VALUES
-- ('iPhone', 'Latest model with great camera', 'iPhone.jpg', 1),
-- ('Shirt', 'Stylish and comfortable', 'Shirt.jpg', 2),
-- ('Sofa', 'Comfortable and spacious', 'Sofa.jpg', 3),
-- ('Blender', 'Powerful and easy to use', 'Blender.jpg', 4);

-- INSERT INTO price_list (cena, dataa, comments, id_tovar) VALUES 
-- (999.99, '2022-12-01', 'Launch price', 1),
-- (39.99, '2022-06-01', 'Summer collection', 2),
-- (499.99, '2022-08-01', 'Limited offer', 3),
-- (79.99, '2022-09-01', 'Fall collection', 4);

-- INSERT INTO tip_postavshika (tip_postavshika) VALUES 
-- ('Manufacturer'),
-- ('Retailer'),
-- ('Distributor'),
-- ('Wholesaler');

-- INSERT INTO postavshik (nazvanie, fam, imya, otch, id_tip_postavshika) VALUES 
-- ('Apple Inc.', 'Steve', 'P', 'Jobs', 1),
-- ('Best Buy', 'Hubert', 'J', 'Whitmore', 2),
-- ('Samsung', 'Lee', 'Byung-chul', 'P', 3),
-- ('Costco', 'James', 'Sinegal', 'S', 4);

-- INSERT INTO tip_postavki (tip_postavki) VALUES
-- ('Ground Shipping'),
-- ('2-Day Shipping'),
-- ('Next Day Shipping'),
-- ('International Shipping');

-- INSERT INTO postavki (nomer_doc, dataa, comments, id_postavshik, id_tip_postavki) VALUES 
-- ('P0001', '2022-01-01', 'First shipment from Apple Inc.', 1, 1),
-- ('P0002', '2022-02-01', 'Monthly shipment from Best Buy', 2, 2),
-- ('P0003', '2022-03-01', 'Weekly shipment from Samsung', 3, 3),
-- ('P0004', '2022-04-01', 'Monthly shipment from Costco', 4, 4);

-- INSERT INTO oplataPostavki (dataOp, summa, comments, id_postavki) VALUES 
-- ('2022-01-05', 1000, 'Payment for shipment P0001', 1),
-- ('2022-02-01', 2000, 'Payment for shipment P0002', 2),
-- ('2022-03-10', 1500, 'Payment for shipment P0003', 3),
-- ('2022-04-15', 2500, 'Payment for shipment P0004', 4);

-- INSERT INTO spisok_postavki (id_postavki, ceana, kol_vo, srok_godnosti) VALUES 
-- (1, 20, 50, '2022-12-31'),
-- (2, 30, 40, '2023-05-31'),
-- (3, 25, 60, '2023-07-31'),
-- (4, 35, 70, '2023-10-31');

-- INSERT INTO rayon(rayon) VALUES 
-- ('Central'),
-- ('Suburban'),
-- ('Rural');

-- INSERT INTO tip_klient(tip_klient) VALUES 
-- ('Retail'),
-- ('Wholesale'),
-- ('Private');

-- INSERT INTO klient_(fam, imya, otch, passport, pasword, loginn, mesto_raboty, skidka, id_rayon, id_tip_klient) VALUES 
-- ('John', 'A', 'Doe', '123456789', 'password1', 'johndoe', 'Microsoft', 10, 1, 1),
-- ('Jane', 'B', 'Doe', '987654321', 'password2', 'janedoe', 'Google', 20, 2, 2),
-- ('Jim', 'C', 'Smith', '111222333', 'password3', 'jimsmith', 'Apple', 30, 3, 3);

-- INSERT INTO tip_kontaktov(tip_kontaktov) VALUES 
-- ('email'), 
-- ('phone'), 
-- ('skype'), 
-- ('viber'), 
-- ('whatsapp');

-- INSERT INTO kontakty(kontakty, id_klient, id_tip_kontaktov) VALUES 
-- ('chingiz.kartanbaev@gmail.com', 1, 1),
-- ('0555261203', 2, 2),
-- ('Chingiz@skype', 3, 3);	

-- INSERT INTO sostoyanie (sostoyanie) VALUES 
-- ('active'), 
-- ('inactive'), 
-- ('suspended');

-- INSERT INTO tip_zakaza (tip_zakaza) VALUES 
-- ('Retail'), 
-- ('Wholesale'), 
-- ('Bulk');

-- INSERT INTO tip_prodaj (tip_prodaj) VALUES 
-- ('Retail'), 
-- ('Wholesale'), 
-- ('Online');

-- INSERT INTO doljnist (doljnist) VALUES 
-- ('Manager'), 
-- ('Developer'), 
-- ('Sales representative'), 
-- ('Accountant'), 
-- ('Secretary');

-- INSERT INTO sotrudnik (fam, imya, otch, id_doljnist) VALUES 
-- ('Бирюкова', 'Дарья', 'Даниэльевна', 1),
-- ('Зотов', 'Александр', 'Данилович', 3),
-- ('Мещеряков', 'Марк', 'Владимирович', 4);

-- INSERT INTO vid_oplaty (vid_oplaty) VALUES 
-- ('cash'), 
-- ('non-cash'), 
-- ('credit card');

-- INSERT INTO zakaz (dataPos, nommer_doc, comments, id_klient, id_tip_zakaza, id_sostoyanie, id_tip_prodaj, id_sotrudnik) VALUES ('2023-02-11', '0001', 'Комментарий 1', 1, 1, 1, 1, 1),
-- ('2023-02-12', '0002', 'Комментарий 2', 2, 2, 2, 2, 2),
-- ('2023-02-13', '0003', 'Комментарий 3', 3, 3, 3, 3, 3);

-- INSERT INTO oplata (dataOplati, summa, comments, id_zakaz, id_vid_oplaty) VALUES
-- ('2022-01-01', 1000, 'Payment for order 1', 1, 1),
-- ('2022-02-01', 500, 'Payment for order 2', 2, 2),
-- ('2022-03-01', 800, 'Payment for order 3', 3, 3);

-- INSERT INTO spisok_tovarov(cena, kolichestvo, id_zakaz, id_tovar, id_spisok_postavki) VALUES
-- (100, 2, 1, 1, 1),
-- (200, 3, 2, 2, 2),
-- (150, 4, 3, 3, 3);







-- 1) Список поставки за период по товарам
-- SELECT * FROM spisok_postavki
-- 	WHERE id_spisok_postavki in (SELECT id_spisok_postavki FROM spisok_tovarov 
-- 		WHERE id_tovar in (SELECT id_tovar FROM tovar 
-- 			WHERE id_tovar in (SELECT id_tovar FROM price_list 
-- 				WHERE dataa = '2022-06-01')));



-- 2) Список товаров поставленных по поставщику
-- SELECT * FROM spisok_tovarov
-- 	WHERE id_spisok_postavki in (SELECT id_spisok_postavki FROM spisok_postavki 
-- 		WHERE id_postavki in (SELECT id_postavki FROM postavki 
-- 			WHERE id_postavshik in (SELECT id_postavshik FROM postavshik 
-- 				WHERE nazvanie = 'Best Buy')));



-- 3) Список товаров поставленных по типу товара
-- SELECT * FROM spisok_postavki
-- 	WHERE id_spisok_postavki in (SELECT id_spisok_postavki FROM spisok_tovarov 
-- 		WHERE id_tovar in (SELECT id_tovar FROM tovar 
-- 			WHERE tovar = 'iPhone'));



-- 4) Поставки по товарам за период
-- SELECT * FROM postavki
-- 	WHERE id_postavki in (SELECT id_postavki FROM spisok_postavki 
-- 		WHERE id_spisok_postavki in (SELECT id_spisok_postavki FROM spisok_tovarov 
-- 			WHERE id_tovar in (SELECT id_tovar FROM tovar 
-- 				WHERE tovar = 'iPhone' AND dataa BETWEEN '2022-06-01' AND '2021-06-01')));



-- 5) Изменение цен на товары, поставленные за период
-- UPDATE price_list SET cena = 134
-- 	WHERE dataa >= '2022-09-01' AND dataa <= '2022-12-01';



-- 6) Оплата по поставкам (журнал) за период
-- SELECT * FROM oplata
-- 	WHERE id_zakaz in (SELECT id_zakaz FROM zakaz 
-- 		WHERE id_zakaz in (SELECT id_zakaz FROM spisok_tovarov 
-- 			WHERE id_spisok_postavki IN (SELECT id_spisok_postavki FROM spisok_postavki 
-- 				WHERE id_postavki in (SELECT id_postavki FROM postavki 
-- 					WHERE dataa BETWEEN ('2022-01-01')and('2022-03-01')))));



-- 7) Оплата по поставкам по клиенту за период
-- SELECT * FROM oplata
-- 	WHERE id_zakaz in (SELECT id_zakaz, id_klient FROM zakaz 
-- 		WHERE id_klient = 1 && id_zakaz in (SELECT id_zakaz FROM spisok_tovarov 
-- 			WHERE id_spisok_postavki IN (SELECT id_spisok_postavki FROM spisok_postavki 
-- 				WHERE id_postavki in (SELECT id_postavki FROM postavki 
-- 					WHERE dataa BETWEEN ('2022-01-01')and('2022-03-01')))));






-- 1) Список продаж за период по товарам
-- SELECT * FROM oplata 
-- 	WHERE dataOPlati BETWEEN '2022-12-12' AND '2023-12-12' 
-- 		&& id_zakaz IN (SELECT id_zakaz FROM zakaz
-- 			WHERE id_zakaz IN (SELECT id_zakaz FROM spisok_tovarov
-- 				WHERE id_spisok_tovarov IN (SELECT id_tovar FROM tovar
-- 					WHERE tovar = 'iPhone')));



-- 2) Заказы клиента за период
-- SELECT * FROM zakaz
-- 	WHERE id_klient in (SELECT id_klient FROM klient_ 
-- 		WHERE id_klient = 1) and dataPos BETWEEN ('2023-02-11') AND ('2023-02-12');



-- 3) Список товаров проданных за период
-- SELECT * FROM tovar
-- 	WHERE id_tovar IN (SELECT id_tovar FROM spisok_tovarov
-- 		WHERE id_zakaz IN (SELECT id_zakaz FROM zakaz 
-- 			WHERE id_zakaz IN (SELECT id_zakaz FROM oplata)
-- 				&& dataPos BETWEEN '2022-12-12' AND '2023-12-12'));



-- 5) Изменение цен на товары, поставленные за период
-- UPDATE price_list SET cena = 134
-- 	WHERE dataa >= '2022-09-01' AND dataa <= '2022-12-01';



-- 6) Актуальный прайс-лист
-- SELECT * FROM price_list;



-- 7) Оплата по продажам (журнал) за период
-- SELECT id_oplata, summa, id_zakaz FROM oplata
-- 	WHERE dataOplati >= '2022-01-01' AND dataOplati <= '2022-03-01';



-- 8) Оплата по виду оплаты за период
-- SELECT summa FROM oplata
-- 	WHERE id_vid_oplaty = (SELECT id_vid_oplaty from vid_oplaty 
-- 		WHERE vid_oplaty = 'cash') AND dataOplati >= '2022-01-01' AND dataOplati <= '2022-03-01';



-- 9) Продажи по сотруднику журнал
-- SELECT * FROM zakaz WHERE id_sotrudnik = 1;



-- 10) Продажи по сотрудникам статистика
-- SELECT * FROM zakaz WHERE id_sotrudnik IN (SELECT id_sotrudnik FROM sotrudnik);



-- 11) Продажи по району за период
-- SELECT * FROM zakaz
-- 	WHERE id_klient in (SELECT id_klient FROM klient_ 
-- 		WHERE id_rayon in (SELECT id_rayon FROM rayon 
-- 			WHERE rayon = 'Central'));



-- 12) Статистика продаж по типу клиентов за период
-- SELECT * FROM zakaz
-- 	WHERE id_klient IN (SELECT id_klient FROM klient_
-- 		WHERE id_tip_klient IN (SELECT id_tip_klient FROM tip_klient 
-- 			WHERE tip_klient = 'Retail'));



-- 13) Контакты клиентов
-- SELECT kontakty FROM kontakty
-- 	WHERE id_klient = (SELECT id_klient FROM klient_ 
-- 		WHERE id_klient = 2);



-- 14) Заказы по типу продаж за период
-- SELECT * FROM zakaz
-- 	WHERE id_tip_prodaj IN (SELECT id_tip_prodaj FROM tip_prodaj
-- 		WHERE tip_prodaj = 'Online');



-- 15) Заказы по типу заказа за период
-- SELECT * FROM zakaz
-- 	WHERE id_tip_zakaza IN (SELECT id_tip_zakaza FROM tip_zakaza
-- 		WHERE tip_zakaza = 'Bulk');