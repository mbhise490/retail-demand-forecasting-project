/*
=====================================================
Project : Enterprise Retail Demand Forecasting Platform
Database: M5DataWarehouse
Purpose : Create the database and Medallion Architecture
          schemas (Bronze, Silver, Gold).
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
