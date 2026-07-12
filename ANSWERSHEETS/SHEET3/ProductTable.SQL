-- 2. Create and Populate Products Table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price INT,
    rating DECIMAL(2, 1)
);

INSERT INTO Products (product_id, product_name, category, price, rating) VALUES
(101, 'Laptop', 'Electronics', 50000, 4.8),
(102, 'Mouse', 'Electronics', 1000, 4.5),
(103, 'Keyboard', 'Electronics', 3000, 4.7),
(104, 'Monitor', 'Electronics', 15000, 4.6),
(105, 'Headphones', 'Electronics', 2500, 4.9),
(106, 'USB Cable', 'Electronics', 300, 4.3);

