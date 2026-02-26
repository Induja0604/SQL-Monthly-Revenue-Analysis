create database onlinesales;
use onlinesales;
show tables;
show columns from online_sales_dataset;
select * from online_sales_dataset;
select EXTRACT(MONTH FROM order_date) AS month from online_sales_dataset;
-- Monthly Revenue Query--
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue
FROM online_sales_dataset
GROUP BY year, month
ORDER BY year, month;
-- Monthly Order Volume Query----
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales_dataset
GROUP BY year, month
ORDER BY year, month;
-- Limit results for specific time periods---
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales_dataset
GROUP BY year, month
ORDER BY month
LIMIT 6;
#highest top 5 revenue generated
select sum(amount) as total_revenue,order_date from online_sales_dataset
 group by order_date 
 order by total_revenue 
 desc limit 5;