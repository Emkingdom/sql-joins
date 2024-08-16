-- write your queries here


SELECT * FROM owners o LEFT JOIN vehicles v ON v.owner_id = o.id;

SELECT o.first_name, o.last_name, COUNT(owner_id) AS total_vehicles FROM owners o JOIN vehicles v ON v.owner_id = o.id GROUP BY (o.first_name, o.last_name) ORDER BY total_vehicles  ;

SELECT o.first_name, o.last_name, AVG(PRICE)::NUMERIC(10) AS avg_price , COUNT(owner_id) AS total_vehicles FROM owners o JOIN vehicles v ON v.owner_id = o.id GROUP BY (o.first_name, o.last_name) ORDER BY avg_price DESC LIMIT 3;