-- Autor del archivo y los scripts: Liza Chaves Carranza

-- Insert de Especie

DELIMITER //
CREATE PROCEDURE add_especie(IN id_genero int, IN especie varchar(50))
BEGIN
    insert into especie (Genero_idGenero, Especie) 
	
    values (id_genero, especie);
END//

-- Insert de Genero

DELIMITER //
CREATE PROCEDURE add_genero(IN id_familia int, IN genero varchar(50))
BEGIN
    insert into genero (Familia_idFamilia, Genero) 
	
    values (id_familia, genero);
END//

-- Insert de Tipo de Pico

DELIMITER //
CREATE PROCEDURE add_tipo_pico(IN tipo_pico varchar(50))
BEGIN
    insert into tipo_de_pico (Tipo_de_Pico) 
	
    values (tipo_pico);
END//

-- Insert de Pájaro

DELIMITER //
CREATE PROCEDURE addPajaro (IN idEspecie int, IN nombre_comun varchar(50), IN nombre_ingles varchar(50), 
							IN nombre_cientifico varchar(50), IN id_Tipo_Pico int, IN cantidad_huevos int)
BEGIN
    insert into pajaro (Especie_idEspecie, Nombre_Comun, Nombre_en_Ingles, Nombre_Cientifico,
						Tipo_de_Pico_idTipo_de_Pico, Cantidad_de_Huevos) 
	
    values (idEspecie, nombre_comun, nombre_ingles, nombre_cientifico, id_Tipo_Pico, cantidad_huevos);
END //