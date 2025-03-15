DROP TABLE IF EXISTS temp_tables.products_2;

CREATE TABLE temp_tables.products_2 (
    product_id VARCHAR PRIMARY KEY,
    brand VARCHAR NOT NULL,
    model VARCHAR NOT NULL,
    model_year VARCHAR NOT NULL,
    price NUMERIC NOT NULL
);


INSERT INTO temp_tables.products_2
(product_id,brand,model,model_year,price)

VALUES
('produto334','RIVIAN','X1','2021',300000),
('produto335','RIVIAN','X2','2021',400000),
('produto336','RIVIAN','X3','2021',500000)