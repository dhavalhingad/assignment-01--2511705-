-- Dimension: Date
CREATE TABLE dim_date (
    date_id DATE PRIMARY KEY,
    month INT,
    year INT
);

-- Dimension: Store
CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100)
);

-- Dimension: Product
CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

-- Fact Table
CREATE TABLE fact_sales (
    sale_id INT PRIMARY KEY,
    date_id DATE,
    store_id INT,
    product_id INT,
    quantity INT,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);


-- dim_date
INSERT INTO dim_date VALUES
('2023-01-01', 1, 2023),
('2023-02-01', 2, 2023),
('2023-03-01', 3, 2023);

-- dim_store
INSERT INTO dim_store VALUES
(1, 'Mumbai Store'),
(2, 'Delhi Store'),
(3, 'Bangalore Store');

-- dim_product
INSERT INTO dim_product VALUES
(101, 'Laptop', 'Electronics'),
(102, 'Shirt', 'Clothing'),
(103, 'Rice', 'Groceries');

-- fact_sales
INSERT INTO fact_sales VALUES
(1, '2023-01-01', 1, 101, 2, 120000),
(2, '2023-01-01', 2, 102, 5, 7500),
(3, '2023-02-01', 3, 103, 10, 12000),
(4, '2023-02-01', 1, 101, 1, 60000),
(5, '2023-03-01', 2, 102, 3, 4500);