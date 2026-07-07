		DROP TABLE IF EXISTS public.customers CASCADE;
DROP TABLE IF EXISTS public.transactions  CASCADE;
DROP TABLE IF EXISTS public.accounts ;

CREATE TABLE customers (
    customer_id INT,
    customer_name VARCHAR(50),
    age INT,
    city VARCHAR(50)
);

INSERT INTO customers VALUES
(1,'John',25,'Dallas'),
(2,'Emma',30,'Austin'),
(3,'Michael',35,'Houston'),
(4,'Sophia',40,'Chicago'),
(5,'James',45,'Dallas'),
(6,'Olivia',28,'Austin'),
(7,'William',38,'Houston'),
(8,'Ava',32,NULL),
(9,'Noah',29,'Chicago'),
(10,'Mia',50,'Dallas');


CREATE TABLE transactions (
    transaction_id INT,
    customer_id INT,
    transaction_type VARCHAR(20),
    amount INT
);

INSERT INTO transactions VALUES
(1001,1,'DEBIT',3000),
(1002,1,'CREDIT',5000),
(1003,2,'DEBIT',7000),
(1004,3,'CREDIT',12000),
(1005,4,'DEBIT',15000),
(1006,5,'CREDIT',20000),
(1007,6,'DEBIT',4000),
(1008,7,'CREDIT',8000),
(1009,8,'DEBIT',6000),
(1010,9,'CREDIT',10000),
(1011,10,'DEBIT',18000),
(1012,5,'CREDIT',22000);



CREATE TABLE accounts (
    account_id INT,
    customer_id INT,
    account_type VARCHAR(20),
    balance INT
);

INSERT INTO accounts VALUES
(101,1,'Savings',15000),
(102,2,'Checking',12000),
(103,3,'Savings',18000),
(104,4,'Checking',9000),
(105,5,'Savings',25000),
(106,6,'Checking',8000),
(107,7,'Savings',17000),
(108,8,'Checking',6000),
(109,9,'Savings',14000),
(110,10,'Checking',30000);


-- 1
SELECT * FROM customers;

-- 2
SELECT customer_name, city
FROM customers;

-- 3
SELECT * FROM transactions;

-- 4
SELECT DISTINCT city
FROM customers;

-- 5
SELECT DISTINCT transaction_type
FROM transactions;

-- 6
SELECT *
FROM customers
WHERE city = 'Dallas';

-- 7
SELECT *
FROM customers
WHERE age > 35;

-- 8
SELECT *
FROM transactions
WHERE amount > 10000;

-- 9
SELECT *
FROM customers
WHERE city = 'Austin'
AND age > 30;

-- 10
SELECT *
FROM transactions
WHERE transaction_type = 'DEBIT'
AND amount > 5000;

-- 11
SELECT *
FROM customers
WHERE city = 'Dallas'
OR city = 'Houston';

-- 12
SELECT *
FROM transactions
WHERE transaction_type = 'CREDIT'
OR transaction_type = 'DEBIT';

-- 13
SELECT *
FROM customers
WHERE city IN ('Dallas', 'Austin', 'Chicago');

-- 14
SELECT *
FROM customers
WHERE age IN (25, 35, 45);

-- 15
SELECT *
FROM transactions
WHERE amount BETWEEN 5000 AND 15000;

-- 16
SELECT *
FROM customers
WHERE age BETWEEN 30 AND 40;

-- 17
SELECT *
FROM customers
WHERE customer_name LIKE 'J%';

-- 18
SELECT *
FROM customers
WHERE customer_name LIKE '%a';

-- 19
SELECT *
FROM customers
WHERE customer_name LIKE '%a%';

-- 20
SELECT *
FROM customers
WHERE city IS NULL;

-- 21
SELECT *
FROM customers
ORDER BY age ASC;

-- 22
SELECT *
FROM customers
ORDER BY age DESC;

-- 23
SELECT *
FROM transactions
ORDER BY amount DESC;

-- 24a
SELECT COUNT(*) AS total_customers
FROM customers;

-- 24b
SELECT SUM(amount) AS total_transaction_amount
FROM transactions;

-- 24c
SELECT AVG(amount) AS average_transaction_amount
FROM transactions;

-- 24d
SELECT MAX(amount) AS highest_transaction_amount
FROM transactions;

-- 24e
SELECT MIN(amount) AS lowest_transaction_amount
FROM transactions;

-- 25a
SELECT city, COUNT(*) AS total_customers
FROM customers
GROUP BY city;

-- 25b
SELECT transaction_type, COUNT(*) AS total_transactions
FROM transactions
GROUP BY transaction_type;

-- 25c
SELECT customer_id, SUM(amount) AS total_transaction_amount
FROM transactions
GROUP BY customer_id;

-- 25d
SELECT transaction_type, AVG(amount) AS average_transaction_amount
FROM transactions
GROUP BY transaction_type;

-- 25e
SELECT transaction_type, MAX(amount) AS highest_transaction_amount
FROM transactions
GROUP BY transaction_type;