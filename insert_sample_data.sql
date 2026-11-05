
-- CUSTOMERS: 
INSERT INTO CUSTOMERS (customer_id, customer_name, email, phone, registration_date) VALUES
    (1, 'Rahul', 'rahul@gmail.com', '9876500001', '2026-10-13'),
    (2, 'Priya', 'priya@gmail.com', '9876500002', '2026-10-16'),
    (3, 'Kiran', 'kiran@gmail.com', '9876500003', '2026-10-19'),
    (4, 'Sneha', 'sneha@gmail.com', '9876500004', '2026-10-22'),
    (5, 'Arjun', 'arjun@gmail.com', '9876500005', '2026-10-25'),
    (6, 'Divya', 'divya@gmail.com', '9876500006', '2026-10-28'),
    (7, 'Ravi', 'ravi@gmail.com', '9876500007', '2026-10-31'),
    (8, 'Anjali', 'anjali@gmail.com', '9876500008', '2026-11-03'),
    (9, 'Vikram', 'vikram@gmail.com', '9876500009', '2026-10-11'),
    (10, 'Meena', 'meena@gmail.com', '9876500010', '2026-10-14'),
    (11, 'Suresh', 'suresh@gmail.com', '9876500011', '2026-10-17'),
    (12, 'Kavya', 'kavya@gmail.com', '9876500012', '2026-10-20'),
    (13, 'Manoj', 'manoj@gmail.com', '9876500013', '2026-10-23'),
    (14, 'Pooja', 'pooja@gmail.com', '9876500014', '2026-10-26'),
    (15, 'Naveen', 'naveen@gmail.com', '9876500015', '2026-10-29'),
    (16, 'Asha', 'asha@gmail.com', '9876500016', '2026-11-01'),
    (17, 'Rohit', 'rohit@gmail.com', '9876500017', '2026-11-04'),
    (18, 'Lakshmi', 'lakshmi@gmail.com', '9876500018', '2026-10-12'),
    (19, 'Varun', 'varun@gmail.com', '9876500019', '2026-10-15'),
    (20, 'Keerthi', 'keerthi@gmail.com', '9876500020', '2026-10-18');

-- ADDRESSES: 
INSERT INTO ADDRESSES (address_id, customer_id, address_type, city, state, pincode) VALUES
    (1, 1, 'Home', 'Hyderabad', 'Telangana', '500001'),
    (2, 2, 'Office', 'Warangal', 'Telangana', '500002'),
    (3, 3, 'Home', 'Karimnagar', 'Telangana', '500003'),
    (4, 4, 'Office', 'Nizamabad', 'Telangana', '500004'),
    (5, 5, 'Home', 'Vijayawada', 'Andhra Pradesh', '500005'),
    (6, 6, 'Office', 'Hyderabad', 'Telangana', '500006'),
    (7, 7, 'Home', 'Warangal', 'Telangana', '500007'),
    (8, 8, 'Office', 'Karimnagar', 'Telangana', '500008'),
    (9, 9, 'Home', 'Nizamabad', 'Telangana', '500009'),
    (10, 10, 'Office', 'Vijayawada', 'Andhra Pradesh', '500010'),
    (11, 11, 'Home', 'Hyderabad', 'Telangana', '500011'),
    (12, 12, 'Office', 'Warangal', 'Telangana', '500012'),
    (13, 13, 'Home', 'Karimnagar', 'Telangana', '500013'),
    (14, 14, 'Office', 'Nizamabad', 'Telangana', '500014'),
    (15, 15, 'Home', 'Vijayawada', 'Andhra Pradesh', '500015'),
    (16, 16, 'Office', 'Hyderabad', 'Telangana', '500016'),
    (17, 17, 'Home', 'Warangal', 'Telangana', '500017'),
    (18, 18, 'Office', 'Karimnagar', 'Telangana', '500018'),
    (19, 19, 'Home', 'Nizamabad', 'Telangana', '500019'),
    (20, 20, 'Office', 'Vijayawada', 'Andhra Pradesh', '500020');

