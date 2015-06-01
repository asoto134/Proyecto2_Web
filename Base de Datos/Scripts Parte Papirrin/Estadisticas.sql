--1----------------------------------
Select count(Pajaros_X_Persona_id)
from Pajaros_X_Persona;
-2----------------------------------
Select Zona_de_Vida, count(Pajaros_X_Persona_id)
from Pajaros_X_Persona, Zona_de_Vida
where zona_de_vida_idZona de vida = idZona_de_vida
--3----------------------------------------
