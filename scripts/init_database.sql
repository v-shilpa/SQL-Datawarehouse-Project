/*
========================================================================================================================
Create database and Schema
========================================================================================================================
Script purpose:
  This script creates a new database named 'DataWarehouse' after checking if it already exists
  If the dataset is exist it will drop and recreate. Additionally script set up with 3 schema's with the databases
  'bronze', 'silver', 'gold'.

WARNING :
  running this script will drop the entire datawarehouse if exists.
  all data in the database will be permanently deleted. Process this causion ensure that you have proper backup 
  before running this script
*/





USE master;
GO
  --Drop and create the datawarehouse and database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name='DataWarehouse')
BEGIN
  DROP DATABASE DataWarehouse;
END;
GO

--Create the database 'datawarehouse'
Create DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

--Create Schema
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
