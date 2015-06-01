-- Autor de los procedimientos: Melissa Molina Corrales
-- Fecha de creación: 27/05/2015

-- Insert para familia
DELIMITER //
CREATE PROCEDURE add_familia(IN id_Suborden int, IN nombre_familia varchar(50))
BEGIN
    insert into familia (Suborden_idSuborden,Familia)
	
    values (id_Suborden,nombre_Familia);
END//

--

-- Insert para clase
DELIMITER //
CREATE PROCEDURE add_clase(IN nombre_clase varchar(50)) 
BEGIN
    insert into clase(Clase)
	
    values (nombre_clase);
END//

-- Insert para orden
DELIMITER //
CREATE PROCEDURE add_orden(IN id_clase int,IN nombre_orden varchar(50)) 
BEGIN
    insert into orden(Clase_idClase,Orden)
	
    values (id_clase,nombre_orden);
END//

-- Insert para suborden
DELIMITER //
CREATE PROCEDURE add_suborden(IN id_orden int, IN nombre_suborden varchar(50) ) 
BEGIN
    insert into suborden(Orden_idOrden,Suborden)
	
    values (id_orden,nombre_suborden);
END//

-- Insert para cantidad de huevos
DELIMITER //
CREATE PROCEDURE add_cantidad_Huevos(IN cantidad_huevos varchar(50)) 
BEGIN
    insert into cantidad_huevos(Cantidad)
	
    values (cantidad_huevos);
END//
-- Insert para zona de vida

DELIMITER //
CREATE PROCEDURE add_zona_vida(IN zona varchar(50)) 
BEGIN
    insert into zona_de_vida(Zona_de_Vida)
	
    values (zona);
END//




