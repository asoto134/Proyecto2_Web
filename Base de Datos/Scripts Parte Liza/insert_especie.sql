DELIMITER //
CREATE PROCEDURE add_especie(IN id_genero int, IN especie varchar(50))
BEGIN
    insert into especie (Genero_idGenero, Especie) 
	
    values (id_genero, especie);
END//