-- CATEGORIES: 
INSERT INTO CATEGORIES (category_id, category_name, parent_category_id) VALUES
    (1, 'Electronics', NULL),
    (2, 'Fashion', NULL),
    (3, 'Home & Kitchen', NULL),
    (4, 'Books', NULL),
    (5, 'Sports', NULL),
    (6, 'Mobiles', 1),
    (7, 'Laptops', 2),
    (8, 'Audio', 3),
    (9, 'Mens Wear', 4),
    (10, 'Womens Wear', 5),
    (11, 'Furniture', 1),
    (12, 'Appliances', 2),
    (13, 'Fiction', 3),
    (14, 'Education', 4),
    (15, 'Fitness', 5),
    (16, 'Outdoor', 1),
    (17, 'Accessories', 2),
    (18, 'Footwear', 3),
    (19, 'Decor', 4),
    (20, 'Gaming', 5);

-- SUPPLIERS: 
INSERT INTO SUPPLIERS (supplier_id, supplier_name, email, phone) VALUES
    (1, 'Tech World', 'supplier1@example.com', '9000000001'),
    (2, 'Digital Store', 'supplier2@example.com', '9000000002'),
    (3, 'Fashion Hub', 'supplier3@example.com', '9000000003'),
    (4, 'Style Suppliers', 'supplier4@example.com', '9000000004'),
    (5, 'Home Needs', 'supplier5@example.com', '9000000005'),
    (6, 'Kitchen Mart', 'supplier6@example.com', '9000000006'),
    (7, 'Smart Gadgets', 'supplier7@example.com', '9000000007'),
    (8, 'Book House', 'supplier8@example.com', '9000000008'),
    (9, 'Sports Point', 'supplier9@example.com', '9000000009'),
    (10, 'Gadget Zone', 'supplier10@example.com', '9000000010'),
    (11, 'Prime Traders', 'supplier11@example.com', '9000000011'),
    (12, 'Universal Supply', 'supplier12@example.com', '9000000012'),
    (13, 'Metro Distributors', 'supplier13@example.com', '9000000013'),
    (14, 'A1 Suppliers', 'supplier14@example.com', '9000000014'),
    (15, 'Best Buy Supply', 'supplier15@example.com', '9000000015'),
    (16, 'Nova Wholesale', 'supplier16@example.com', '9000000016'),
    (17, 'City Traders', 'supplier17@example.com', '9000000017'),
    (18, 'Evergreen Supply', 'supplier18@example.com', '9000000018'),
    (19, 'Value Products', 'supplier19@example.com', '9000000019'),
    (20, 'NextGen Suppliers', 'supplier20@example.com', '9000000020');

-- PRODUCTS: 
INSERT INTO PRODUCTS (product_id, product_name, description, price, stock_quantity, category_id, supplier_id) VALUES
    (1, 'Smartphone', 'Smartphone product description', 18000, 8, 1, 1),
    (2, 'Laptop', 'Laptop product description', 65000, 15, 1, 1),
    (3, 'Bluetooth Speaker', 'Bluetooth Speaker product description', 2500, 22, 2, 1),
    (4, 'Smart Watch', 'Smart Watch product description', 4500, 29, 2, 1),
    (5, 'Tablet', 'Tablet product description', 22000, 1, 3, 1),
    (6, 'Camera', 'Camera product description', 32000, 8, 3, 1),
    (7, 'Mens T-Shirt', 'Mens T-Shirt product description', 799, 15, 4, 1),
    (8, 'Womens Dress', 'Womens Dress product description', 1499, 22, 4, 1),
    (9, 'Jeans', 'Jeans product description', 1999, 29, 5, 1),
    (10, 'Shoes', 'Shoes product description', 2999, 1, 5, 1),
    (11, 'Office Chair', 'Office Chair product description', 5500, 8, 6, 1),
    (12, 'Mixer Grinder', 'Mixer Grinder product description', 3500, 15, 6, 1),
    (13, 'Microwave Oven', 'Microwave Oven product description', 8500, 22, 7, 2),
    (14, 'Cookware Set', 'Cookware Set product description', 2400, 29, 7, 2),
    (15, 'Novel Book', 'Novel Book product description', 499, 1, 8, 2),
    (16, 'Python Guide', 'Python Guide product description', 899, 8, 8, 2),
    (17, 'Cricket Bat', 'Cricket Bat product description', 1800, 15, 9, 3),
    (18, 'Football', 'Football product description', 1200, 22, 9, 3),
    (19, 'Yoga Mat', 'Yoga Mat product description', 999, 29, 10, 3),
    (20, 'Gaming Keyboard', 'Gaming Keyboard product description', 3200, 1, 10, 3);


