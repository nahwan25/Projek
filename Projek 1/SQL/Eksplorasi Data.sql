USE projek1;

show tables;

select * from  superstore;

DESC superstore;

SELECT COUNT(*) FROM superstore;

# Exploratory Data Analysis
# Melihat 10 data
SELECT * FROM superstore
LIMIT 10;

# Duplikat data dengan Order_ID, Product_ID, Quantity, Sales, Discount, Profit
SELECT 
    Order_ID, Product_ID, Quantity, Sales, Discount, Profit, COUNT(*) AS jumlah
FROM orders
GROUP BY 
    Order_ID, Product_ID, Quantity, Sales, Discount, Profit
HAVING jumlah > 1;

# Cek Data NULL / Kosong
SELECT *
FROM orders
WHERE 
    Order_ID IS NULL OR
    Order_Date IS NULL OR
    Ship_Date IS NULL OR
    Ship_Mode IS NULL OR
    Customer_ID IS NULL OR
    Customer_Name IS NULL OR
    Segment IS NULL OR
    Country IS NULL OR
    City IS NULL OR
    State IS NULL OR
    Postal_Code IS NULL OR
    Region IS NULL OR
    Product_ID IS NULL OR
    Category IS NULL OR
    Sub_Category IS NULL OR
    Product_Name IS NULL OR
    Sales IS NULL OR
    Quantity IS NULL OR
    Discount IS NULL OR
    Profit IS NULL;

# Cek Order_Date dan Ship_Date NULL atau rusak (format salah)
SELECT *
FROM orders
WHERE 
    Order_Date IS NULL
    OR STR_TO_DATE(Order_Date, '%Y-%m-%d') IS NULL
    OR Ship_Date IS NULL
    OR STR_TO_DATE(Ship_Date, '%Y-%m-%d') IS NULL;
    
# Produk mana yang paling menguntungkan?
SELECT Product_Name, SUM(Quantity) AS total_qty
FROM superstore
GROUP BY Product_Name
ORDER BY total_qty DESC
LIMIT 10;

# Apakah diskon meningkatkan penjualan atau malah menurunkan profit?
SELECT 
    Discount,
    COUNT(*) AS jumlah_transaksi,
    ROUND(AVG(Sales), 2) AS rata_rata_sales,
    ROUND(AVG(Profit), 2) AS rata_rata_profit
FROM superstore
GROUP BY Discount
ORDER BY Discount;

# Wilayah mana yang perlu ditingkatkan pemasarannya?
SELECT 
    Region,
    COUNT(*) AS jumlah_transaksi,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(AVG(Profit), 2) AS rata_rata_profit
FROM superstore
GROUP BY Region
ORDER BY total_sales;


