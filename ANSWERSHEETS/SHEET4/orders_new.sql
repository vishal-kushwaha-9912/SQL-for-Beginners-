CREATE TABLE orders_new (
    order_id INT,
    customer_id INT,
    amount DECIMAL(10,2),
    order_date DATE
);

INSERT INTO orders_new VALUES
(1, 101, 250.00, '2025-01-10'),
(2, 102, 150.00, '2025-01-10'),
(3, 101, 300.00, '2025-01-11'),
(4, 103, 450.00, '2025-01-11'),
(5, 104, 120.00, '2025-01-12'),
(6, 101, 200.00, '2025-01-12');