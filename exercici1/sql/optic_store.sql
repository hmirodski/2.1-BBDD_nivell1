DROP DATABASE IF EXISTS optics_store;
CREATE DATABASE optics_store;
USE optics_store;

CREATE TABLE suppliers (
nif VARCHAR(15) PRIMARY KEY UNIQUE NOT NULL,
name VARCHAR(100) NOT NULL,
street VARCHAR(100),
num VARCHAR(10),
floor VARCHAR(10),
door VARCHAR(10),
city VARCHAR(50),
postal_code VARCHAR(5),
country VARCHAR(50) DEFAULT 'Spain',
phone VARCHAR(20),
fax VARCHAR(20)
)




