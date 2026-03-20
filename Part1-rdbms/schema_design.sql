-- Customers
CREATE TABLE customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(100),
    customer_city VARCHAR(50)
);

-- Products
CREATE TABLE products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100),
    unit_price DECIMAL(10,2)
);

-- Orders
CREATE TABLE orders (
    order_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10),
    order_date DATE
);

-- Order Details
CREATE TABLE order_details (
    order_id VARCHAR(10),
    product_id VARCHAR(10),
    quantity INT
);