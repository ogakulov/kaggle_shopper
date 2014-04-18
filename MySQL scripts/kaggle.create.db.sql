Drop Table Offers;

Create Table Offers(
offer bigint,
category bigint,
quantity int,
company bigint,
offervalue double,
brand bigint);

LOAD DATA LOCAL INFILE '/Users/Leah/Documents/kaggle/offers.csv' 
INTO TABLE Offers
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r'
IGNORE 1 lines;


select *from Offers;

DROP Table trainHistory;

Create Table trainHistory(
id bigint,
strchain bigint,
offer bigint,
market bigint,
repeattrips bigint,
repeater char(1),
offerdate varchar(20));

LOAD DATA LOCAL INFILE '/Users/Leah/Documents/kaggle/trainHistory.csv' 
INTO TABLE trainHistory
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r'
IGNORE 1 lines;

Select * from trainHistory;

DROP Table testHistory.Kaggle_Shopper;
Create Table testHistory(
id bigint,
strchain int,
offer bigint,
market bigint,
offerdate varchar(20));

LOAD DATA LOCAL INFILE '/Users/Leah/Documents/kaggle/testHistory.csv' 
INTO TABLE testHistory
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r'
IGNORE 1 lines;

Select * from testHistory;

Drop Table transactions.Kaggle_Shopper;

Delete from transactions;

Create Table transactions(
id bigint,
strchain int,
dept bigint,
category bigint,
company bigint,
brand bigint,
date varchar(20),
productsize double,
productmeasure double,
purchasequantity double,
purchaseamount double);

LOAD DATA LOCAL INFILE '/Users/Leah/Documents/kaggle/transactions.csv' 
INTO TABLE transactions
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r'
IGNORE 1 lines;

select * from transactions;