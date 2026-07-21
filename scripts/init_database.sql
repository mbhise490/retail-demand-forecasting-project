/*
=====================================================
Project : Enterprise Retail Demand Forecasting Platform
Database: M5DataWarehouse
Purpose : Create the database and Medallion Architecture
          schemas (Bronze, Silver, Gold).
WARNING:
    Running this script will drop the entire 'M5DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
=====================================================
*/

USE master;
GO

-- Drop and recreate the database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'M5DataWarehouse')
BEGIN
    ALTER DATABASE M5DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE M5DataWarehouse;
END;
GO

-- Create database
CREATE DATABASE M5DataWarehouse;
GO

USE M5DataWarehouse;
GO

-- Create schemas
CREATE SCHEMA Bronze;
GO

CREATE SCHEMA Silver;
GO

CREATE SCHEMA Gold;
GO
