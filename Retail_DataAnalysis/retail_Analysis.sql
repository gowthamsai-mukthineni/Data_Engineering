CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    city VARCHAR(50),
    age INT
);
INSERT INTO customers (customer_id, customer_name, city, age)
VALUES
(1, 'John Smith', 'Dallas', 32),
(2, 'Emma Johnson', 'Austin', 28),
(3, 'Michael Brown', 'Houston', 41),
(4, 'Sophia Davis', 'Dallas', 35),
(5, 'James Wilson', 'Chicago', 29),
(6, 'Olivia Miller', 'Austin', 38),
(7, 'William Moore', 'Seattle', 45),
(8, 'Ava Taylor', 'Dallas', 26),
(9, 'Benjamin Anderson', 'Miami', 31),
(10, 'Isabella Thomas', 'Houston', 27),
(11, 'Lucas Jackson', 'Phoenix', 36),
(12, 'Mia White', 'Dallas', 24),
(13, 'Henry Harris', 'Austin', 42),
(14, 'Charlotte Martin', 'Chicago', 33),
(15, 'Daniel Thompson', 'Seattle', 39);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock INT
);

INSERT INTO products (product_id, product_name, category, price, stock)
VALUES
(101, 'Laptop', 'Electronics', 1200.00, 15),
(102, 'Smartphone', 'Electronics', 800.00, 25),
(103, 'Tablet', 'Electronics', 500.00, 18),
(104, 'Headphones', 'Electronics', 150.00, 40),
(105, 'Smart Watch', 'Electronics', 250.00, 22),
(106, 'Refrigerator', 'Home Appliances', 1400.00, 10),
(107, 'Microwave', 'Home Appliances', 300.00, 12),
(108, 'Washing Machine', 'Home Appliances', 900.00, 8),
(109, 'Air Conditioner', 'Home Appliances', 1100.00, 7),
(110, 'Vacuum Cleaner', 'Home Appliances', 220.00, 14),
(111, 'Office Chair', 'Furniture', 180.00, 30),
(112, 'Dining Table', 'Furniture', 650.00, 9),
(113, 'Sofa', 'Furniture', 950.00, 6),
(114, 'Bookshelf', 'Furniture', 275.00, 16),
(115, 'Bed Frame', 'Furniture', 750.00, 5),
(116, 'Running Shoes', 'Sports', 120.00, 35),
(117, 'Football', 'Sports', 45.00, 50),
(118, 'Tennis Racket', 'Sports', 180.00, 20),
(119, 'Gym Bag', 'Sports', 65.00, 28),
(120, 'Yoga Mat', 'Sports', 35.00, 45);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    total_amount DECIMAL(10,2),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount, order_date)
VALUES
(1, 1, 101, 1, 1200.00, '2024-01-05'),
(2, 2, 102, 2, 1600.00, '2024-01-06'),
(3, 3, 103, 1, 500.00, '2024-01-07'),
(4, 4, 104, 3, 450.00, '2024-01-08'),
(5, 5, 105, 2, 500.00, '2024-01-09'),
(6, 6, 106, 1, 1400.00, '2024-01-10'),
(7, 7, 107, 2, 600.00, '2024-01-11'),
(8, 8, 108, 1, 900.00, '2024-01-12'),
(9, 9, 109, 1, 1100.00, '2024-01-13'),
(10, 10, 110, 2, 440.00, '2024-01-14'),

(11, 11, 111, 3, 540.00, '2024-01-15'),
(12, 12, 112, 1, 650.00, '2024-01-16'),
(13, 13, 113, 1, 950.00, '2024-01-17'),
(14, 14, 114, 2, 550.00, '2024-01-18'),
(15, 15, 115, 1, 750.00, '2024-01-19'),

(16, 1, 116, 2, 240.00, '2024-01-20'),
(17, 2, 117, 4, 180.00, '2024-01-21'),
(18, 3, 118, 1, 180.00, '2024-01-22'),
(19, 4, 119, 2, 130.00, '2024-01-23'),
(20, 5, 120, 3, 105.00, '2024-01-24'),

(21, 6, 101, 1, 1200.00, '2024-02-01'),
(22, 7, 102, 1, 800.00, '2024-02-02'),
(23, 8, 103, 2, 1000.00, '2024-02-03'),
(24, 9, 104, 2, 300.00, '2024-02-04'),
(25, 10, 105, 1, 250.00, '2024-02-05'),

