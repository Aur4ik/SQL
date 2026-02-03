-- CREATE TABLE categories(
-- 	id SERIAL PRIMARY KEY,
-- 	title VARCHAR(50) NOT NULL UNIQUE
-- );
-- CREATE TABLE products(
-- 	id SERIAL PRIMARY KEY,
-- 	title VARCHAR(80) NOT NULL,
-- 	price INT NOT NULL CHECK(price > 0),
-- 	category_id INT REFERENCES categories(id)
-- );
-- CREATE TABLE orders(
-- 	id SERIAL PRIMARY KEY,
-- 	customer VARCHAR(60) NOT NULL,
-- 	total INT NOT NULL CHECK (total >= 0),
-- 	created_at TIMESTAMP DEFAULT NOW()
-- );

-- INSERT INTO categories(title)
-- VALUES
-- ('Electonics'),
-- ('Accessories'),
-- ('Office'),
-- ('Gaming');



-- INSERT INTO products (title,price,category_id)
-- VALUES 
-- ('Keyboard', 12000, 1),
-- ('Mouse', 7000, 1),
-- ('Headphones', 35000, 1),
-- ('USB Cable', 3000, 2),
-- ('Mouse Pad', 3000, 2),
-- ('NoteBook', 1000, 3),
-- ('Pen', 600, 3),
-- ('Gaming Chair', 100000, 4),
-- ('Gamepad', 18000, 4),
-- ('Monitor', 100000, 4);


-- INSERT INTO orders(customer, total)
-- VALUES
-- ('Alex', 19000),
-- ('Dana', 35000),
-- ('Diana', 90000),
-- ('Ira', 2500),
-- ('John', 68000),
-- ('Anna', 1500);




-- INSERT INTO categories(title)
-- VALUES
-- ('Home')

-- INSERT INTO products (title, price, category_id)
-- VALUES
-- ('Sofa Classic', 12000, 6),
-- ('Table Lamp', 1800, 6),
-- ('Wall Clock', 950, 6),
-- ('Wireless Mouse', 4500, 3),
-- ('Running Shoes', 2100, 2);


-- INSERT INTO orders (customer, total)
-- VALUES
-- ('Elena', 42000),
-- ('Olga', 7800),
-- ('Sergey', 15600),
-- ('Kate', 54000),
-- ('Olga', 2300),
-- ('Anna', 61000);

-- SELECT 
-- 	category_id,
-- 	COUNT (*) AS total_products
-- FROM products
-- GROUP BY category_id
-- ORDER BY total_products DESC

-- SELECT 
-- 	category_id,
-- 	COUNT (*) AS total_products
-- FROM products
-- GROUP BY category_id
-- HAVING COUNT(*) >= 3
-- ORDER BY total_products DESC


-- SELECT 
-- 	category_id,
-- 	COUNT (*) AS total_products,
-- 	MIN(price) AS min_price,
-- 	MAX(price) AS max_price,
-- 	ROUND(AVG(price), 2) AS avg_price
	
-- FROM products
-- GROUP BY category_id


-- SELECT 
-- 	category_id,
-- 	COUNT(*) AS total_products
-- FROM products
-- WHERE price > 10000
-- GROUP BY category_id
-- HAVING COUNT(*) >= 2


-- SELECT 
-- 	customer,
-- 	COUNT (*) AS total_orders
-- FROM orders
-- GROUP BY customer




-- SELECT 
-- 	customer,
-- 	COUNT (*) AS total_orders
-- FROM orders
-- GROUP BY customer
-- HAVING COUNT (*) >=2


-- SELECT 
-- 	customer,
-- 	COUNT (*) AS total_orders,
-- 	SUM(total) AS sum_total,
-- 	ROUND(AVG(total), 2) AS avg_check,
-- 	MIN(total) AS min_total,
-- 	MAX(total) AS max_total
-- FROM orders
-- GROUP BY customer
-- ORDER BY sum_total DESC










