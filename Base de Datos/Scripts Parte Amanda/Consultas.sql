
-- Realizado por Amanda Solano, junio 5.
-- Consulta de aves por especie,genero,familia,orden y cantidad de huevos
-- Esta búsqueda es solamente para aves
USE `proyecto2web`;
DROP procedure IF EXISTS `proyecto2web`.`CONSULTAS_AVES`;

DELIMITER $$
USE `proyecto2web`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `CONSULTAS_AVES`(in DESPECIE int,in DGENERO int, in dfamilia int,in dorden int,in dpico int,in dcolor int,in dzona int,in dcantidad int )
begin
	
    
	 
	if (DESPECIE=0 and DGENERO=0 and dfamilia=0 and dorden=0 and dcantidad=0) then
	Select E.Especie,E.Nombre_Cientifico,e.Nombre_Comun,e.Nombre_en_Ingles,c.Cantidad,g.Genero,F.familia,S.suborden
        from especie e
        inner join cantidad_huevos c
        on e.cantidad_Huevos_idcantidad_Huevos=c.idcantidad_Huevos
        inner join genero g
        on e.Genero_idGenero=g.idGenero
        inner join familia f
        on f.idFamilia=g.Familia_idFamilia 
        inner join suborden s
        on f.Suborden_idSuborden =s.idSuborden;
        
    else
		Select E.Especie,E.Nombre_Cientifico,e.Nombre_Comun,e.Nombre_en_Ingles,c.Cantidad,g.Genero,F.familia,S.suborden
        from especie e
        inner join cantidad_huevos c
        on e.cantidad_Huevos_idcantidad_Huevos=c.idcantidad_Huevos
        inner join genero g
        on e.Genero_idGenero=g.idGenero
        inner join familia f
        on f.idFamilia=g.Familia_idFamilia 
        inner join suborden s
        on f.Suborden_idSuborden =s.idSuborden
		where e.idEspecie=DESPECIE or c.idcantidad_Huevos=DCANTIDAD or 
        g.idGenero=DGENERO or f.idFamilia=DFAMILIA or s.idSuborden=DORDEN;
	
		end if;
    
    
end$$

DELIMITER ;;
-- Consulta de Aves por persona--
-- Aquí el usuario puede consultar las aves subidas por otros usuarios. Por cierto, falta que el filtro muestre las fotos
CREATE DEFINER=`proyecto2web`@`localhost` PROCEDURE `CONSULTA_AVES_POR_PERSONA`(in DESPECIE int,in DGENERO int, in dfamilia int,in dorden int,in dcolor int,in dzona int,in dcantidad int, in dusuario int)
BEGIN
		if (DESPECIE=0 and DGENERO=0 and dfamilia=0 and dorden=0 and dcantidad=0,dzona=0,dcolor=0,dusuario=0) then
	Select p.Nombre,p.Apellido,E.Especie,E.Nombre_Cientifico,e.Nombre_Comun,e.Nombre_en_Ingles,c.Cantidad,g.Genero,F.familia,S.suborden
        from pajaros_x_persona pxp
        inner join persona p
        on p.idPersona=pxp.Persona_idPersona
        inner join color c
        on pxp.Color_idColor=c.idColor
        inner join zona_de_Vida z
        on z.idZona_de_Vida=pxp.Zona_de_Vida_idZonadeVida
        inner join especie e
        on pxp.Especie_idEspecie=e.idEspecie
        inner join cantidad_huevos ch
        on e.cantidad_Huevos_idcantidad_Huevos=ch.idcantidad_Huevos
        inner join genero g
        on e.Genero_idGenero=g.idGenero
        inner join familia f
        on f.idFamilia=g.Familia_idFamilia 
        inner join suborden s
        on f.Suborden_idSuborden =s.idSuborden;
	else
		Select p.Nombre,p.Apellido,E.Especie,E.Nombre_Cientifico,e.Nombre_Comun,e.Nombre_en_Ingles,c.Cantidad,g.Genero,F.familia,S.suborden
        from pajaros_x_persona pxp
        inner join persona p
        on p.idPersona=pxp.Persona_idPersona
        inner join color c
        on pxp.Color_idColor=c.idColor
        inner join zona_de_Vida z
        on z.idZona_de_Vida=pxp.Zona_de_Vida_idZonadeVida
        inner join especie e
        on pxp.Especie_idEspecie=e.idEspecie
        inner join cantidad_huevos ch
        on e.cantidad_Huevos_idcantidad_Huevos=ch.idcantidad_Huevos
        inner join genero g
        on e.Genero_idGenero=g.idGenero
        inner join familia f
        on f.idFamilia=g.Familia_idFamilia 
        inner join suborden s
        on f.Suborden_idSuborden =s.idSuborden
        where e.idEspecie=DESPECIE or c.idcantidad_Huevos=DCANTIDAD or 
        g.idGenero=DGENERO or f.idFamilia=DFAMILIA or s.idSuborden=DORDEN or
        z.idZona_de_Vida=dzona or c.idcolor=dcolor or pxp.Persona_idPersona=dusuario;
        
		
        end if;
END