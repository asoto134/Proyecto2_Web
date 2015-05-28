-- Autor de los procedimientos: Melissa Molina Corrales
-- Fecha de creación: 27/05/2015

-- Insert para familia
DELIMITER //
CREATE PROCEDURE add_familia(IN id_Familia int, IN id_Suborden int, IN nombre_familia varchar(50))
BEGIN
    insert into familia (idFamilia,Suborden_idSuborden,Familia)
	
    values (id_Familia,id_Suborden,nombre_Familia);
END//

--

-- Insert para clase
DELIMITER //
CREATE PROCEDURE add_clase(IN id_Clase int, IN nombre_clase varchar(50)) 
BEGIN
    insert into clase(idClase,Clase)
	
    values (id_Clase,nombre_clase);
END//

-- Insert para orden
DELIMITER //
CREATE PROCEDURE add_orden(IN id_Orden int, IN id_clase int,IN nombre_orden varchar(50)) 
BEGIN
    insert into orden(idOrden,Clase_idClase,Orden)
	
    values (id_Orden,id_clase,nombre_orden);
END//

-- Insert para suborden
DELIMITER //
CREATE PROCEDURE add_suborden(IN id_Suborden int, IN id_orden int, IN nombre_suborden varchar(50) ) 
BEGIN
    insert into suborden(idSubOrden,Orden_idOrden,Suborden)
	
    values (id_Suborden,id_orden,nombre_suborden);
END//

--







