-- QUESTION - 2

CREATE TABLE Products (
    order_date DATE,
    sales INTEGER
);

-- Inserting the data
INSERT INTO Products (order_date, sales) VALUES
('2021-01-01', 20),
('2021-01-02', 32),
('2021-02-08', 45),
('2021-02-04', 31),
('2021-03-21', 33),
('2021-03-06', 19),
('2021-04-07', 21),
('2021-04-22', 10);

SELECT * FROM Products

SELECT EXTRACT(YEAR FROM order_date) AS Year, to_char(order_date, 'Mon') AS Month, SUM(sales) AS totalsales
FROM Products
GROUP BY Year, Month
ORDER BY totalsales DESC;