(26, 11, 106, 1, 1400.00, '2024-02-06'),
(27, 12, 107, 1, 300.00, '2024-02-07'),
(28, 13, 108, 1, 900.00, '2024-02-08'),
(29, 14, 109, 1, 1100.00, '2024-02-09'),
(30, 15, 110, 2, 440.00, '2024-02-10'),

(31, 1, 111, 2, 360.00, '2024-02-11'),
(32, 2, 112, 1, 650.00, '2024-02-12'),
(33, 3, 113, 1, 950.00, '2024-02-13'),
(34, 4, 114, 1, 275.00, '2024-02-14'),
(35, 5, 115, 1, 750.00, '2024-02-15'),

(36, 6, 116, 3, 360.00, '2024-02-16'),
(37, 7, 117, 5, 225.00, '2024-02-17'),
(38, 8, 118, 2, 360.00, '2024-02-18'),
(39, 9, 119, 1, 65.00, '2024-02-19'),
(40, 10, 120, 4, 140.00, '2024-02-20');

-- to find the records of customer

SELECT COUNT(*) FROM customers;
SELECT COUNT(*) FROM products;
SELECT COUNT(*) FROM orders;


-- 1
SELECT * FROM customers;

-- 2
SELECT * FROM products;

-- 3
SELECT * FROM orders;

-- 4
SELECT customer_name, city
FROM customers;

-- 5
SELECT product_name, price
FROM products;

-- 6
SELECT DISTINCT city
FROM customers;

-- 7
SELECT DISTINCT category
FROM products;

-- 8
SELECT *
FROM customers
WHERE city = 'Dallas';

-- 9
SELECT *
FROM customers
WHERE age > 30;

-- 10
SELECT *
FROM products
WHERE price > 500;

-- 11
SELECT *
FROM products
WHERE stock < 20;

-- 12
SELECT *
FROM orders
WHERE total_amount > 1000;

-- 13
SELECT *
FROM customers
WHERE city = 'Dallas'
AND age > 30;

-- 14
SELECT *
FROM customers
WHERE city = 'Dallas'
OR city = 'Austin';

-- 15
SELECT *
FROM products
WHERE category = 'Electronics';

-- 16
SELECT *
FROM orders
WHERE order_date BETWEEN '2024-01-10' AND '2024-02-10';

-- 17
SELECT *
FROM customers
WHERE customer_name LIKE 'J%';

-- 18
SELECT *
FROM customers
ORDER BY age;

-- 19
SELECT *
FROM products
ORDER BY price;

-- 20
SELECT *
FROM orders
ORDER BY total_amount;

-- 21
SELECT *
FROM products
ORDER BY price DESC
LIMIT 5;

-- 22
SELECT *
FROM orders
ORDER BY total_amount DESC
LIMIT 5;

-- 23
SELECT COUNT(*) AS total_customers
FROM customers;

-- 24
SELECT COUNT(*) AS total_products
FROM products;

-- 25
SELECT COUNT(*) AS total_orders
FROM orders;

-- 26
SELECT SUM(total_amount) AS total_sales
FROM orders;

-- 27
SELECT AVG(total_amount) AS average_order_value
FROM orders;

-- 28
SELECT MAX(total_amount) AS maximum_order_amount
FROM orders;

-- 29
SELECT MIN(total_amount) AS minimum_order_amount
FROM orders;

-- 30
SELECT AVG(price) AS average_product_price
FROM products;

-- 31
SELECT city, COUNT(*) AS customer_count
FROM customers
GROUP BY city;

-- 32
SELECT category, COUNT(*) AS product_count
FROM products
GROUP BY category;

-- 33
SELECT c.customer_name, SUM(o.total_amount) AS total_sales
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name;

-- 34
SELECT p.product_name, SUM(o.total_amount) AS total_sales
FROM products p
JOIN orders o
ON p.product_id = o.product_id
GROUP BY p.product_name;

-- 35
SELECT p.category, SUM(o.total_amount) AS total_sales
FROM products p
JOIN orders o
ON p.product_id = o.product_id
GROUP BY p.category;

-- 36
SELECT c.city, AVG(o.total_amount) AS average_order_value
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.city;

-- 37
SELECT c.city, MAX(o.total_amount) AS maximum_order_amount
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.city;

-- 38
SELECT p.product_name, SUM(o.quantity) AS total_quantity_sold
FROM products p
JOIN orders o
ON p.product_id = o.product_id
GROUP BY p.product_name;

