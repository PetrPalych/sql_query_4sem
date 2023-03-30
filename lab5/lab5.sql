-- CREATE DATABASE contacts;
USE contacts;






-- CREATE TABLE tip_klienta (
--     id_tip_klienta INT NOT NULL AUTO_INCREMENT,
--     tip_klienta VARCHAR(50) NOT NULL,

--     PRIMARY KEY (id_tip_klienta)
-- );

-- CREATE TABLE field_of_industry (
--     id_field INT NOT NULL AUTO_INCREMENT,
--     field_of_industry VARCHAR(50) NOT NULL,

--     PRIMARY KEY (id_field)
-- );

-- CREATE TABLE district (
--     id_district INT NOT NULL AUTO_INCREMENT,
--     district VARCHAR(50) NOT NULL,

--     PRIMARY KEY (id_district)
-- );

-- CREATE TABLE klient (
--     id_klient INT NOT NULL AUTO_INCREMENT,
--     first_name VARCHAR(50) NOT NULL,
--     middle_name VARCHAR(50) NOT NULL,
--     last_name VARCHAR(50) NOT NULL,
--     record_date DATE NOT NULL,
--     office VARCHAR(50),
--     position VARCHAR(50),
--     comments VARCHAR(50),
--     id_tip_klienta INT NOT NULL,
--     id_field_of_industry INT NOT NULL,
--     id_district INT NOT NULL,
--     
--     PRIMARY KEY (id_klient),
--     
--     FOREIGN KEY (id_tip_klienta)
--         REFERENCES tip_klienta (id_tip_klienta),
--         
--     FOREIGN KEY (id_field_of_industry)
--         REFERENCES field_of_industry (id_field),
--         
--     FOREIGN KEY (id_district)
--         REFERENCES district (id_district)
-- );

-- CREATE TABLE tip_kontaktov (
--     id_tip_kontaktov INT NOT NULL AUTO_INCREMENT,
--     tip_kontaktov VARCHAR(50) NOT NULL,
--     
--     PRIMARY KEY (id_tip_kontaktov)
-- );

-- CREATE TABLE kontakty (
--     id_kontakty INT NOT NULL AUTO_INCREMENT,
--     kontakty VARCHAR(50) NOT NULL,
--     id_tip_kontaktov INT,
--     id_klient INT,
--     
--     PRIMARY KEY (id_kontakty),
--     
--     FOREIGN KEY (id_tip_kontaktov)
--         REFERENCES tip_kontaktov (id_tip_kontaktov),
--         
--     FOREIGN KEY (id_klient)
--         REFERENCES klient (id_klient)
-- );






-- INSERT district (district) VALUES
-- ('Ленинский'),
-- ('Первомайский'),
-- ('Сверловский'),
-- ('Октябрьский');

-- INSERT field_of_industry (field_of_industry) VALUES
-- ('Реклама'),
-- ('Маркетинг'),
-- ('Бухгалтерия');

-- INSERT tip_klienta (tip_klienta) VALUES 
-- ('Физические лица'),
-- ('Юридические лица');

-- INSERT tip_kontaktov (tip_kontaktov) VALUES
-- ('e_mail'),
-- ('телефон88'),
-- ('адресwww18'),
-- ('WhatsApp'),
-- ('Viber'),
-- ('ОРПАО'),
-- ('484'),
-- ('7878'),
-- ('000'),
-- ('sss'),
-- ('123'),
-- ('апрапр пра вап'),
-- ('Twitch');

-- INSERT klient (last_name, first_name, middle_name, record_date, office, position, comments, id_tip_klienta, id_field_of_industry, id_district) VALUES
-- ('Иванов', 'Иван', 'Иванович', '2018-02-01', '...', '...', '...', 1, 1, 1),
-- ('Петров', 'Петр', 'Петрович', '2018-03-01', '...', '...', '...',1 ,3, 2),
-- ('Сидоров', 'Сидор', 'Сидорович', '2018-06-01', 'ОсОО Ош-3000', 'Модератор', 'no comments', 2, 1, 3),
-- ('Краснова', 'Ирина', 'Петровна', '2018-05-01', null, null, null, 1, 3, 4);

-- INSERT kontakty (kontakty, id_tip_kontaktov, id_klient) VALUES
-- ('ivan@bk.ru', 1, 2),
-- ('0312235689', 2, 2),
-- ('pertrovich@mail.ru', 1, 3);






-- DELETE FROM klient WHERE id_klient > 2;

-- UPDATE klient SET last_name = 'newName' WHERE id_klient = 1;

-- UPDATE klient SET id_district = 3 WHERE id_klient = 1;

-- UPDATE klient SET first_name = 'name', middle_name = 'name', last_name = 'name' WHERE id_klient = 1;