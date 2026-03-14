-- Create the database
CREATE DATABASE IF NOT EXISTS ecommerce_sql_project;
USE ecommerce_sql_project;

-- ========================
-- Table: products
-- ========================
CREATE TABLE IF NOT EXISTS products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10,2) NOT NULL
);

-- ========================
-- Table: orders
-- ========================
CREATE TABLE IF NOT EXISTS orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_status VARCHAR(20) NOT NULL, -- Delivered, Shipped, Cancelled
    order_purchase_date DATE NOT NULL
);

-- ========================
-- Table: order_items
-- ========================
CREATE TABLE IF NOT EXISTS order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- ========================
-- Table: payments
-- ========================
CREATE TABLE IF NOT EXISTS payments (
    payment_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    payment_type VARCHAR(20) NOT NULL, -- Credit Card, Debit Card, UPI, Net Banking
    payment_value DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