-- 39
SELECT c.customer_name, o.total_amount
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id;

-- 40
SELECT c.customer_name, p.product_name
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN products p
ON o.product_id = p.product_id;

-- 41
SELECT c.customer_name, p.product_name, o.quantity, o.total_amount
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN products p
ON o.product_id = p.product_id;

-- 42
SELECT c.customer_name, c.city, p.product_name, p.category, o.total_amount
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN products p
ON o.product_id = p.product_id;

-- 43
SELECT
    c.customer_name,
    c.city,
    p.product_name,
    p.category,
    p.price,
    o.quantity,
    o.total_amount,
    o.order_date
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN products p
ON o.product_id = p.product_id;

-- 44
SELECT c.customer_name, SUM(o.total_amount) AS total_spending
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_spending DESC
LIMIT 5;

-- 45
SELECT p.product_name, SUM(o.quantity) AS units_sold
FROM products p
JOIN orders o
ON p.product_id = o.product_id
GROUP BY p.product_name
ORDER BY units_sold DESC
LIMIT 5;

-- 46
SELECT c.city, SUM(o.total_amount) AS revenue
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.city
ORDER BY revenue DESC;

-- 47
SELECT p.category, SUM(o.total_amount) AS revenue
FROM products p
JOIN orders o
ON p.product_id = o.product_id
GROUP BY p.category
ORDER BY revenue DESC;

-- 48
SELECT c.customer_name, o.total_amount
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
ORDER BY o.total_amount DESC
LIMIT 1;

-- 49
SELECT c.customer_name, COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING COUNT(o.order_id) > 1;

-- 50
SELECT p.product_name
FROM products p
LEFT JOIN orders o
ON p.product_id = o.product_id
WHERE o.product_id IS NULL;

-- 51
SELECT p.category, SUM(o.total_amount) AS total_sales
FROM products p
JOIN orders o
ON p.product_id = o.product_id
GROUP BY p.category
HAVING SUM(o.total_amount) > 10000;

-- 52
SELECT c.city, SUM(o.total_amount) AS total_sales
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.city
HAVING SUM(o.total_amount) > 20000;

--new dataset

CREATE OR REPLACE VIEW sales_dataset AS
SELECT
    c.customer_name,
    c.city,
    p.product_name,
    p.category,
    p.price AS product_price,
    o.quantity,
    o.total_amount,
    o.order_date
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN products p
ON o.product_id = p.product_id;

-- 1
SELECT customer_name,
       SUM(total_amount) AS total_spending
FROM sales_dataset
GROUP BY customer_name
ORDER BY total_spending DESC
LIMIT 1;

-- 2
SELECT city,
       SUM(total_amount) AS total_revenue
FROM sales_dataset
GROUP BY city
ORDER BY total_revenue DESC
LIMIT 1;

-- 3
SELECT category,
       SUM(total_amount) AS total_sales
FROM sales_dataset
GROUP BY category
ORDER BY total_sales DESC
LIMIT 1;

-- 4
SELECT product_name,
       SUM(quantity) AS total_units_sold
FROM sales_dataset
GROUP BY product_name
ORDER BY total_units_sold DESC
LIMIT 1;

-- 5
SELECT product_name,
       SUM(total_amount) AS total_revenue
FROM sales_dataset
GROUP BY product_name
ORDER BY total_revenue DESC;

-- 6
SELECT customer_name,
       COUNT(*) AS total_orders
FROM sales_dataset
GROUP BY customer_name
HAVING COUNT(*) > 1;

-- 7
SELECT AVG(total_amount) AS average_order_value
FROM sales_dataset;

-- 8
SELECT p.product_name
FROM products p
LEFT JOIN sales_dataset s
ON p.product_name = s.product_name
WHERE s.product_name IS NULL;

-- 9
SELECT customer_name,
       SUM(total_amount) AS total_spending
FROM sales_dataset
GROUP BY customer_name
ORDER BY total_spending DESC
LIMIT 10;

-- 10
SELECT product_name,
       SUM(total_amount) AS total_revenue
FROM sales_dataset
GROUP BY product_name
ORDER BY total_revenue DESC
LIMIT 10;

-- 11
SELECT city,
       SUM(total_amount) AS total_revenue
FROM sales_dataset
GROUP BY city
ORDER BY total_revenue DESC;

-- 12
SELECT category,
       SUM(total_amount) AS total_revenue
FROM sales_dataset
GROUP BY category
ORDER BY total_revenue DESC;








