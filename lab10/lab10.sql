-- Написать триггеры (before, after) для любой таблицы в базе данных и проверить эффекты работы

-- CREATE DATABASE lab10;
USE lab10; 

-- CREATE TABLE bank_account (
--     id INT AUTO_INCREMENT,
--     first_name VARCHAR(100),
--     last_name VARCHAR(100),
--     account_number VARCHAR(15),
--     balance INT,
--     
--     PRIMARY KEY (id)
-- );

-- CREATE TABLE bank_account_history (
--     bank_account_id INT NOT NULL,
--     comment_ VARCHAR(50),
--     date_ DATETIME,
--     operation VARCHAR(50),
--     currency INT NOT NULL
-- );






-- TRUNCATE TABLE bank_account_history;
-- TRUNCATE TABLE bank_account;

-- 1)
-- DELIMITER $$
-- CREATE TRIGGER bank_account_INSERT
-- AFTER INSERT ON bank_account 
-- FOR EACH ROW

-- BEGIN

-- INSERT INTO bank_account_history (bank_account_id, comment_, date_, operation, currency) VALUES
-- (NEW.id, 'Account created: System', current_timestamp(), 'Creation', 0);

-- END $$

-- INSERT INTO bank_account VALUES 
-- (null, 'testFirstName_', 'testLastName_', 1234567890, 0);

-- 2)
-- DELIMITER $$
-- CREATE TRIGGER bank_account_Update
-- AFTER UPDATE ON bank_account
-- FOR EACH ROW

-- BEGIN

-- INSERT INTO bank_account_history (bank_account_id, comment_, date_, operation, currency) VALUES
-- (NEW.id, 'Account replenishment', current_timestamp(), 'Replenishment', NEW.balance - OLD.balance);

-- END $$

-- UPDATE bank_account SET balance=1000 WHERE id=1;

-- 3)
-- DELIMITER $$
-- CREATE TRIGGER bank_account_DELETE
-- AFTER DELETE ON bank_account 
-- FOR EACH ROW

-- BEGIN

-- INSERT INTO bank_account_history (bank_account_id, comment_, date_, operation, currency) VALUES
-- (OLD.id, 'Account deleted: System', current_timestamp(), 'Removing', 0);

-- END $$

-- DELETE FROM bank_account WHERE id=1;