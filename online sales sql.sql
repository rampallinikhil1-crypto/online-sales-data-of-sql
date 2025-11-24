show databases;
use rahul;
show tables;

CREATE TABLE online_sales (
    Transaction_ID INT,
    Date DATE,
    Product_Category VARCHAR(100),
    Product_Name VARCHAR(200),
    Units_Sold INT,
    Unit_Price DECIMAL(10,2),
    Total_Revenue DECIMAL(10,2),
    Region VARCHAR(100),
    Payment_Method VARCHAR(50)
);



SELECT
    EXTRACT(YEAR FROM Date) AS year,
    EXTRACT(MONTH FROM Date) AS month,
    SUM(Total_Revenue) AS monthly_revenue,
    COUNT(Transaction_ID) AS order_volume
FROM online_sales
GROUP BY
    EXTRACT(YEAR FROM Date),EXTRACT(MONTH FROM Date)
ORDER BY
    year ASC,month ASC;
    
    

SELECT
    EXTRACT(YEAR FROM Date) AS year,
    EXTRACT(MONTH FROM Date) AS month,
    SUM(Total_Revenue) AS monthly_revenue
FROM online_sales
GROUP BY
    EXTRACT(YEAR FROM Date),
    EXTRACT(MONTH FROM Date)
ORDER BY
    monthly_revenue DESC
LIMIT 3;