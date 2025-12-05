USE pizzeria;

INSERT INTO provinces (name) VALUES
('Madrid'),
('Barcelona');

INSERT INTO cities (name, province_id) VALUES
('Madrid', 1),
('Tarragona', 1),
('Barcelona', 2),
('Badalona', 2);

INSERT INTO customers (name, surname, address, postal_code, city_id, phone) VALUES
('Carles', 'Rovira', 'Calle Mayor 10', '28001', 1, '611000001'),
('Ona', 'López', 'Avenida Sur 5', '28931', 2, '612000002'),
('Lluis', 'Alonso', 'Calle Este 9', '08001', 3, '613000003');

INSERT INTO stores (address, postal_code, city_id) VALUES
('Calle Central 1', '28010', 1),
('Gran Vía 100', '08002', 3);

INSERT INTO employees (name, surname, nif, phone, role, store_id) VALUES
('Jorge', 'Martín', '12345678A', '600111111', 'cook', 1),
('Sofía', 'Romero', '87654321B', '600222222', 'delivery', 1),
('Pablo', 'Torres', '11223344C', '600333333', 'cook', 2),
('Laura', 'Fernández', '99887766D', '600444444', 'delivery', 2);

INSERT INTO categories (name) VALUES
('Clásicas'),
('Especiales');

INSERT INTO products (name, description, image, price, type, category_id) VALUES
('Pizza Margarita', 'Tomate y mozzarella', 'margarita.jpg', 8.50, 'pizza', 1),
('Pizza BBQ', 'Pollo y salsa barbacoa', 'bbq.jpg', 10.00, 'pizza', 2),
('Hamburguesa Clásica', 'Carne y queso', 'burguer.jpg', 7.00, 'hamburger', NULL),
('Coca-Cola', 'Bebida refrescante', 'cocacola.jpg', 2.00, 'drink', NULL);

INSERT INTO orders (order_date, delivery_type, total_price, customer_id, store_id) VALUES
('2023-12-01 13:00:00', 'delivery', 20.50, 1, 1),
('2023-12-02 20:30:00', 'pickup', 9.00, 2, 2);

INSERT INTO order_details (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 8.50),
(1, 4, 2, 4.00),
(2, 2, 1, 10.00);

INSERT INTO deliveries (order_id, employee_id, delivery_time) VALUES
(1, 2, '2023-12-01 13:45:00');
