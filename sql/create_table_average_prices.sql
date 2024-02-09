DROP TABLE IF EXISTS average_prices;
CREATE TABLE average_prices (
    model_id INTEGER,
    year INTEGER,
    average_price REAL
);

INSERT INTO average_prices (model_id, year, average_price)
SELECT model_id, year, AVG(price) AS average_price
FROM autos
GROUP BY model_id, year
HAVING COUNT(*) >= 3;
