-- ==========================================
-- SALES_RECORDS TABLE
-- ==========================================

CREATE TABLE sales_records (
    order_id INT,
    customer_name VARCHAR(50),
    product_name VARCHAR(50),
    category VARCHAR(30),
    amount DECIMAL(10,2),
    order_date DATE,
    status VARCHAR(20)
);

INSERT INTO sales_records VALUES
(201, 'Aarav',  'Laptop',        'Electronics', 65000.00, '2026-07-01', 'Delivered'),
(202, 'Diya',   'Office Chair',  'Furniture',   8500.00, '2026-07-02', 'Pending'),
(203, 'Kabir',  'Smartphone',    'Electronics', 32000.00, '2026-07-03', 'Delivered'),
(204, 'Ishita', 'Study Table',   'Furniture',  12000.00, '2026-07-04', 'Cancelled'),
(205, 'Vivaan', 'Headphones',    'Electronics',  2800.00, '2026-07-05', 'Delivered'),
(206, 'Anaya',  'Bookshelf',     'Furniture',  14500.00, '2026-07-06', 'Delivered'),
(207, 'Reyansh','Keyboard',      'Electronics',  2200.00, '2026-07-07', 'Pending'),
(208, 'Myra',   'Monitor',       'Electronics', 18500.00, '2026-07-08', 'Delivered'),
(209, 'Advik',  'Sofa',          'Furniture',  38000.00, '2026-07-09', 'Delivered'),
(210, 'Kiara',  'Printer',       'Electronics',  9500.00, '2026-07-10', 'Cancelled'),
(211, 'Arnav',  'Mouse',         'Electronics',  1500.00, '2026-07-11', 'Delivered'),
(212, 'Saanvi', 'Dining Table',  'Furniture',  22000.00, '2026-07-12', 'Pending');