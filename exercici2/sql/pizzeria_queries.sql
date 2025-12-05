USE PIZZERIA;

SELECT ci.name AS city, SUM(od.quantity) AS drinks_sold
FROM orders o
JOIN order_details od ON o.id = od.order_id
JOIN products p ON od.product_id = p.id
JOIN stores s ON o.store_id = s.id
JOIN cities ci ON s.city_id = ci.id
WHERE p.type = 'drink' AND ci.name = 'Madrid'
GROUP BY ci.name;


SELECT e.name, e.surname, COUNT(d.id) AS total_deliveries
FROM deliveries d
JOIN employees e ON d.employee_id = e.id
WHERE e.name = 'Sofía' AND e.surname = 'Romero'
GROUP BY e.id;