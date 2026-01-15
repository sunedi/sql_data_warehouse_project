/*
========================================================================
Cretae Database and Schemas
========================================================================
Script Purpose:
    This script create a new database named 'DataWarehouse' after checking if it already exists.
    if the database exists, it is dropped amd recreated. Additionally, the script sets up three schemas
    within the database: 'bronze', 'silver', and 'gold'.

WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists.
    All data in the database will be permantly deleted. Proceed with caution
    and ensure you have proper backups before running this script.
*/


USE master;
GO

  -- Drop and recreate the 'DataWarehouse' database
  IF EXISTS (SLECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
  BEGIN
      ALTER DATABASE DataWahouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
      DROP DATABASE DataWarehouse;
END;
GO


-- Create Database 'DataWarehouse'
CREATE DATABASE DataWarehouse;

USE DataWarehouse;
GO

--Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
