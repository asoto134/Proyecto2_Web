-- Insert para clase
CALL `proyecto2web`.`add_clase`(1, 'Aves');

-- Insert para orden
CALL `proyecto2web`.`add_orden`(1,1, 'Cuculiformes');
CALL `proyecto2web`.`add_orden`(2,1, 'Piciformes');
CALL `proyecto2web`.`add_orden`(3,1, 'Passeriformes');
CALL `proyecto2web`.`add_orden`(4,1, 'Caprimulgiformes');
CALL `proyecto2web`.`add_orden`(5,1, 'Coraciiformes');

-- Insert para suborden
CALL `proyecto2web`.`add_suborden`(1,1,'Cuculiformes');
CALL `proyecto2web`.`add_suborden`(2,5,'Alcedines');
CALL `proyecto2web`.`add_suborden`(3,2,'Piciformes');
CALL `proyecto2web`.`add_suborden`(4,3,'Passeriformes');
CALL `proyecto2web`.`add_suborden`(5,4,'Caprimulgiformes');

-- Insert para familia
CALL `proyecto2web`.`add_familia`(1,1, 'Cuculidae');
CALL `proyecto2web`.`add_familia`(2,5, 'Caprimulgidae');
CALL `proyecto2web`.`add_familia`(3,2, 'Alcedinidae');
CALL `proyecto2web`.`add_familia`(4,3, 'Bucconidae');
CALL `proyecto2web`.`add_familia`(5,3, 'Galbulidae');
CALL `proyecto2web`.`add_familia`(6,4, 'Parulidae');
CALL `proyecto2web`.`add_familia`(7,4, 'Emberizidae');
CALL `proyecto2web`.`add_familia`(8,4, 'Troglodytidae');
CALL `proyecto2web`.`add_familia`(9,4, 'Cardinalidae');

-- Insert para genero
CALL `proyecto2web`.`add_genero`(1, 1, 'Coccyzus');
CALL `proyecto2web`.`add_genero`(2, 2, 'Antrostomus');
CALL `proyecto2web`.`add_genero`(3, 3, 'Chloroceryle');
CALL `proyecto2web`.`add_genero`(4, 4, 'Malacoptila');
CALL `proyecto2web`.`add_genero`(5, 5, 'Jacamerops');
CALL `proyecto2web`.`add_genero`(6, 6, 'Basileuterus');
CALL `proyecto2web`.`add_genero`(7, 6, 'Helmitheros');
CALL `proyecto2web`.`add_genero`(8, 6, 'Mniotilta');
CALL `proyecto2web`.`add_genero`(9, 6, 'Protonotaria');
CALL `proyecto2web`.`add_genero`(10,7, 'Arremonops');
CALL `proyecto2web`.`add_genero`(11,7, 'Arremon');
CALL `proyecto2web`.`add_genero`(12,8, 'Campylorhynchus');
CALL `proyecto2web`.`add_genero`(13,8, 'Cistothorus');
CALL `proyecto2web`.`add_genero`(14,8, 'Cyphorhinus');
CALL `proyecto2web`.`add_genero`(15,7, 'Sporophila');
CALL `proyecto2web`.`add_genero`(16,9, 'Amaurospiza');
CALL `proyecto2web`.`add_genero`(17,7, 'Tiaris');
CALL `proyecto2web`.`add_genero`(18,7, 'Volatinia');
CALL `proyecto2web`.`add_genero`(19,7, 'Haplospiza');
 
