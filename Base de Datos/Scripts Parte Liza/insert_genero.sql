DELIMITER //
CREATE PROCEDURE add_genero (IN id_familia int, IN genero varchar(50))
BEGIN
    insert into genero (Familia_idFamilia, Genero) 
	
    values (id_familia, genero);
END //