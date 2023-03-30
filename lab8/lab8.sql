-- CREATE DATABASE uni;
USE uni;

-- CREATE TABLE fakultet (
-- id_fakultet INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
-- fakultet VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE kafedra (
-- id_kafedra INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
-- kafedra VARCHAR(50) NOT NULL,
-- id_fakultet INT NOT NULL,
-- FOREIGN KEY (id_fakultet) REFERENCES fakultet(id_fakultet)
-- );

-- CREATE TABLE gruppa (
-- id_gruppa INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
-- gruppa VARCHAR(50) NOT NULL,
-- id_kafedra INT NOT NULL,
-- FOREIGN KEY (id_kafedra) REFERENCES kafedra(id_kafedra)
-- );

-- CREATE TABLE tip_nas_punkt (
-- id_tip_nas_punkt INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
-- tip_nas_punkt VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE oblast (
-- id_oblast INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
-- oblast VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE rayon (
-- id_rayon INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
-- rayon VARCHAR(50) NOT NULL,
-- id_oblast INT NOT NULL,
-- FOREIGN KEY (id_oblast) REFERENCES oblast(id_oblast)
-- );

-- CREATE TABLE nas_punkt (
-- id_nas_punkt INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
-- nas_punkt VARCHAR(50) NOT NULL,
-- id_tip_nas_punkt INT NOT NULL,
-- id_rayon INT NOT NULL,
-- FOREIGN KEY (id_tip_nas_punkt) REFERENCES tip_nas_punkt(id_tip_nas_punkt),
-- FOREIGN KEY (id_rayon) REFERENCES rayon(id_rayon)
-- );

-- CREATE TABLE grajdanstvo (
-- id_grajdanstvo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
-- grajdanstvo VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE natsionalnost (
-- id_natsionalnost INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
-- natsionalnost VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE pol (
-- id_pol INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
-- pol VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE student (
-- id_student INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
-- fam VARCHAR(50) NOT NULL,
-- imya VARCHAR(50) NOT NULL,
-- otch VARCHAR(50) NOT NULL,
-- passport VARCHAR(12) NOT NULL,
-- pasword VARCHAR(50) NOT NULL,
-- red_date DATE NOT NULL,
-- id_gruppa INT NOT NULL,
-- id_nas_punkt INT NOT NULL,
-- id_natsionalnost INT NOT NULL,
-- id_pol INT NOT NULL,
-- id_grajdanstvo INT NOT NULL,
-- comments VARCHAR(500) NOT NULL,
-- foto VARCHAR(500),
-- FOREIGN KEY (id_gruppa) REFERENCES gruppa(id_gruppa),
-- FOREIGN KEY (id_nas_punkt) REFERENCES nas_punkt(id_nas_punkt),
-- FOREIGN KEY (id_natsionalnost) REFERENCES natsionalnost(id_natsionalnost),
-- FOREIGN KEY (id_pol) REFERENCES pol(id_pol),
-- FOREIGN KEY (id_grajdanstvo) REFERENCES grajdanstvo(id_grajdanstvo)
-- );

-- CREATE TABLE tip_kont (
-- id_tip_kont INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
-- tip_kont VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE kontakty (
-- id_kontakty INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
-- id_student INT NOT NULL,
-- id_tip_kont INT NOT NULL,
-- FOREIGN KEY (id_student) REFERENCES student(id_student),
-- FOREIGN KEY (id_tip_kont) REFERENCES tip_kont(id_tip_kont)
-- );

-- CREATE TABLE sostav (
-- id_sostav INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
-- sostav VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE zvanie (
-- id_zvanie INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
-- zvanie VARCHAR(50) NOT NULL,
-- id_sostav INT NOT NULL,
-- FOREIGN KEY (id_sostav) REFERENCES sostav(id_sostav)
-- );

-- CREATE TABLE voinsk_slujba (
-- id_voinskaya_sl INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
-- data_nachala DATE NOT NULL,
-- data_okonch DATE NOT NULL,
-- nomer_prikaza VARCHAR(50) NOT NULL,
-- comments VARCHAR(500) NOT NULL,
-- id_student INT NOT NULL,
-- id_zvanie INT NOT NULL,
-- FOREIGN KEY (id_student) REFERENCES student(id_student),
-- FOREIGN KEY (id_zvanie) REFERENCES zvanie(id_zvanie)
-- );

-- CREATE TABLE tip_pov_kvalif (
-- id_tip_pov_kvalif INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
-- tip_pov_kvalif VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE pov_kvalif (
-- id_pov_kvalif INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
-- data_pov DATE NOT NULL,
-- nomer_doc VARCHAR(50) NOT NULL,
-- comments VARCHAR(500) NOT NULL,
-- id_tip_pov_kvalif INT NOT NULL,
-- id_student INT NOT NULL,
-- FOREIGN KEY (id_tip_pov_kvalif) REFERENCES tip_pov_kvalif(id_tip_pov_kvalif),
-- FOREIGN KEY (id_student) REFERENCES student(id_student)
-- );

-- INSERT fakultet VALUES
-- (null, 'Ленинградское СВУ МВД'),
-- (null, 'Московское СВУ'),
-- (null, 'Московское военно-музыкальное училище'),
-- (null, 'Новочеркасское СВУ'),
-- (null, 'Саратовское СВУ');

-- INSERT kafedra VALUES
-- (null, 'Кафедра тактики и стратегии',1),
-- (null, 'Кафедра военной географии и военной истории',2),
-- (null, 'Кафедра военной инженерии',3),
-- (null, 'Кафедра военной этики и психологии',4),
-- (null, 'Кафедра истории и культуры',5);
--  
-- INSERT gruppa VALUES
-- (null, 'Ребята по истории',1),
-- (null, 'Математические гении',2),
-- (null, 'Физтех',3),
-- (null, 'Художественные мастера',4),
-- (null, 'Языковые асы',5);

-- INSERT grajdanstvo VALUES
-- (null, 'гражданин Российской Федерации'),
-- (null, 'гражданство Ватикана'),
-- (null, 'гражданство Кыргызстана'),
-- (null, 'гражданство США'),
-- (null, 'гражданство Дубаи');

-- INSERT natsionalnost VALUES
-- (null, 'Кыргыз'),
-- (null, 'Русский'),
-- (null, 'Казак'),
-- (null, 'Украинец'),
-- (null, 'Кореец');

-- INSERT pol VALUES
-- (null, 'М'),
-- (null, 'Ж');

-- INSERT oblast VALUES
-- (null, 'Чуй'),
-- (null, 'Ош'),
-- (null, 'Баткен'),
-- (null, 'Нурсултан'),
-- (null, 'Москва');

-- INSERT rayon VALUES
-- (null, 'Первомайский',1),
-- (null, 'Сверловский',2),
-- (null, 'Октябрьский',3),
-- (null, 'Ленинский',4),
-- (null, 'Аламединский',5);

-- INSERT tip_nas_punkt VALUES
-- (null, 'Городской тип населения'),
-- (null, 'Сельский тип населения'),
-- (null, 'Туристический тип населения'),
-- (null, 'Экономический тип населения'),
-- (null, 'Технологический тип населения');

-- INSERT nas_punkt VALUES
-- (null, 'Бишкек',1,1),
-- (null, 'Нарын',2,2),
-- (null, 'Ацфц',3,3),
-- (null, 'цфым',4,4),
-- (null, 'цаф',5,5);

-- INSERT student VALUES
-- (null, 'Картанбаев','Чингиз','Замирович','AB123425', 'qwerty', '2018-02-01', 1, 1, 1 ,1, 1, 'no comments', null),
-- (null, 'Петров','Петр','Петрович','AB123423','123','2018-03-01',2,2,2,1,2, 'again no comments', null),
-- (null, 'Сидоров','Сидор','Сидорович','AB1231245','323','2018-06-01',3,3,3,1,3, 'again no comments', null),
-- (null, 'Краснова','Ирина','Петровна', 'AB14231245','4125','2018-05-01',4,4,4,2,4,'again no comments', null);
-- 	
-- INSERT sostav VALUES
-- (null, 'Оперативный полк'),
-- (null, 'Войска поддержки'),
-- (null, 'Разведывательные единицы'),
-- (null, 'Единицы управления');

-- INSERT zvanie VALUES
-- (null, 'Генерал',1),
-- (null, 'Полковник',2),
-- (null, 'Капитан',3),
-- (null, 'Лейтенант',4),
-- (null, 'Сержант',1);

-- INSERT tip_pov_kvalif VALUES
-- (null, 'Beginner'),
-- (null, 'Intermediate'),
-- (null, 'Expert'),
-- (null, 'Specialist');

-- INSERT pov_kvalif VALUES
-- (null, '2020-12-12','AV1212','no comments', 1, 1),
-- (null, '2020-01-01','AV1251','no comments', 2, 2),
-- (null, '2020-10-10','AV1245','no comments', 3, 3),
-- (null, '2020-11-25','AV5212','no comments', 4, 4);

-- INSERT voinsk_slujba VALUES
-- (null, '2018-06-01','2019-06-01','AD23123', 'no comments', 1, 1),
-- (null, '2018-03-01', '2019-03-01', 'AD12421', 'again no comments', 2, 2),
-- (null, '2018-06-01', '2019-06-01', 'AV12343', 'hmm', 3, 3),
-- (null, '2018-05-01', '2019-05-01', 'AV12151', 'Yey', 4, 4);