-- Insert para cantidad de huevos
CALL `proyecto2web`.`add_cantidad_Huevos`(1, 'Desconocido');
CALL `proyecto2web`.`add_cantidad_Huevos`(2, '1 huevo blanco color tiza opaco');
CALL `proyecto2web`.`add_cantidad_Huevos`(3, '3 a 4 huevos de color blanco');
CALL `proyecto2web`.`add_cantidad_Huevos`(4, '2 huevos blancos y 3 en raras ocasiones');
CALL `proyecto2web`.`add_cantidad_Huevos`(5, '3 huevos blancos, con manchas de color castaño');
CALL `proyecto2web`.`add_cantidad_Huevos`(6, '2 a 3 huevos blancos con finas salpicaduras color canela');
CALL `proyecto2web`.`add_cantidad_Huevos`(7, '2 huevos blancos lustrosos');
CALL `proyecto2web`.`add_cantidad_Huevos`(8, '3 a 5 huevos blancos');
CALL `proyecto2web`.`add_cantidad_Huevos`(9, '4 huevos blancos');
CALL `proyecto2web`.`add_cantidad_Huevos`(10, '2 huevos blancos');
CALL `proyecto2web`.`add_cantidad_Huevos`(11, '2 huevos de color blanco opaco con un abundante moteado café y lila claro');
CALL `proyecto2web`.`add_cantidad_Huevos`(12, '2 a 3 huevos');
CALL `proyecto2web`.`add_cantidad_Huevos`(13, '2 o 3 huevos blancos o azulados');
CALL `proyecto2web`.`add_cantidad_Huevos`(14, '2 huevos de color blanco verdoso');
CALL `proyecto2web`.`add_cantidad_Huevos`(15, '2 huevos grises azulosos con manchas pardas');
CALL `proyecto2web`.`add_cantidad_Huevos`(16, '3 huevos blancos');

-- Insert para especie
CALL `proyecto2web`.`addEspecie`(1, 1, 'Cuclillos', 'Cuclillo Pico Negro', 'Black Billed Cuckoo', 'Coccyzus Erythropthalmus', 1);
CALL `proyecto2web`.`addEspecie`(2, 2, 'Chotacabras','Chotacabras Sombrio(Tres Cobijas)','Dusky Nightjar', 'Antrostomus Saturatus', 2);
CALL `proyecto2web`.`addEspecie`(3, 3, 'Martines', 'Martín pescador enano','American Pygmy Kingfisher','Chloroceryle Aenea', 3);
CALL `proyecto2web`.`addEspecie`(4, 4, 'Bucos', 'Buco barbón', 'White- Whiskered Puffbird', 'Malacoptila Panamensis', 4);
CALL `proyecto2web`.`addEspecie`(5, 5, 'Jacamares', 'Jacamar grande', 'Great Jacamar', 'Jacamerops aureus', 1);

CALL `proyecto2web`.`addEspecie`(6, 6, 'Reinitas', 'Reinita Coronidorada', 'Golden Crowned Warbler', 'Basileuterus culicivorus', 5);
CALL `proyecto2web`.`addEspecie`(7, 6, 'Reinitas', 'Reinita cabecicastaña', 'Rufous Capped Warbler', 'Basileuterus rufifrons', 6);
CALL `proyecto2web`.`addEspecie`(8, 6, 'Reinitas', 'Reinita cabecilistada', 'Three-striped Warbler', 'Basileuterus tristriatus', 1);
CALL `proyecto2web`.`addEspecie`(9, 7, 'Reinitas', 'Reinita gusanera', 'Worm-eating Warbler', 'Helmitheros vermivorum', 1);
CALL `proyecto2web`.`addEspecie`(10, 8, 'Reinitas', 'Reinita trepadora', 'Black And White Warbler', 'Mniotilta varia', 1);
CALL `proyecto2web`.`addEspecie`(11, 9, 'Reinitas', 'Reinita cabecidorada', 'Prothonotary Warbler', 'Protonotaria citrea', 1);

CALL `proyecto2web`.`addEspecie`(12, 10, 'Pinzones', 'Pinzón Cabecilistado', 'Black-striped Sparrow', 'Arremonops conirostris', 4);
CALL `proyecto2web`.`addEspecie`(13, 11, 'Pinzones', 'Pinzón piquinaranja', 'Orange Billed Sparrow', 'Arremon aurantiirostris', 7);

CALL `proyecto2web`.`addEspecie`(14, 12, 'Suterreys', 'Soterrey nuquirrufo', 'Rufous Naped Wren', 'Campylorhynchus rufinucha', 8);
CALL `proyecto2web`.`addEspecie`(15, 12, 'Suterreys', 'Soterrey matraquero', 'Band Backed Wren', 'Campylorhynchus zonatus', 8);
CALL `proyecto2web`.`addEspecie`(16, 13, 'Suterreys', 'Soterrey sabanero', 'Sedge Wren', 'Cistothorus platensis', 9);
CALL `proyecto2web`.`addEspecie`(17, 14, 'Suterreys', 'Soterrey canoro', 'Song Wren', 'Cyphorhinus phaeocephalus', 10);

