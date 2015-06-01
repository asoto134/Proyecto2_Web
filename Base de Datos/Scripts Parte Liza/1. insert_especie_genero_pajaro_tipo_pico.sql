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
    insert into genero (Familia_idFamilia,Genero) 
	
    values (id_familia, genero);
END//

-- Insert de Tipo de Pico

DELIMITER //
CREATE PROCEDURE add_tipo_pico(IN tipo_pico varchar(50),IN id_Especie int)
BEGIN
    insert into tipo_de_pico (Tipo_de_Pico,Especie_idEspecie) 
	
    values (tipo_pico,id_Especie);
END//

-- Insert de Especie
DELIMITER //
CREATE PROCEDURE addEspecie (IN genero_idGenero int,IN nombre_especie varchar(50),IN nombre_comun varchar(50), IN nombre_ingles varchar(50), 
			IN nombre_cientifico varchar(50),IN cantidad_huevos int)
BEGIN
    insert into especie (Genero_idGenero,Especie,Nombre_Comun,Nombre_en_Ingles,Nombre_Cientifico,cantidad_Huevos_idcantidad_Huevos)
    values (genero_idGenero,nombre_especie,nombre_comun,nombre_ingles,nombre_cientifico,cantidad_huevos);
END //

