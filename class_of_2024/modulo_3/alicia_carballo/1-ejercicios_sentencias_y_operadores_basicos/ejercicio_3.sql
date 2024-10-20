SELECT 
    title AS titulo, 
    rental_rate AS tarifa_original, 
    rental_rate * 1.16 AS tarifa_con_iva
FROM 
    film
WHERE 
    rental_rate <= 2;  --filtro--

    /* 
Esta consulta-Qry selecciona el título y la tarifa de las películas 
con una tarifa menor o igual a $2, incluyendo el IVA. ¿cómo se que me está filtrando bien?
*/