CALL `proyecto2web`.`addEspecie`(18, 15, 'Semilleros', 'Semillero picogrueso', 'Thick-billed Seed-Finch.', 'Sporophila funereus', 11);
CALL `proyecto2web`.`addEspecie`(19, 16, 'Semilleros', 'Semillero azulado', 'Blue Seedeater', 'Amaurospiza concolor', 1);
CALL `proyecto2web`.`addEspecie`(20, 17, 'Semilleros', 'Semillero cariamarillo', 'Yellow Faced Grassquit', 'Tiaris olivaceus', 12);
CALL `proyecto2web`.`addEspecie`(21, 18, 'Semilleros', 'Semillerito negro azulado', 'Blue Black Grassquit', 'Volatinia jacarina', 13);
CALL `proyecto2web`.`addEspecie`(22, 15, 'Semilleros', 'Semillero piquirrosado', 'Desconocido', 'Sporophila nuttingi', 14);
CALL `proyecto2web`.`addEspecie`(23, 15, 'Semilleros', 'Semillero de collar', 'White Collared Seedeater', 'Sporophila torqueola',15);
CALL `proyecto2web`.`addEspecie`(24, 15, 'Semilleros', 'Semillero pechicanelo', 'Ruddy Breasted Seedeater', 'Sporophila minuta', 1);
CALL `proyecto2web`.`addEspecie`(25, 19, 'Semilleros', ' Semillero pizarra', 'Slaty Finch', 'Haplospiza rustica', 16);

-- Insert para tipo de pico

CALL `proyecto2web`.`add_tipo_pico`(1,'Pico Negro',1);
CALL `proyecto2web`.`add_tipo_pico`(2,'Amarillento con la punta fusca',4);
CALL `proyecto2web`.`add_tipo_pico`(3,'Pico puntiagudo grueso, corto y ligeramente curvo hacia abajo',5);
CALL `proyecto2web`.`add_tipo_pico`(4,'Pico tiene la parte superior negruzca y la inferior color cuerno',6);
CALL `proyecto2web`.`add_tipo_pico`(5,'Pico grueso y negro',7);
CALL `proyecto2web`.`add_tipo_pico`(6,'Pico es de color cuerno pálido con la base del culmen negruzca',8);
CALL `proyecto2web`.`add_tipo_pico`(7,'Pico es de color cuerno con el culmen fusco',9);
CALL `proyecto2web`.`add_tipo_pico`(8,'Pico es color cuerno',10);
CALL `proyecto2web`.`add_tipo_pico`(9,'Pico es grande, aunque de punta fina',11);
CALL `proyecto2web`.`add_tipo_pico`(10,'El pico exhibe la base amarilla',12);
CALL `proyecto2web`.`add_tipo_pico`(11,'El pico anaranjado brillante',13);
CALL `proyecto2web`.`add_tipo_pico`(12,'El pico es más o menos largo y curvo',14);
CALL `proyecto2web`.`add_tipo_pico`(13,'El pico es gris parduzco',15);
CALL `proyecto2web`.`add_tipo_pico`(14,'El pico es color canela',16);
CALL `proyecto2web`.`add_tipo_pico`(15,'El pico es robusto y cónico',18);
CALL `proyecto2web`.`add_tipo_pico`(16,'El pico es grueso, pero cónico, no convexo',19);
CALL `proyecto2web`.`add_tipo_pico`(17,'El pico es  agudo y cónico',20);
CALL `proyecto2web`.`add_tipo_pico`(18,'Pico cónico y puntiagudo',21);
CALL `proyecto2web`.`add_tipo_pico`(19,'Pico muy voluminoso y grande',22);
CALL `proyecto2web`.`add_tipo_pico`(20,'Pico gordo, redondeado, fuerte y con una amplia base',23);
CALL `proyecto2web`.`add_tipo_pico`(21,'El pico es cónico, grueso en la base y relativamente corto',24);
CALL `proyecto2web`.`add_tipo_pico`(22,'Pico cónico y puntiagudo color gris',25);
CALL `proyecto2web`.`add_tipo_pico`(23,'Pico Negro',2);
CALL `proyecto2web`.`add_tipo_pico`(24,'Pico Negro',3);
CALL `proyecto2web`.`add_tipo_pico`(25,'Pico Negro',17);

