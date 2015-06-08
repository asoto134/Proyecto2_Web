-- Insert para clase
CALL `proyecto2web`.`add_clase`('Aves');

-- Insert para orden------------------------------------------------------------
CALL `proyecto2web`.`add_orden`(1, 'Cuculiformes');
CALL `proyecto2web`.`add_orden`(1, 'Caprimulgiformes');
CALL `proyecto2web`.`add_orden`(1, 'Coraciiformes');
CALL `proyecto2web`.`add_orden`(1, 'Piciformes');
CALL `proyecto2web`.`add_orden`(1, 'Passeriformes');


--  Insert para suborden----------------------------------------------------
CALL `proyecto2web`.`add_suborden`(1,'Cuculiformes');
CALL `proyecto2web`.`add_suborden`(2,'Caprimulgiformes');
CALL `proyecto2web`.`add_suborden`(3,'Alcedines');
CALL `proyecto2web`.`add_suborden`(4,'Piciformes');
CALL `proyecto2web`.`add_suborden`(5,'Passeriformes');
CALL `proyecto2web`.`add_suborden`(5,'Passeri');

-- Insert para familia---------------------------------------------------------------
CALL `proyecto2web`.`add_familia`(1, 'Cuculidae');
CALL `proyecto2web`.`add_familia`(2, 'Caprimulgidae');
CALL `proyecto2web`.`add_familia`(3, 'Alcedinidae');
CALL `proyecto2web`.`add_familia`(4, 'Galbulidae');
CALL `proyecto2web`.`add_familia`(4, 'Bucconidae');
CALL `proyecto2web`.`add_familia`(5, 'Parulidae');
CALL `proyecto2web`.`add_familia`(6, 'Fringillidae');
CALL `proyecto2web`.`add_familia`(5, 'Troglodytidae');


-- Insert para genero---------------------------------------------------------------------
-- Generos Cuclillos,Chotacabras,Martines y Jacamares
CALL `proyecto2web`.`add_genero`(1, 'Crotophaga');
CALL `proyecto2web`.`add_genero`(2, 'Nyctidromus');
CALL `proyecto2web`.`add_genero`(3, 'Chloroceryle');
CALL `proyecto2web`.`add_genero`(4, 'Galbula');
CALL `proyecto2web`.`add_genero`(5, 'Malacoptila');
CALL `proyecto2web`.`add_genero`(6, 'Parula');
CALL `proyecto2web`.`add_genero`(6, 'Setophaga');
CALL `proyecto2web`.`add_genero`(6, 'Oporornis');
CALL `proyecto2web`.`add_genero`(6, 'Myioborus');
CALL `proyecto2web`.`add_genero`(6, 'Basileuterus');
CALL `proyecto2web`.`add_genero`(7, 'Saltator');
CALL `proyecto2web`.`add_genero`(7,'Cyanocompsa');
CALL `proyecto2web`.`add_genero`(7, 'Tiaris');
CALL `proyecto2web`.`add_genero`(7, 'Sporophila');
CALL `proyecto2web`.`add_genero`(7, 'Carduelis');
CALL `proyecto2web`.`add_genero`(7, 'Atlapetes');
CALL `proyecto2web`.`add_genero`(7, 'Arremon');
CALL `proyecto2web`.`add_genero`(7, 'Arremonops');
CALL `proyecto2web`.`add_genero`(7, 'Zonotrichia');
CALL `proyecto2web`.`add_genero`(8, 'Thryothorus');
CALL `proyecto2web`.`add_genero`(8, 'Henicorhina');
 
