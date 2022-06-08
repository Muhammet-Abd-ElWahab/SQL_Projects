DROP TABLE IF EXISTS "2019_purchases";
DROP TABLE IF EXISTS "2020_purchases";
DROP TABLE IF EXISTS "categories";

CREATE TABLE purchases_2019 (
member_id INT,
full_date VARCHAR(50),
year INT,
month INT,
day INT,
day_of_week INT,
purchase_id VARCHAR PRIMARY KEY
);

CREATE TABLE purchases_2020 (
MemberID INT,
FullDate VARCHAR(50),
DayofWeek INT,
PurchaseID VARCHAR PRIMARY KEY
);

CREATE TABLE categories (
purchase_id VARCHAR PRIMARY KEY,
category VARCHAR
);


\copy purchases_2019 FROM '2019_purchases.csv' DELIMITER ',' CSV HEADER;
\copy purchases_2020 FROM '2020_purchases.csv' DELIMITER ',' CSV HEADER;
\copy categories FROM 'categories.csv' DELIMITER ',' CSV HEADER;