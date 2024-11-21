-- El gerente de la rentadora necesita tener un listado de actores
-- que cumplan al menos una de las siguientes condiciones:
-- 1. El nombre del actor es "Adam", independientemente de su apellido.
-- 2. El apellido del actor es "Wood", sin importar su primer nombre.
SELECT
    a.first_name,
    a.last_name
FROM
    actor AS a
WHERE
    a.first_name = 'Adam'

UNION ALL

SELECT
    a.first_name,
    a.last_name
FROM
    actor AS a
WHERE
    last_name = 'Wood'