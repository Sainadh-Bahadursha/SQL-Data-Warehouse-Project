USE master;

CREATE DATABASE DataWarehouse;

USE DataWarehouse;

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
-- Go is like a seperator, it will tell first create bronze fully then go to silver then go to gold in that order only.