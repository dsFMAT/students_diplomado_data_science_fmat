# Ejercicios Having

Estos Ejercicios deben de subirse en esta misma carpeta a través de un pull request en el cual este ejercicio será calificado. Por favor, haz el merge en cuanto el ejercicio sea calificado y el pull request sea aprobado 

**Cada Ejercicio deberá estar en un archivo .sql separado, es decir, deberás tener la siguiente estructura de archivos:**

```sql
4_ejercicios_having/
|___ ejercicio_1.sql
|___ ejercicio_2.sql
|___ ejercicio_3.sql
```

### Ejercicio 1: **Clasificaciones con más de 190 películas y duración promedio mayor a 112 minutos**

Escribe un query que muestre las clasificaciones (**`rating`**) que tienen más de 190 películas y una duración promedio mayor a 112 minutos.


---

### Ejercicio 2: **Contar apellidos de actores que se repiten más de 3 veces**

Escribe un query que muestre el apellido (**`last_name`**) y el número de actores que comparten ese apellido, pero solo para aquellos apellidos que aparecen más de 3 veces.

- Usa la tabla **`actor`**.
- Agrupa los actores por **`last_name`**.
- Filtra los apellidos que tienen más de 3 actores.


---

### Ejercicio 3: **Clientes con pagos totales mayores a 180**

Escribe un query que muestre el **ID del cliente** (**`customer_id`**) y la **suma total de los pagos** realizados por cada cliente, pero solo para aquellos clientes que hayan pagado más de 180 en total.

- Usa la tabla **`payment`**.
- Agrupa los resultados por **`customer_id`**.
- Calcula la suma total de los pagos (**`amount`**)de cada cliente.
- Filtra los resultados para mostrar solo aquellos clientes cuya suma total de pagos sea mayor a 180.

