# Ejercicios Funciones de Cadena

Estos Ejercicios deben de subirse en esta misma carpeta a través de un pull request en el cual este ejercicio será calificado. Por favor, haz el merge en cuanto el ejercicio sea calificado y el pull request sea aprobado 

**Cada Ejercicio deberá estar en un archivo .sql separado, es decir, deberás tener la siguiente estructura de archivos:**

```sql
8-ejercicios_funciones_de_cadena/
|___ ejercicio_1.sql

```

### Ejercicio 1: 

Construye una consulta que devuelva a los customers con las siguientes columnas:

- `customer_id`: El ID del cliente.
- `formatted_first_name`: El nombre del cliente formateado con `INITCAP()` y sin espacios extra.
- `corrected_last_name`: El apellido en mayúsculas.
- `full_name`: El nombre completo concatenado y separando first y last name con un espacio.
- `corrected_first_name`: El nombre con las letras "o" reemplazadas por "O".
- `substring_first_name`: Los primeros 3 caracteres del nombre.
- `name_length`: La longitud total del nombre completo.
- `position_of_A_in_last_name`: La posición de la letra "A" en el apellido (o 0 si no existe).