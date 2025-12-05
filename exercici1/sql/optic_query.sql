USE optics_store;

SELECT * FROM suppliers;

SELECT name, email FROM clients;

SELECT g.brand, g.price, s.name AS supplier_name
FROM glasses g
JOIN suppliers s ON g.nif = s.nif;

SELECT c.name AS client_name, gl.brand AS glasses_brand, e.name AS employee_name, sa.sale_date
FROM sales sa
JOIN clients c ON sa.id_client = c.id_client
JOIN glasses gl ON sa.id_glasses = gl.id_glasses
JOIN employee e ON sa.id_employee = e.id_employee;

SELECT c2.name AS recommender_name, COUNT(c1.id_client) AS referrals
FROM clients c1
JOIN clients c2 ON c1.recommended_by = c2.id_client
GROUP BY c1.recommended_by;


SELECT country, COUNT(*) AS num_suppliers
FROM suppliers
GROUP BY country;