-- Insert para zona de vida
CALL `proyecto2web`.`add_zona_vida`(1, 'Areas de crecimiento secundario, matorrales, áreas entresacadas y bordes de bosque');
CALL `proyecto2web`.`add_zona_vida`(2, 'Bosques montanos, los potreros de montañas altas');
CALL `proyecto2web`.`add_zona_vida`(3, 'Corrientes de agua y pantanos situados en el interior del bosque');
CALL `proyecto2web`.`add_zona_vida`(4, 'Sotobosque y los niveles intermedios del bosque');
CALL `proyecto2web`.`add_zona_vida`(5, 'Niveles medios del dosel en los bosques húmedos');
CALL `proyecto2web`.`add_zona_vida`(6, 'Sotobosque de los bosques de montaña, los bordes del bosque y áreas adyacentes');
CALL `proyecto2web`.`add_zona_vida`(7, 'En el interior y borde del bosque seco, cafetales, bosques secundarios avanzados');
CALL `proyecto2web`.`add_zona_vida`(8, 'Sotobosque y bosques de de montañas altas');
CALL `proyecto2web`.`add_zona_vida`(9, 'Matorrales y sotobosques');
CALL `proyecto2web`.`add_zona_vida`(10, 'Matorral alto, áreas parcialmente despejadas parques y jardines');
CALL `proyecto2web`.`add_zona_vida`(11, 'Manglares y matorrales adyacentes a los ríos, quebradas, estanques y lagos');
CALL `proyecto2web`.`add_zona_vida`(12, 'Matorrales bajos, campos enmalezados, áreas de crecimiento secundario joven');
CALL `proyecto2web`.`add_zona_vida`(13, 'Sotobosque oscuro de los bosques húmedos y bosques de crecimiento secundario alto');
CALL `proyecto2web`.`add_zona_vida`(14, 'Bosques caducifolios y de galería, matorrales bajos, árboles de sabana, cafetales');
CALL `proyecto2web`.`add_zona_vida`(15, 'Aberturas y bordes de los bosques muy húmedos');
CALL `proyecto2web`.`add_zona_vida`(16, 'Praderas bajas anegadas con zacate alto, campos húmedos con matorrales y pantanos abiertos');
CALL `proyecto2web`.`add_zona_vida`(17, 'Sotobosque de los bosques muy húmedos y las áreas adyacentes de crecimiento secundario alto');
CALL `proyecto2web`.`add_zona_vida`(18, 'Areas con gramíneas y herbáceas con arbustos y árboles esparcidos');
CALL `proyecto2web`.`add_zona_vida`(19, 'Las hondonadas, los claros y los bordes en los bosques en donde exista crecimiento profuso de bambú');
CALL `proyecto2web`.`add_zona_vida`(20, 'Campos enmalezados, potreros, bordes de carreteras y pastizales');
CALL `proyecto2web`.`add_zona_vida`(21, 'Campos de gramíneas o herbáceas, matorrales bajos, sitios con arbustos y zonas claras con zacate');
CALL `proyecto2web`.`add_zona_vida`(22, 'Areas anegadas con gramíneas, en las cercanías de un espejo de agua o pantano');
CALL `proyecto2web`.`add_zona_vida`(23, 'Campos abiertos, en zonas de arbustos y malezas');
CALL `proyecto2web`.`add_zona_vida`(24, 'Campos abiertos, donde abundan los matorrales y pastos, y en sabanas');
CALL `proyecto2web`.`add_zona_vida`(25, 'Campos abiertos, donde abundan los matorrales y pastos, y en sabanas');


