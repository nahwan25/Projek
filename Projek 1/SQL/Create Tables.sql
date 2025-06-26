USE projek1;

CREATE TABLE superstore (
    Row_ID INT,
    Order_ID VARCHAR(150),
    Order_Date DATE,
    Ship_Date DATE,
    Ship_Mode VARCHAR(150),
    Customer_ID VARCHAR(150),
    Product_ID VARCHAR(150),
    Customer_Name VARCHAR(150),
    Segment VARCHAR(150),
    Country VARCHAR(150),
    City VARCHAR(150),
    State VARCHAR(150),
    Postal_Code VARCHAR(150),
    Region VARCHAR(150),
    Category VARCHAR(150),
    Sub_Category VARCHAR(150),
    Product_Name VARCHAR(150),
    Sales DECIMAL(10, 2),
    Quantity INT,
    Discount DECIMAL(4, 2),
    Profit DECIMAL(10, 2)
);
