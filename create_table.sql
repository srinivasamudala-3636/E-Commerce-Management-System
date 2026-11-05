
-- 1. CUSTOMERS
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15),
    registration_date DATE
);

-- 2. ADDRESSES
CREATE TABLE addresses (
    address_id INT PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    address_type VARCHAR(30),
    city VARCHAR(50),
    state VARCHAR(50),
    pincode VARCHAR(10)
);

-- 3. CATEGORIES 
CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100),
    parent_category_id INT REFERENCES categories(category_id)
);

-- 4. SUPPLIERS
CREATE TABLE suppliers (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- 5. PRODUCTS
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    description TEXT,
    price NUMERIC(10,2),
    stock_quantity INT,
    category_id INT REFERENCES categories(category_id),
    supplier_id INT REFERENCES suppliers(supplier_id)
);

-- 6. ORDERS
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    order_date DATE,
    order_status VARCHAR(30),
    total_amount NUMERIC(10,2)
);

-- 7. ORDER_ITEMS
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    product_id INT REFERENCES products(product_id),
    quantity INT,
    unit_price NUMERIC(10,2)
);

-- 8. PAYMENTS
CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    payment_date DATE,
    payment_method VARCHAR(30),
    payment_status VARCHAR(30),
    amount NUMERIC(10,2)
);

-- 9. SHIPMENTS
CREATE TABLE shipments (
    shipment_id INT PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    shipment_date DATE,
    delivery_date DATE,
    shipment_status VARCHAR(30)
);

-- 10. REVIEWS
CREATE TABLE reviews (
    review_id INT PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    product_id INT REFERENCES products(product_id),
    rating INT,
    review_text TEXT
);

-- 11. WISHLIST
CREATE TABLE wishlist (
    wishlist_id INT PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    product_id INT REFERENCES products(product_id)
);

-- 12. CART
CREATE TABLE cart (
    cart_id INT PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id)
);

-- 13. CART_ITEMS
CREATE TABLE cart_items (
    cart_item_id INT PRIMARY KEY,
    cart_id INT REFERENCES cart(cart_id),
    product_id INT REFERENCES products(product_id),
    quantity INT
);

-- 14. EMPLOYEES (self-referencing manager foreign key)
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    manager_id INT REFERENCES employees(employee_id),
    salary NUMERIC(10,2),
    designation VARCHAR(50)
);
