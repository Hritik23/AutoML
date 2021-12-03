-- To delete the database 'test' if exists [ be careful here]
DROP DATABASE test;


-- Creating the new database 'test'
CREATE DATABASE test;


-- Using the database 'test'
USE test;


-- Creating the table 'bank_churn'
CREATE TABLE test.bank_churn(
    CreditScore NUMERIC NULL,
    Geographyy VARCHAR(100) NULL,
    Gender VARCHAR(100) NULL,
    Age NUMERIC NULL,
    Tenure NUMERIC NULL,
    Balance NUMERIC NULL,
    NumOfProducts NUMERIC NULL,
    HasCrCard NUMERIC NULL,
    IsActiveMember NUMERIC NULL,
    EstimatedSalary NUMERIC NULL,
    Exited NUMERIC NULL
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE =utf8mb4_0900_ai_ci;


-- Loading the data.csv file locally into bank_churn table
-- To make this loading possible without any error, we have to put GLOBAL VARIABLE 'local_infile=1' both on client and server side.  
LOAD DATA LOCAL INFILE "data.csv" INTO TABLE test.bank_churn FIELDS TERMINATED BY "," LINES TERMINATED BY "\r\n" IGNORE 1 ROWS ;


-- TO see everything working fine
SELECT * FROM bank_churn LIMIT 5;
