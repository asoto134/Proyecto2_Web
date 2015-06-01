-- Autor del archivo y los scripts: Liza Chaves Carranza

-- Select del nombre del usuario

DELIMITER //
CREATE PROCEDURE get_nombre(IN id_usuario int)
BEGIN
    select Nombre, Apellido from persona p
	where p.Usuario_idUsuario = id_usuario;
END//