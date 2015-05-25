DELIMITER //
CREATE PROCEDURE add_tipo_pico(IN tipo_pico varchar(50))
BEGIN
    insert into tipo_de_pico (Tipo_de_Pico) 
	
    values (tipo_pico);
END//