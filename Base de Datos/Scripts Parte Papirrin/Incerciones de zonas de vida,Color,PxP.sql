--------------- Incerciones de zonas de vida-----------------------
CALL `proyecto2web`.`add_ZonaVida`('Zona Tropical - 0-1400msnm');
CALL `proyecto2web`.`add_ZonaVida`('Zona Subtropical - 1400-2800msnm');
CALL `proyecto2web`.`add_ZonaVida`('Zona Templada - 2800-3400msnm');
CALL `proyecto2web`.`add_ZonaVida`('Zona del Paramo - 3400-3800msnm');
--------------- Incerciones de color-----------------------
CALL `proyecto2web`.`add_color`('Amarillo con Rojo');
CALL `proyecto2web`.`add_color`('Blanco');
CALL `proyecto2web`.`add_color`('Multicolor');
CALL `proyecto2web`.`add_color`('Blanco con Cafe');
CALL `proyecto2web`.`add_color`('Azul');
--------- Incerciones de Pajaros x persona---------------------
CALL `proyecto2web`.`add_P_x_P`(1, 1, 1, 2);
CALL `proyecto2web`.`add_P_x_P`(2, 1, 2, 1);
CALL `proyecto2web`.`add_P_x_P`(1, 2, 2, 1);
CALL `proyecto2web`.`add_P_x_P`(1, 1, 3, 3);
CALL `proyecto2web`.`add_P_x_P`(2, 3, 2, 4);
CALL `proyecto2web`.`add_P_x_P`(3, 3, 1, 5);
