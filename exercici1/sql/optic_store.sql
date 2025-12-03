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
);

CREATE TABLE glasses (
    id_glasses int AUTO_INCREMENT PRIMARY KEY,
    brand VARCHAR(20),
    left_lens VARCHAR(20),
    right_lens VARCHAR(20),
    frame_type ENUM('rimless', 'plastic', 'metal'),
    frame_color VARCHAR(30),
    lens_color VARCHAR(30),
    price DECIMAL(8 , 2 ),
    id_supplier INT,
    FOREIGN KEY (nif)
        REFERENCES Supplier (nif)
);

CREATE TABLE clients (
    id_client INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100),
    date_registered DATE,
    street VARCHAR(100),
    number VARCHAR(10),
    city VARCHAR(50),
    postal_code VARCHAR(10),
    country VARCHAR(50),
    recommended_by INT,
    FOREIGN KEY (recommended_by)
        REFERENCES Client (id_client)
);




