
-- =========================
-- 4. Inventory_Items
-- =========================
CREATE TABLE Inventory_Items (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10,2)
);

INSERT INTO Inventory_Items VALUES
(101,'Laptop',60000),
(102,'Mouse',500),
(103,'Keyboard',1200),
(104,'Monitor',12000),
(105,'Printer',15000),
(106,'Headphones',2500);
