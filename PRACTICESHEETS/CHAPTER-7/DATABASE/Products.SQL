
-- =========================
-- 5. Purchase_Log
-- =========================
CREATE TABLE Purchase_Log (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE,
    FOREIGN KEY (customer_id)
        REFERENCES Client_Master(customer_id),
    FOREIGN KEY (product_id)
        REFERENCES Inventory_Items(product_id)
);

INSERT INTO Purchase_Log VALUES
(1,1,101,1,'2026-08-01'),
(2,1,102,2,'2026-08-02'),
(3,2,103,1,'2026-08-03'),
(4,3,101,1,'2026-08-04'),
(5,4,104,2,'2026-08-04'),
(6,5,106,3,'2026-08-05'),
(7,6,102,1,'2026-08-05'),
(8,6,105,1,'2026-08-06'),
(9,2,106,2,'2026-08-06');
