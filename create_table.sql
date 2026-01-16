-- =========================================
-- Proyecto: Análisis de ventas BMW
-- Archivo: create_table.sql
-- Base de datos: SQLite
-- Autora: Jennifer Merida
-- ========================================

DROP TABLE IF EXISTS bmw_sales;

CREATE TABLE "bmw_sales" (
	"Model"	TEXT,
	"Year"	INTEGER,
	"Region"	TEXT,
	"Color"	TEXT,
	"Fuel_Type"	TEXT,
	"Transmission"	TEXT,
	"Engine_Size_L"	REAL,
	"Mileage_KM"	INTEGER,
	"Price_USD"	INTEGER,
	"Sales_Volume"	INTEGER,
	"Sales_Classification"	TEXT
);
