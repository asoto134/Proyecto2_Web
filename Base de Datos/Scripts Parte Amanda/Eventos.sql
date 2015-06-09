/* Programar el job. Amanda Solano*/

/*Encender los eventos*/
SET GLOBAL event_scheduler=ON;
/*Crear el evento*/
delimiter $$
drop event if exists nombre_de_mi_evento$$
CREATE EVENT nombre_de_mi_evento
ON SCHEDULE
EVERY 1 day STARTS '2015-06-08 23:40:00'  do
begin

 call Reportes();

end $$