-- Insert para cantidad de huevos------------------------------------------------------------------------
CALL `proyecto2web`.`add_cantidad_Huevos`('15 huevos'); 
CALL `proyecto2web`.`add_cantidad_Huevos`('2 Huevos');
CALL `proyecto2web`.`add_cantidad_Huevos`('3 a 5 huevos');
CALL `proyecto2web`.`add_cantidad_Huevos`('2 o 3 huevos');
CALL `proyecto2web`.`add_cantidad_Huevos`('2 a 4 huevos');
CALL `proyecto2web`.`add_cantidad_Huevos`('1 huevo');
CALL `proyecto2web`.`add_cantidad_Huevos`('Desconocido');
CALL `proyecto2web`.`add_cantidad_Huevos`('3 huevos');
CALL `proyecto2web`.`add_cantidad_Huevos`('3 o 4 huevos');

-- Insert para especie----------------------------------------------------------------------------------------------------------------
CALL `proyecto2web`.`addEspecie`(1, 'Cuclillos', 'Garrapatero Piquiestriado', 'Groovee-billed Ani', 'Crotophaga sulcirostris', 1);
CALL `proyecto2web`.`addEspecie`(2, 'Chotacabras','Chotacabras Campestre','Common Pauraque', 'Nyctidromus albicollis', 2);
CALL `proyecto2web`.`addEspecie`(3, 'Martines', 'Martín Pescador Verde','Green Kingfisher','Chloroceryle americana', 3);
CALL `proyecto2web`.`addEspecie`(4, 'Bucos', 'Buco Bigotiblanco', 'White-Whiskered Puffbird', 'Malacoptila panamensis', 4);
CALL `proyecto2web`.`addEspecie`(5, 'Jacamares', 'Jacamara Rabirrufa', 'Rufous-tailed Jacamar', 'Galbula ruficauda', 5);

-- Reinitas-----------------------------------------------------------------------------------------------------------------
CALL `proyecto2web`.`addEspecie`(6, 'Reinitas', 'Reinita Azulada', 'Tropical Parula', 'Parula pitiayumi', 6);
CALL `proyecto2web`.`addEspecie`(7, 'Reinitas', 'Reinita Amarilla', 'Yellow Warbler', 'Dendroica petechia', 7);
CALL `proyecto2web`.`addEspecie`(8, 'Reinitas', 'Reinita  Cachetinegra', 'Kentucky Warbler', 'Oporornis formosus', 8);
CALL `proyecto2web`.`addEspecie`(9, 'Reinitas','Candelita Pechinegra', 'Slate-throated Redstart', 'Myioborus miniatus', 4);
CALL `proyecto2web`.`addEspecie`(9, 'Reinitas', 'Candelita Collajera', 'Collared Redstart', 'Myioborus torquatus', 4);
CALL `proyecto2web`.`addEspecie`(10,'Reinitas', 'Reinita Cabecicastaña', 'Chestnut-capped Warbler', 'Basileuteurus delattrii', 4);

-- Pinzones-------------------------------------------------------------------------------------------------------------------------
CALL `proyecto2web`.`addEspecie`(17, 'Pinzones', 'Pinzón Piquianaranjado', 'Orange-billed Sparrow', 'Arremon aurantiirostris', 2);
CALL `proyecto2web`.`addEspecie`(18, 'Pinzones', 'Pinzón Cabecilistado', 'Black-striped Sparrow', 'Arremonops conirostris', 4);

-- Soterreys------------------------------------------------------------------------------------------------------------------
CALL `proyecto2web`.`addEspecie`(20, 'Soterrés', 'Soterré Chinchiriguí', 'Plain Wren', 'Thryothorus modestus', 2);
CALL `proyecto2web`.`addEspecie`(20, 'Soterrés', 'Soterré Carimoteado ', 'Rufous-breasted Wren', 'Thryothorus rutilus', 8);
CALL `proyecto2web`.`addEspecie`(21, 'Soterrés', 'Soterré Selvático Pechiblanco', 'White-breasted Wood-Wren', 'Henicorhina leucosticta', 2);
CALL `proyecto2web`.`addEspecie`(21, 'Soterrés', 'Soterré Selvático Pechigris', 'Gay-breasted Wood-Wren', 'Henicorhna leucophrys', 2);

