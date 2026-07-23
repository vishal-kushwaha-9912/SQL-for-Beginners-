-- ==========================================
-- SALES_RECORDS TABLE
-- ==========================================

CREATE TABLE sales_records (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    product_name VARCHAR(50),
    category VARCHAR(30),
    amount DECIMAL(10,2),
    order_date DATE,
    city VARCHAR(30),
    sales_person VARCHAR(50),
    payment_method VARCHAR(20),
    status VARCHAR(20)
);

INSERT INTO sales_records VALUES
(101, 'Aarav',   'Laptop',      'Electronics', 65000.00, '2026-01-05', 'Delhi',     'Rohan',   'UPI',         'Delivered'),
(102, 'Priya',   'Phone',       'Electronics', 35000.00, '2026-01-06', 'Mumbai',    'Anita',   'Credit Card', 'Delivered'),
(103, 'Rahul',   'Shoes',       'Fashion',      4500.00, '2026-01-06', 'Delhi',     'Rohan',   'Cash',        'Pending'),
(104, 'Sneha',   'Watch',       'Accessories', 12000.00, '2026-01-07', 'Pune',      'Karan',   'UPI',         'Delivered'),
(105, 'Karan',   'Tablet',      'Electronics', 28000.00, '2026-01-08', 'Mumbai',    'Anita',   'Debit Card',  'Cancelled'),
(106, 'Meera',   'Bag',         'Fashion',      3000.00, '2026-01-09', 'Lucknow',   'Rohan',   'Cash',        'Delivered'),
(107, 'Vikram',  'TV',          'Electronics', 75000.00, '2026-01-10', 'Delhi',     'Karan',   'Credit Card', 'Delivered'),
(108, 'Anjali',  'Headphones',  'Electronics',  6000.00, '2026-01-10', 'Jaipur',    'Anita',   'UPI',         'Delivered'),
(109, 'Riya',    'Dress',       'Fashion',      5500.00, '2026-01-11', 'Mumbai',    'Rohan',   'Cash',        'Delivered'),
(110, 'Amit',    'Monitor',     'Electronics', 18000.00, '2026-01-12', 'Delhi',     'Karan',   'Debit Card',  'Pending'),
(111, 'Neha',    'Keyboard',    'Electronics',  2500.00, '2026-01-12', 'Lucknow',   'Anita',   'UPI',         'Delivered'),
(112, 'Sahil',   'Chair',       'Furniture',    8500.00, '2026-01-13', 'Pune',      'Karan',   'Credit Card', 'Delivered'),
(113, 'Pooja',   'Desk',        'Furniture',   15000.00, '2026-01-14', 'Jaipur',    'Anita',   'Debit Card',  'Delivered'),
(114, 'Rohan',   'Phone',       'Electronics', 42000.00, '2026-01-15', 'Delhi',     'Rohan',   'UPI',         'Delivered'),
(115, 'Nikhil',  'Shoes',       'Fashion',      4800.00, '2026-01-16', 'Mumbai',    'Karan',   'Cash',        'Delivered'),
(116, 'Isha',    'Laptop',      'Electronics', 70000.00, '2026-01-17', 'Pune',      'Anita',   'Credit Card', 'Delivered'),
(117, 'Manav',   'Bag',         'Fashion',      2500.00, '2026-01-18', 'Delhi',     'Rohan',   'UPI',         'Cancelled'),
(118, 'Kavya',   'Refrigerator','Appliances', 55000.00, '2026-01-19', 'Lucknow',   'Karan',   'Debit Card',  'Delivered'),
(119, 'Arjun',   'Microwave',   'Appliances', 18000.00, '2026-01-20', 'Mumbai',    'Anita',   'UPI',         'Delivered'),
(120, 'Diya',    'Air Cooler',  'Appliances', 22000.00, '2026-01-21', 'Delhi',     'Rohan',   'Credit Card', 'Pending'),
(121, 'Aarav',   'Smart Watch', 'Accessories', 15000.00, '2026-01-22', 'Delhi',     'Karan',   'UPI',         'Delivered'),
(122, 'Priya',   'Handbag',     'Fashion',      6500.00, '2026-01-23', 'Mumbai',    'Anita',   'Cash',        'Delivered'),
(123, 'Rahul',   'Dining Table','Furniture',   30000.00, '2026-01-24', 'Pune',      'Karan',   'Credit Card', 'Delivered'),
(124, 'Sneha',   'Mixer',       'Appliances',   7000.00, '2026-01-25', 'Jaipur',    'Rohan',   'UPI',         'Delivered'),
(125, 'Vikram',  'Laptop',      'Electronics', 68000.00, '2026-01-26', 'Delhi',     'Anita',   'Debit Card',  'Delivered');