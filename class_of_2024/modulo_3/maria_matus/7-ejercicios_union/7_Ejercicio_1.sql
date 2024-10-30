--- El gerente de la rentadora necesita tener un listado de actores que cumplan al menos una de las siguientes condiciones:

--- El nombre del actor es "Adam", independientemente de su apellido.
--- El apellido del actor es "Wood", sin importar su primer nombre.
--- Usa UNION ALL en tu consulta

SELECT * 
FROM actor a 
WHERE a.first_name LIKE 'Adam%'
UNION All 
SELECT *
FROM actor a2
WHERE a2.last_name LIKE 'Wood%'