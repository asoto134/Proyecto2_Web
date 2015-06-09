/* Insercion de especies para el job. Amanda Solano Astorga
*/
CALL `proyecto2web`.`add_orden`(last_insert_id(),'Incertae Sedis');
CALL `proyecto2web`.`add_suborden`(last_insert_id(), 'Incertae Sedis');
CALL `proyecto2web`.`add_familia`(last_insert_id(), 'Incertae Sedis');
CALL `proyecto2web`.`add_genero`(last_insert_id(), 'Incertae Sedis');



Insert into especie (Genero_idGenero,Especie,Nombre_Comun,Nombre_en_Ingles,Nombre_Cientifico,cantidad_Huevos_idcantidad_Huevos)
values(last_insert_id(),'Incertae Sedis','Desconocido','Desconocido','Desconocido',7);