-- ORDERS: 
INSERT INTO ORDERS (order_id, customer_id, order_date, order_status, total_amount) VALUES
    (101, 1, '2026-10-01', 'Completed', 18000),
    (102, 1, '2026-10-03', 'Completed', 65000),
    (103, 1, '2026-10-05', 'Shipped', 2500),
    (104, 1, '2026-10-07', 'Pending', 4500),
    (105, 1, '2026-10-09', 'Cancelled', 22000),
    (106, 1, '2026-10-11', 'Completed', 32000),
    (107, 2, '2026-10-13', 'Completed', 799),
    (108, 3, '2026-10-15', 'Shipped', 1499),
    (109, 4, '2026-10-17', 'Pending', 1999),
    (110, 5, '2026-10-19', 'Cancelled', 2999),
    (111, 6, '2026-10-21', 'Completed', 5500),
    (112, 7, '2026-10-23', 'Completed', 3500),
    (113, 8, '2026-10-25', 'Shipped', 8500),
    (114, 9, '2026-10-27', 'Pending', 2400),
    (115, 10, '2026-10-29', 'Cancelled', 499),
    (116, 11, '2026-10-31', 'Completed', 899),
    (117, 12, '2026-11-02', 'Completed', 1800),
    (118, 13, '2026-11-04', 'Shipped', 1200),
    (119, 14, '2026-11-06', 'Pending', 999),
    (120, 15, '2026-11-08', 'Cancelled', 3200);

-- ORDER_ITEMS: 
INSERT INTO ORDER_ITEMS (order_item_id, order_id, product_id, quantity, unit_price) VALUES
    (1, 101, 1, 1, 18000),
    (2, 102, 2, 2, 65000),
    (3, 103, 3, 3, 2500),
    (4, 104, 4, 4, 4500),
    (5, 105, 5, 5, 22000),
    (6, 106, 6, 1, 32000),
    (7, 107, 7, 2, 799),
    (8, 108, 8, 3, 1499),
    (9, 109, 9, 4, 1999),
    (10, 110, 10, 5, 2999),
    (11, 111, 11, 1, 5500),
    (12, 112, 12, 2, 3500),
    (13, 113, 13, 3, 8500),
    (14, 114, 14, 4, 2400),
    (15, 115, 15, 5, 499),
    (16, 116, 16, 1, 899),
    (17, 117, 17, 2, 1800),
    (18, 118, 18, 3, 1200),
    (19, 119, 19, 4, 999),
    (20, 120, 20, 5, 3200);

-- PAYMENTS: 
INSERT INTO PAYMENTS (payment_id, order_id, payment_date, payment_method, payment_status, amount) VALUES
    (1, 101, '2026-10-01', 'UPI', 'Success', 18000),
    (2, 102, '2026-10-03', 'Card', 'Success', 65000),
    (3, 103, '2026-10-05', 'Net Banking', 'Success', 2500),
    (4, 104, '2026-10-07', 'Cash', 'Pending', 4500),
    (5, 105, '2026-10-09', 'Wallet', 'Failed', 22000),
    (6, 106, '2026-10-11', 'UPI', 'Success', 32000),
    (7, 107, '2026-10-13', 'Card', 'Success', 799),
    (8, 108, '2026-10-15', 'Net Banking', 'Success', 1499),
    (9, 109, '2026-10-17', 'Cash', 'Pending', 1999),
    (10, 110, '2026-10-19', 'Wallet', 'Failed', 2999),
    (11, 111, '2026-10-21', 'UPI', 'Success', 5500),
    (12, 112, '2026-10-23', 'Card', 'Success', 3500),
    (13, 113, '2026-10-25', 'Net Banking', 'Success', 8500),
    (14, 114, '2026-10-27', 'Cash', 'Pending', 2400),
    (15, 115, '2026-10-29', 'Wallet', 'Failed', 499),
    (16, 116, '2026-10-31', 'UPI', 'Success', 899),
    (17, 117, '2026-11-02', 'Card', 'Success', 1800),
    (18, 118, '2026-11-04', 'Net Banking', 'Success', 1200),
    (19, 119, '2026-11-06', 'Cash', 'Pending', 999),
    (20, 120, '2026-11-08', 'Wallet', 'Failed', 3200);

