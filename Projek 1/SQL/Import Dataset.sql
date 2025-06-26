USE projek1;

show tables;

SHOW VARIABLES LIKE 'secure_file_priv'; #memeriksa dimana saya akan meletakan dataset saya

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/SuperstoreProjek1.csv'
INTO TABLE superstore
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;


