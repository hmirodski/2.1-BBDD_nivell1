USE optics_store;

INSERT INTO suppliers (nif, name, street, num, floor, door, city, postal_code, country, phone, fax) VALUES
('B12345678', 'VisionGlobal', 'Calle Mayor', '12', '2', 'B', 'Madrid', '28001', 'Spain', '911000001', '911000002'),
('A87654321', 'LentesExpress', 'Av. Diagonal', '100', NULL, NULL, 'Barcelona', '08018', 'Spain', '934000111', NULL),
('C11223344', 'EuroOptics', 'Gran Vía', '55', '1', 'A', 'Valencia', '46001', 'Spain', '963000222', '963000223');

INSERT INTO glasses (brand, left_lens, right_lens, frame_type, frame_color, lens_color, price, nif) VALUES
('Ray-Ban', '-1.00', '-1.00', 'plastic', 'black', 'grey', 149.99, 'B12345678'),
('Oakley', '-0.50', '-0.75', 'metal', 'silver', 'blue', 199.00, 'A87654321'),
('Gucci', '-1.25', '-1.25', 'rimless', 'gold', 'clear', 299.50, 'C11223344'),
('Vogue', '-2.00', '-1.75', 'plastic', 'red', 'brown', 129.95, 'B12345678'),
('Persol', '-0.75', '-0.50', 'metal', 'black', 'green', 179.95, 'A87654321');

INSERT INTO clients (name, phone, email, date_registered, street, number, city, postal_code, country, recommended_by) VALUES
('Carlos Ruiz', '611000001', 'carlos@example.com', '2023-01-10', 'Alcalá', '23', 'Madrid', '28002', 'Spain', NULL),
('Ana López', '612000002', 'ana@example.com', '2023-02-15', 'Valencia', '45', 'Valencia', '46002', 'Spain', 1),
('Luis Pérez', '613000003', 'luis@example.com', '2023-03-20', 'Granada', '67', 'Sevilla', '41001', 'Spain', 1),
('Marta Gómez', '614000004', 'marta@example.com', '2023-04-25', 'Diagonal', '88', 'Barcelona', '08020', 'Spain', 2),
('Lucía Díaz', '615000005', 'lucia@example.com', '2023-05-30', 'Bailén', '100', 'Madrid', '28003', 'Spain', NULL);

INSERT INTO employee (name) VALUES
('Jorge Martín'),
('Sofía Romero'),
('Pablo Torres'),
('Laura Fernández'),
('Andrés Navarro');

INSERT INTO sales (sale_date, id_glasses, id_client, id_employee) VALUES
('2023-06-01', 1, 1, 1),
('2023-06-02', 2, 2, 2),
('2023-06-03', 3, 3, 3),
('2023-06-04', 4, 4, 4),
('2023-06-05', 5, 5, 5);
