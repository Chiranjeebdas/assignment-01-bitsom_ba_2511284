-- DIMENSION TABLES

CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE,
    month INT,
    year INT
);

CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    store_city VARCHAR(100)
);

CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

-- FACT TABLE

CREATE TABLE fact_sales (
    sales_id INT PRIMARY KEY,
    date_id INT,
    store_id INT,
    product_id INT,
    units_sold INT,
    unit_price DECIMAL(10,2),
    total_amount DECIMAL(10,2),

    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);







-- INSERT DATA

INSERT INTO dim_store VALUES
(1, 'Chennai Anna', 'Chennai'),
(2, 'Delhi South', 'Delhi'),
(3, 'Bangalore MG', 'Bangalore');

INSERT INTO dim_product VALUES
(1, 'Speaker', 'Electronics'),
(2, 'Jeans', 'Clothing'),
(3, 'Atta 10kg', 'Grocery');

INSERT INTO dim_date VALUES
(1, '2023-08-29', 8, 2023),
(2, '2023-12-12', 12, 2023),
(3, '2023-02-05', 2, 2023);

INSERT INTO fact_sales VALUES
(1, 1, 1, 1, 3, 49262.78, 147788.34),
(2, 2, 1, 1, 11, 23226.12, 255487.32),
(3, 3, 1, 1, 20, 48703.39, 974067.80);
