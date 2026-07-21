/*
===============================================================================
DDL Script: Create Bronze Tables
===============================================================================
Script Purpose:
    This script creates the Bronze layer tables for the M5 Data Warehouse.
    If the tables already exist, they are dropped and recreated.

Usage:
    Run this script to initialize or recreate the Bronze schema tables.
===============================================================================
*/

IF OBJECT_ID('Bronze.calendar', 'U') IS NOT NULL
    DROP TABLE Bronze.calendar;
GO

CREATE TABLE Bronze.calendar (
    date DATE,
    wm_yr_wk INT,
    weekday VARCHAR(20),
    wday INT,
    month INT,
    year INT,
    d VARCHAR(10),
    event_name_1 VARCHAR(50),
    event_type_1 VARCHAR(20),
    event_name_2 VARCHAR(50),
    event_type_2 VARCHAR(20),
    snap_CA BIT,
    snap_TX BIT,
    snap_WI BIT
);


IF OBJECT_ID('Bronze.sales_long', 'U') IS NOT NULL
    DROP TABLE Bronze.sales_long;
GO

CREATE TABLE Bronze.sales_long (
    id VARCHAR(100),
    item_id VARCHAR(50),
    dept_id VARCHAR(50),
    cat_id VARCHAR(50),
    store_id VARCHAR(50),
    state_id VARCHAR(50),
    d VARCHAR(10),
    sales INT
);

IF OBJECT_ID('Bronze.sell_prices', 'U') IS NOT NULL
    DROP TABLE Bronze.sell_prices;
GO

CREATE TABLE Bronze.sell_prices (
    store_id VARCHAR(20),
    item_id VARCHAR(50),
    wm_yr_wk INT,
    sell_price DECIMAL(10,2)
);
