-- Autor de los procedimientos: Melissa Molina Corrales
-- Fecha de creación: 27/05/2015

-- Busqueda de orden
DELIMITER //
CREATE PROCEDURE buscar_Orden(IN id_Clase int)
BEGIN
	SELECT o.Orden FROM orden AS o
    WHERE o.Clase_idClase = id_Clase;
    
 END//  
  -- Busqueda de suborden
DELIMITER //
CREATE PROCEDURE buscar_SubOrden (IN id_Orden int)
BEGIN
	SELECT s.Suborden FROM suborden AS s
    WHERE s.Orden_idOrden = id_Orden;
 END//  

-- Busqueda de familia
DELIMITER //
CREATE PROCEDURE buscar_familia(IN id_Suborden int)
BEGIN
	SELECT f.Familia FROM familia AS f
    WHERE f.Suborden_idSuborden = id_Suborden;
    
 END//  
 


 

 