-- SHIPMENTS: 
INSERT INTO SHIPMENTS (shipment_id, order_id, shipment_date, delivery_date, shipment_status) VALUES
    (1, 101, '2026-10-01', '2026-10-03', 'Delivered'),
    (2, 102, '2026-10-03', NULL, 'Active'),
    (3, 103, '2026-10-05', NULL, 'In Transit'),
    (4, 104, '2026-10-07', NULL, 'Pending'),
    (5, 105, '2026-10-09', NULL, 'Cancelled'),
    (6, 106, '2026-10-11', '2026-10-13', 'Delivered'),
    (7, 107, '2026-10-13', NULL, 'Active'),
    (8, 108, '2026-10-15', NULL, 'In Transit'),
    (9, 109, '2026-10-17', NULL, 'Pending'),
    (10, 110, '2026-10-19', NULL, 'Cancelled'),
    (11, 111, '2026-10-21', '2026-10-23', 'Delivered'),
    (12, 112, '2026-10-23', NULL, 'Active'),
    (13, 113, '2026-10-25', NULL, 'In Transit'),
    (14, 114, '2026-10-27', NULL, 'Pending'),
    (15, 115, '2026-10-29', NULL, 'Cancelled'),
    (16, 116, '2026-10-31', '2026-11-02', 'Delivered'),
    (17, 117, '2026-11-02', NULL, 'Active'),
    (18, 118, '2026-11-04', NULL, 'In Transit'),
    (19, 119, '2026-11-06', NULL, 'Pending'),
    (20, 120, '2026-11-08', NULL, 'Cancelled');

-- REVIEWS: 
INSERT INTO REVIEWS (review_id, customer_id, product_id, rating, review_text) VALUES
    (1, 1, 1, 5, 'Customer review for Smartphone'),
    (2, 2, 2, 4, 'Customer review for Laptop'),
    (3, 3, 3, 5, 'Customer review for Bluetooth Speaker'),
    (4, 4, 4, 3, 'Customer review for Smart Watch'),
    (5, 5, 5, 5, 'Customer review for Tablet'),
    (6, 6, 6, 4, 'Customer review for Camera'),
    (7, 7, 7, 2, 'Customer review for Mens T-Shirt'),
    (8, 8, 8, 5, 'Customer review for Womens Dress'),
    (9, 9, 9, 4, 'Customer review for Jeans'),
    (10, 10, 10, 3, 'Customer review for Shoes'),
    (11, 11, 11, 5, 'Customer review for Office Chair'),
    (12, 12, 12, 4, 'Customer review for Mixer Grinder'),
    (13, 13, 13, 5, 'Customer review for Microwave Oven'),
    (14, 14, 14, 2, 'Customer review for Cookware Set'),
    (15, 15, 15, 4, 'Customer review for Novel Book'),
    (16, 1, 16, 5, 'Customer review for Python Guide'),
    (17, 2, 17, 3, 'Customer review for Cricket Bat'),
    (18, 3, 18, 4, 'Customer review for Football'),
    (19, 4, 19, 5, 'Customer review for Yoga Mat'),
    (20, 5, 20, 1, 'Customer review for Gaming Keyboard');

-- WISHLIST: 
INSERT INTO WISHLIST (wishlist_id, customer_id, product_id) VALUES
    (1, 1, 5),
    (2, 2, 6),
    (3, 3, 7),
    (4, 4, 8),
    (5, 5, 9),
    (6, 6, 10),
    (7, 7, 11),
    (8, 8, 12),
    (9, 9, 13),
    (10, 10, 14),
    (11, 11, 15),
    (12, 12, 16),
    (13, 13, 17),
    (14, 14, 18),
    (15, 15, 19),
    (16, 16, 20),
    (17, 17, 1),
    (18, 18, 2),
    (19, 19, 3),
    (20, 20, 4);

-- CART: 
INSERT INTO CART (cart_id, customer_id) VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10),
    (11, 11),
    (12, 12),
    (13, 13),
    (14, 14),
    (15, 15),
    (16, 16),
    (17, 17),
    (18, 18),
    (19, 19),
    (20, 20);

