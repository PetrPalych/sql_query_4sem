-- CREATE DATABASE lab11;
USE lab11;

-- CREATE TABLE customers (
--     id INT AUTO_INCREMENT,
--     first_name VARCHAR(255),
--     last_name VARCHAR(255),
--     email VARCHAR(255),
--     phone_number VARCHAR(255),
--     
--     PRIMARY KEY (id)
-- );

-- CREATE TABLE flowers (
--     id INT AUTO_INCREMENT,
--     name_ VARCHAR(255),
--     price INT,
--     description_ TEXT,
--     image_url VARCHAR(255),
--     availability VARCHAR(10),
--     
--     PRIMARY KEY (id)
-- );

-- CREATE TABLE orders (
--     id INT AUTO_INCREMENT,
--     quantity INT,
--     order_date DATE,
--     total_price INT,
--     customer_id INT,
--     flower_id INT,
--     
--     PRIMARY KEY (id),
--     FOREIGN KEY (customer_id) REFERENCES customers (id),
--     FOREIGN KEY (flower_id) REFERENCES flowers (id)
-- );

-- CREATE TABLE employees (
--     id INT AUTO_INCREMENT,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     position VARCHAR(50),
--     hire_date DATE,
--     salary INT,
--     
--     PRIMARY KEY (id)
-- );

-- CREATE TABLE deliveries (
--     id INT AUTO_INCREMENT,
--     delivery_date DATE,
--     delivery_address VARCHAR(255),
--     order_id INT,
--     employee_id INT,
--     
--     PRIMARY KEY (id),
--     FOREIGN KEY (order_id) REFERENCES orders (id),
--     FOREIGN KEY (employee_id) REFERENCES employees (id)
-- );

-- INSERT INTO customers (first_name, last_name, email, phone_number) VALUES
-- ('John', 'Doe', 'johndoe@email.com', '555-555-5555'),
-- ('Jane', 'Doe', 'janedoe@email.com', '555-555-5556'),
-- ('Michael', 'Smith', 'michaelsmith@email.com', '555-555-5557'),
-- ('Emily', 'Johnson', 'emilyjohnson@email.com', '555-555-5558'),
-- ('William', 'Brown', 'williambrown@email.com', '555-555-5559');


-- INSERT INTO flowers (name_, price, description_, image_url, availability) VALUES
-- ('Red Rose', 10.99, 'A bouquet of 6 red roses', 'https://www.example.com/red_rose.jpg', 'true'),
-- ('Yellow Daisy', 5.99, 'A bouquet of 12 yellow daisies', 'https://www.example.com/yellow_daisy.jpg', 'true'),
-- ('White Lilies', 15.99, 'A bouquet of 8 white lilies', 'https://www.example.com/white_lilies.jpg', 'true'),
-- ('Pink Peonies', 20.99, 'A bouquet of 5 pink peonies', 'https://www.example.com/pink_peonies.jpg', 'false'),
-- ('Purple Orchids', 25.99, 'A bouquet of 6 purple orchids', 'https://www.example.com/purple_orchids.jpg', 'true');

-- INSERT INTO orders (customer_id, flower_id, quantity, order_date, total_price) VALUES
-- (1, 1, 2, '2022-12-01', 21.98),
-- (2, 3, 3, '2022-11-15', 47.97),
-- (1, 5, 1, '2022-12-20', 25.99),
-- (3, 2, 5, '2022-11-01', 29.95),
-- (2, 4, 2, '2022-10-05', 41.98);

-- INSERT INTO employees (first_name, last_name, position, hire_date, salary) VALUES
-- ('John', 'Doe', 'Manager', '2021-01-01', 65000),
-- ('Jane', 'Smith', 'Assistant Manager', '2021-03-01', 55000),
-- ('Bob', 'Johnson', 'Florist', '2021-05-01', 45000),
-- ('Alice', 'Brown', 'Delivery Driver', '2021-07-01', 35000),
-- ('Charlie', 'Davis', 'Receptionist', '2021-09-01', 30000);

-- INSERT INTO deliveries (order_id, employee_id, delivery_date, delivery_address) VALUES
-- (1, 1, '2022-01-01', '123 Main St'),
-- (2, 2, '2022-02-01', '456 Oak Ave'),
-- (3, 3, '2022-03-01', '789 Pine St'),
-- (4, 4, '2022-04-01', '246 Maple Rd'),
-- (5, 5, '2022-05-01', '369 Cedar Ln');






-- 1) declare @a int = 10, @b int = 15, @c  int =0
-- Если @c >= 0 то вычислить сумму чисел, иначе откат транзакции   

-- DELIMITER $$
-- CREATE PROCEDURE task1()

-- BEGIN
-- 	DECLARE a INT DEFAULT 10;
-- 	DECLARE b INT DEFAULT 15;
-- 	DECLARE c INT DEFAULT 1;

-- 	START TRANSACTION;
--     
-- 	IF (@c >= 0) THEN
-- 		SET @c = @a + @b + @c;
--      SELECT @c  as '';
-- 	ELSE
-- 		ROLLBACK;
--         
-- 	END IF;
--     
--     COMMIT;
-- END $$

-- CALL task1();



-- 2) Вставить данные в таблицу клиентов, если не заполнена фамилия клиента – откат транзакции

-- DELIMITER $$
-- CREATE PROCEDURE check_last_name(first_name VARCHAR(255), last_name VARCHAR(255), email VARCHAR(255), phone_number VARCHAR(255))

-- BEGIN
-- 	START TRANSACTION;
--     
--     IF (last_name IS NULL) THEN
--         ROLLBACK;
-- 	
--     ELSE
-- 		INSERT INTO customers VALUES (null, first_name, last_name, email, phone_number);
--     END IF;
--     
--     COMMIT;
-- END $$

-- CALL check_last_name('testFirstName', 'testLastName', 'test@email.com', '111-111-1111');



-- 3) Вставить данные в таблицу заказов, если есть задолженность по предыдущим заказам, откатить транзакцию 

-- DELIMITER $$
-- CREATE PROCEDURE check_flower_availability(quantity INT, order_date DATE, total_price INT, customer_id INT, flower_id INT)

-- BEGIN
-- 	START TRANSACTION;
-- 		IF ((SELECT availability FROM flowers WHERE id = flower_id) = FALSE) THEN
-- 			ROLLBACK;
-- 		
--         ELSE
-- 			INSERT INTO orders VALUES (null, quantity, order_date, total_price, customer_id, flower_id);
-- 		
--         END IF;
-- 	COMMIT;
-- END $$

-- CALL check_flower_availability(10, CURDATE(), 100, 1, 2);