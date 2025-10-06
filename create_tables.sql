-- ============================================================================
-- Archivo: create_tables.sql
-- Proyecto: QAPITAL Real Estate Analytics
-- Descripción: Creación de tablas Gold en Data Warehouse desde Lakehouse
-- ============================================================================

-- Dimensiones
CREATE TABLE dim_broker AS
SELECT * FROM LKH_QAPITAL_REALSTATE.dbo.dim_broker;

CREATE TABLE dim_client AS
SELECT * FROM LKH_QAPITAL_REALSTATE.dbo.dim_client;

CREATE TABLE dim_project AS
SELECT * FROM LKH_QAPITAL_REALSTATE.dbo.dim_project;

CREATE TABLE dim_property AS
SELECT * FROM LKH_QAPITAL_REALSTATE.dbo.dim_property;

CREATE TABLE dim_campaign AS
SELECT * FROM LKH_QAPITAL_REALSTATE.dbo.dim_campaign;

-- Hechos
CREATE TABLE fact_sales AS
SELECT * FROM LKH_QAPITAL_REALSTATE.dbo.fact_sales;

CREATE TABLE fact_leads AS
SELECT * FROM LKH_QAPITAL_REALSTATE.dbo.fact_leads;