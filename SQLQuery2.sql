CREATE DATABASE OurExerciseDb
ON
PRIMARY (
    NAME = OurExerciseDb_Data,
    FILENAME = 'F:\phase2\daily assignments\assignment1\OurExerciseDb_Data.mdf',
    SIZE = 24MB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 8MB
)
LOG ON (
    NAME = OurExerciseDb_Log,
    FILENAME = 'F:\phase2\daily assignments\assignment1\OurExerciseDb_Log.ldf',
    SIZE = 8MB,
    MAXSIZE = 2048GB,
    FILEGROWTH = 10%
)
use OurExerciseDb

CREATE TABLE Product (
    PId INT PRIMARY KEY IDENTITY(50, 1),
    PName VARCHAR(255) NOT NULL,
    PPrice DECIMAL(10, 2) CHECK (PPrice >= 50 AND PPrice <= 100000),
    PCompany VARCHAR(50) CHECK (PCompany IN ('Samsung', 'Apple', 'Redmi', 'HTC')),
    PQty INT DEFAULT 1 CHECK (PQty >= 1)
);
-- Insert at least 5 records into the Product table
INSERT INTO Product (PName, PPrice, PCompany, PQty) VALUES ('fridge', 95000.50, 'Samsung', 2);
INSERT INTO Product (PName, PPrice, PCompany, PQty) VALUES ('macbook', 100000.00, 'Apple', 2);
INSERT INTO Product (PName, PPrice, PCompany, PQty) VALUES ('mobile', 60000.75, 'Redmi', 5);
INSERT INTO Product (PName, PPrice, PCompany, PQty) VALUES ('smart watch', 1900.25, 'HTC', 1);
INSERT INTO Product (PName, PPrice, PCompany, PQty) VALUES ('tablet', 95000.55, 'Samsung', 4);
select * from Product