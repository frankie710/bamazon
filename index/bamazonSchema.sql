DROP DATABASE IF EXISTS bamazonDB;
CREATE DATABASE bamazonDB;

USE bamazonDB;

CREATE TABLE products (
    id VARCHAR(100),
    Product VARCHAR(100) NULL,
    Department VARCHAR(100) NULL,
    Price VARCHAR(45) NULL,
    Stock_Quantity VARCHAR(45) NULL,
    PRIMARY KEY (id)
);

INSERT INTO products(id, Product, Department, Price, Stock_Quantity)
VALUES ('0', 'Wilson Evolution Indoor Game Basketball', 'Sports and Fitness', '48.61', '200');

INSERT INTO products(id, Product, Department, Price, Stock_Quantity)
VALUES ('1', 'Kenmore Electric Dryer, includes delivery and hookup', 'Appliances', '499.99', '20');

INSERT INTO products(id, Product, Department, Price, Stock_Quantity)
VALUES ('2', 'Compact Ice Maker, Red', 'Appliances', '79.99', '20');

INSERT INTO products(id, Product, Department, Price, Stock_Quantity)
VALUES ('3', 'The Official SAT Study Guide', 'Books', '21.15', '50');

INSERT INTO products(id, Product, Department, Price, Stock_Quantity)
VALUES ('4', 'Lord of the Rings Boxed Set', 'Books', '112.41', '20');

INSERT INTO products(id, Product, Department, Price, Stock_Quantity)
VALUES ('5', 'Solar System Reference Poster', 'Books', '3.99', '30');

INSERT INTO products(id, Product, Department, Price, Stock_Quantity)
VALUES ('6', 'Schwinn Mens Wayfarer Hybrid Bike', 'Sports', '198.99', '3');

INSERT INTO products(id, Product, Department, Price, Stock_Quantity)
VALUES ('7', 'Echo Dot (2nd Generation)', 'Amazon Device', '49.99', '100');

INSERT INTO products(id, Product, Department, Price, Stock_Quantity)
VALUES ('8', 'Xbox One S 1TB Console', 'Video Games', '294.69', '30');

INSERT INTO products(id, Product, Department, Price, Stock_Quantity)
VALUES ('9', 'Levis Mens Jean', 'Amazon Fashion', '39.99', '30');

SELECT * from products;