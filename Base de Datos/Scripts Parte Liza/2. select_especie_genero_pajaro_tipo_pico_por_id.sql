-- Autor del archivo y scripts: Liza Chaves Carranza

-- BÚSQUEDAS PARA TABLA ESPECIE

-- Búsqueda del idEspecie por especie
DELIMITER //
CREATE PROCEDURE get_especie_id(IN especie varchar(50))
BEGIN
	SELECT e.idEspecie FROM especie AS e
	WHERE e.Especie = especie;
END//

-- Búsqueda del idEspecie por idGenero
DELIMITER //
CREATE PROCEDURE get_idEspecie_x_idGenero(IN id_genero int)
BEGIN
	SELECT e.idEspecie FROM especie AS e
	WHERE e.Genero_idGenero = id_genero;
END//

-- BÚSQUEDAS PARA TABLA GENERO

-- Búsqueda del idGenero por idFamilia
DELIMITER //
CREATE PROCEDURE get_idGenero_idFamilia(IN id_familia int)
BEGIN
	SELECT g.idGenero FROM genero AS g
	WHERE g.Familia_idFamilia = id_familia;
END//

-- Búsqueda del idGenero por genero
DELIMITER //
CREATE PROCEDURE get_idGenero_x_genero(IN genero varchar(50))
BEGIN
	SELECT g.idGenero FROM genero AS g
	WHERE g.Genero = genero;
END//

-- BÚSQUEDAS PARA TABLA PÁJARO

-- Búsqueda del idPajaro por id_especie
DELIMITER //
CREATE PROCEDURE get_idPajaro_x_idEspecie(IN id_especie int)
BEGIN
	SELECT p.idPajaro FROM pajaro AS p
	WHERE p.Especie_idEspecie = id_especie;
END//

-- Búsqueda del idPajaro por nombre_comun
DELIMITER //
CREATE PROCEDURE get_idPajaro_nombre_comun(IN nombre_comun varchar(50))
BEGIN
	SELECT p.idPajaro FROM pajaro AS p
	WHERE p.Nombre_Comun = nombre_comun;
END//

-- Búsqueda del idPajaro por nombre_en_ingles
DELIMITER //
CREATE PROCEDURE get_idPajaro_nombre_ingles(IN nombre_ingles varchar(50))
BEGIN
	SELECT p.idPajaro FROM pajaro AS p
	WHERE p.Nombre_en_Ingles = nombre_ingles;
END//

-- Búsqueda del idPajaro por nombre_cientifico
DELIMITER //
CREATE PROCEDURE get_idPajaro_nombre_cientifico(IN nombre_cientifico varchar(50))
BEGIN
	SELECT p.idPajaro FROM pajaro AS p
	WHERE p.Nombre_Cientifico = nombre_cientifico;
END//

-- Búsqueda del idPajaro por idTipoPico
DELIMITER //
CREATE PROCEDURE get_idPajaro_idTipoPico(IN id_TipoPico int)
BEGIN
	SELECT p.idPajaro FROM pajaro AS p
	WHERE p.Tipo_de_Pico_idTipo_de_Pico = id_TipoPico;
END//

-- Búsqueda del idPajaro por cantidad_huevos
DELIMITER //
CREATE PROCEDURE get_idPajaro_cantidad_huevos(IN cantidad_huevos int)
BEGIN
	SELECT p.idPajaro FROM pajaro AS p
	WHERE p.Cantidad_de_Huevos = cantidad_huevos;
END//

-- BÚSQUEDAS PARA LA TABLA TIPO DE PICO

-- Búsqueda del idTipo_de_Pico por Tipo de Pico
DELIMITER //
CREATE PROCEDURE get_idTipo_Pico(IN tipo_pico varchar(50))
BEGIN
	SELECT tp.idTipo_de_Pico FROM tipo_de_pico AS tp
	WHERE tp.Tipo_de_Pico = tipo_pico;
END//






