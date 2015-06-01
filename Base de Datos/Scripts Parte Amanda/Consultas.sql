USE `proyecto2web`;
DROP procedure IF EXISTS `_SYNTAX_ERROR`;

DELIMITER $$
USE `proyecto2web`$$
CREATE PROCEDURE `Consulta_Aves` (in despecie int,in dgenero int, in dfamilia int,in dorden int,in dpico int,in dcolor int,in dzona int,in dcantidad int )
BEGIN
	Select especie.Especie,especie.Nombre Común, especie.Nombre Cientifico,cantidad_de_huevos.cantidad,clase.Clase,color.Color,familia.Familia,genero.Genero,orden.Orden,suborden.Suborden,tipo_de_pico.Tipo_de_Pico,zona_de_vida.Zona_de_Vida)
    from especie,cantidad_de_huevos,clase,color,familia,genero,orden,suborden,tipo_de_pico,zona_de_vida
    where idcantidad_huevos=cantidad and idClase=dclases
    and dcolor=idColor and despecie=idEspecie and dfamilia=idFamilia
    and idGenero=dgenero and idOrden=dorden and
    idSuborden=dorden and idTipo_de_Pico =dpico
    and idZona_de_Vida= dzona
    
    
END
$$

DELIMITER ;

