
-- 3. Create and Populate Orders Table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount INT,
    status VARCHAR(20)
);

INSERT INTO Orders (order_id, customer_id, order_date, amount, status) VALUES
(1001, 101, '2026-07-10', 25000, 'Delivered'),
(1002, 102, '2026-07-09', 5000, 'Pending'),
(1003, 101, '2026-07-08', 12500, 'Delivered'),
(1004, 103, '2026-07-07', 8000, 'Delivered'),
(1005, 104, '2026-07-06', 3500, 'Cancelled'),
(1006, 102, '2026-07-05', 45000, 'Delivered'),
(1007, 105, '2026-07-04', 1200, 'Delivered');