-- CART_ITEMS: 
INSERT INTO CART_ITEMS (cart_item_id, cart_id, product_id, quantity) VALUES
    (1, 1, 3, 2),
    (2, 2, 4, 3),
    (3, 3, 5, 4),
    (4, 4, 6, 1),
    (5, 5, 7, 2),
    (6, 6, 8, 3),
    (7, 7, 9, 4),
    (8, 8, 10, 1),
    (9, 9, 11, 2),
    (10, 10, 12, 3),
    (11, 11, 13, 4),
    (12, 12, 14, 1),
    (13, 13, 15, 2),
    (14, 14, 16, 3),
    (15, 15, 17, 4),
    (16, 16, 18, 1),
    (17, 17, 19, 2),
    (18, 18, 20, 3),
    (19, 19, 1, 4),
    (20, 20, 2, 1);

-- EMPLOYEES: 
INSERT INTO EMPLOYEES (employee_id, employee_name, manager_id, salary, designation) VALUES
    (1, 'Employee 1', NULL, 60000, 'Manager'),
    (2, 'Employee 2', NULL, 55000, 'Manager'),
    (3, 'Employee 3', 2, 23000, 'Sales Executive'),
    (4, 'Employee 4', 1, 24000, 'Warehouse Executive'),
    (5, 'Employee 5', 2, 25000, 'Support Executive'),
    (6, 'Employee 6', 1, 26000, 'Sales Executive'),
    (7, 'Employee 7', 2, 27000, 'Warehouse Executive'),
    (8, 'Employee 8', 1, 28000, 'Support Executive'),
    (9, 'Employee 9', 2, 29000, 'Sales Executive'),
    (10, 'Employee 10', 1, 30000, 'Warehouse Executive'),
    (11, 'Employee 11', 2, 31000, 'Support Executive'),
    (12, 'Employee 12', 1, 32000, 'Sales Executive'),
    (13, 'Employee 13', 2, 33000, 'Warehouse Executive'),
    (14, 'Employee 14', 1, 34000, 'Support Executive'),
    (15, 'Employee 15', 2, 35000, 'Sales Executive'),
    (16, 'Employee 16', 1, 36000, 'Warehouse Executive'),
    (17, 'Employee 17', 2, 37000, 'Support Executive'),
    (18, 'Employee 18', 1, 38000, 'Sales Executive'),
    (19, 'Employee 19', 2, 39000, 'Warehouse Executive'),
    (20, 'Employee 20', 1, 40000, 'Support Executive');


ecommerce_db=# SELECT 'customers' AS table_name, COUNT(*) AS total_records FROM customers
ecommerce_db-# UNION ALL
ecommerce_db-# SELECT 'addresses', COUNT(*) FROM addresses
ecommerce_db-# UNION ALL
ecommerce_db-# SELECT 'categories', COUNT(*) FROM categories
ecommerce_db-# UNION ALL
ecommerce_db-# SELECT 'suppliers', COUNT(*) FROM suppliers
ecommerce_db-# UNION ALL
ecommerce_db-# SELECT 'products', COUNT(*) FROM products
ecommerce_db-# UNION ALL
ecommerce_db-# SELECT 'orders', COUNT(*) FROM orders
ecommerce_db-# UNION ALL
ecommerce_db-# SELECT 'order_items', COUNT(*) FROM order_items
ecommerce_db-# UNION ALL
ecommerce_db-# SELECT 'payments', COUNT(*) FROM payments
ecommerce_db-# UNION ALL
ecommerce_db-# SELECT 'shipments', COUNT(*) FROM shipments
ecommerce_db-# UNION ALL
ecommerce_db-# SELECT 'reviews', COUNT(*) FROM reviews
ecommerce_db-# UNION ALL
ecommerce_db-# SELECT 'wishlist', COUNT(*) FROM wishlist
ecommerce_db-# UNION ALL
ecommerce_db-# SELECT 'cart', COUNT(*) FROM cart
ecommerce_db-# UNION ALL
ecommerce_db-# SELECT 'cart_items', COUNT(*) FROM cart_items
ecommerce_db-# UNION ALL
ecommerce_db-# SELECT 'employees', COUNT(*) FROM employees;
