--===============================
--Proyecto: Análisis de ventas de BMW
--Base de Datos: SQLite
--Autor: Jennifer Merida
--===============================


--1. Facturación total
SELECT SUM(Price_USD*Sales_Volume) AS facturacion
FROM BMW;

-- ------------------------------------------------------

--2. Facturación por año
SELECT Year, SUM(Price_USD) AS facturacion
FROM BMW
GROUP BY Year;

-- ------------------------------------------------------

--3. Cantidad de autos vendidos
SELECT Region, COUNT(Model) AS modelos_vendidos
FROM BMW
GROUP BY Region
ORDER By modelos_vendidos DESC;

-- ------------------------------------------------------

--4. Cantidad vendida por modelo
SELECT Model, COUNT(Model) AS cantidad
FROM BMW
GROUP BY Model
ORDER BY cantidad DESC;

-- ------------------------------------------------------

--5. Facturación por modelo
SELECT Model, SUM(Price_USD*Sales_Volume) AS facturacion
FROM BMW
GROUP BY Model;

-- ------------------------------------------------------

--6. Porcentaje de las calificaciones por ventas sobre el total 
SELECT Sales_Classification, COUNT(*)*100/(SELECT COUNT(*) FROM BMW) AS porcentaje_ventas
FROM BMW
GROUP BY Sales_Classification;

-- ------------------------------------------------------

--7. Volumen de ventas por región
SELECT Region, SUM(Sales_Volume) AS voluemen_ventas
FROM BMW
GROUP BY Region;

-- ------------------------------------------------------

--8. Porcentaje de tipo de combustible sobre el total 
SELECT Fuel_Type, COUNT(*)*100/(SELECT COUNT(*) FROM BMW) AS porcentaje
FROM BMW
GROUP BY Fuel_Type;

-- ------------------------------------------------------

--9. Porcentaje de tipo de Transmisión sobre el total
SELECT Transmission, COUNT(*)*100/(SELECT COUNT(*) FROM BMW) AS porcentaje
FROM BMW
GROUP BY Transmission;

-- ------------------------------------------------------

--10. Top modelos por volumen
SELECT Model, SUM(Sales_Volume) AS volumen
FROM BMW
GROUP BY Model
ORDER BY volumen DESC
limit 5;

-- ------------------------------------------------------

--11. Top regiones por volumen
SELECT Region, SUM(Sales_Volume) AS volumen
FROM BMW
GROUP BY Region
ORDER BY volumen DESC
limit 3;

-- ------------------------------------------------------

--12. Cantidad de modelos vendidos por región 
SELECT Region, COUNT(Model) AS cantidad
FROM BMW
GROUP BY Region
ORDER BY cantidad DESC;