-- Semilleros---------------------------------------------------------------------------------------------------------------------------
CALL `proyecto2web`.`addEspecie`(11, 'Semilleros', 'Saltator Gorjianteado', 'Buff-throated Saltator', 'Saltator maximus', 2);
CALL `proyecto2web`.`addEspecie`(11, 'Semilleros', 'Saltator Listado', 'Streaked Saltator', 'Saltator albicollis', 2);
CALL `proyecto2web`.`addEspecie`(12, 'Semilleros', 'Piquigureso Negro Azulado', 'Blue-black', 'Cyanocompsa cyanoides', 2);
CALL `proyecto2web`.`addEspecie`(13, 'Semilleros', 'Semillero Cariamarillo', 'Yellow-faced Grassquit', 'Tiaris olivacea', 4);

CALL `proyecto2web`.`addEspecie`(14, 'Semilleros', 'Espiguero Variable', 'Variable Seedeater', 'Sporophila aurita', 4);
CALL `proyecto2web`.`addEspecie`(15, 'Semilleros', 'Jilguero Menor', 'Lesser or Dark-backed Gold-finch', 'Carduelis psaltria',9);
CALL `proyecto2web`.`addEspecie`(16,'Semilleros', 'Fringilo Gargantiamarillo', 'Yellow-throated Brush-finch', 'Atlapetes gutturalis', 4);
CALL `proyecto2web`.`addEspecie`(19,'Semilleros', 'Chingolo', 'Rufous-collared Sparrow', 'Zonotrichia capensis', 4);

-- Insert para tipo de pico---------------------------------------------------------------------------------------------------------------------------
-- Tipos de pico para Cuclillos,Chotacabras,Martines y Jacamares.----------------------------
CALL `proyecto2web`.`add_tipo_pico`('Pico sin surcos',1);
CALL `proyecto2web`.`add_tipo_pico`('Pico amplio',2);
CALL `proyecto2web`.`add_tipo_pico`('Pico grande',3);
CALL `proyecto2web`.`add_tipo_pico`('Pico con clac',4);
CALL `proyecto2web`.`add_tipo_pico`('Pico Agudo',5);
-- Tipos de pico para Reinitas----------------------------------------------------------------
CALL `proyecto2web`.`add_tipo_pico`('Desconocido',6);
CALL `proyecto2web`.`add_tipo_pico`('Desconocido',7);
CALL `proyecto2web`.`add_tipo_pico`('Desconocido',8);
CALL `proyecto2web`.`add_tipo_pico`('Desconocido',9);
CALL `proyecto2web`.`add_tipo_pico`('Desconocido',10);
CALL `proyecto2web`.`add_tipo_pico`('Desconocido',11);

-- Tipos de pico para pinzones-----------------------------------------------------------------
CALL `proyecto2web`.`add_tipo_pico`('Pico anaranjado',12);
CALL `proyecto2web`.`add_tipo_pico`('Desconocido',13);

-- Tipos de pico para soterreys-----------------------------------------------------------------
CALL `proyecto2web`.`add_tipo_pico`('Desconocido',14);
CALL `proyecto2web`.`add_tipo_pico`('Desconocido',15);
CALL `proyecto2web`.`add_tipo_pico`('Desconocido',16);
CALL `proyecto2web`.`add_tipo_pico`('Pico Gris',17);

-- Tipos de pico para semilleros----------------------------------------------------------------------------

CALL `proyecto2web`.`add_tipo_pico`('Desconocido',18);
CALL `proyecto2web`.`add_tipo_pico`('Desconocido',19);
CALL `proyecto2web`.`add_tipo_pico`('Pico grande y fuerte',20);
CALL `proyecto2web`.`add_tipo_pico`('Desconocido',21);
CALL `proyecto2web`.`add_tipo_pico`('Olivaceo y gris',22);
CALL `proyecto2web`.`add_tipo_pico`('Desconocido',23);
CALL `proyecto2web`.`add_tipo_pico`('Desconocido',24);
CALL `proyecto2web`.`add_tipo_pico`('Desconocido',25);







