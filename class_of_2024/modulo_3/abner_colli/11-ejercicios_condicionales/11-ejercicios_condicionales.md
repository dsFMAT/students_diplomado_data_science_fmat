# Ejercicios Funciones Fecha y Tiempo


Estos Ejercicios deben de subirse en esta misma carpeta a través de un pull request en el cual este ejercicio será calificado. Por favor, haz el merge en cuanto el ejercicio sea calificado y el pull request sea aprobado 

**Cada Ejercicio deberá estar en un archivo .sql separado, es decir, deberás tener la siguiente estructura de archivos:**

```sql
11-ejercicios_condicionales/
|___ ejercicio_1.sql

```

La tienda de alquiler de películas quiere analizar su catálogo y clasificar las películas en función de su costo de renta y duración. Se desea agrupar las películas en las siguientes categorías:

1. **"Económica y Corta"**: Si el costo de renta es menor o igual a $2 y la duración es menor a 60 minutos.
2. **"Económica y Larga"**: Si el costo de renta es menor o igual a $2 y la duración es de 60 minutos o más.
3. **"Costosa y Corta"**: Si el costo de renta es mayor a $2 y la duración es menor a 60 minutos.
4. **"Costosa y Larga"**: Si el costo de renta es mayor a $2 y la duración es de 60 minutos o más.

### Instrucciones:

Usa la función `CASE` para realizar esta clasificación y mostrar las películas que pertenecen a cada categoría.