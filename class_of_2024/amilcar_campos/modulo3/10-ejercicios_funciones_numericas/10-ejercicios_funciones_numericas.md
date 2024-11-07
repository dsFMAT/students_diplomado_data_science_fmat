# Ejercicios Funciones Fecha y Tiempo


Estos Ejercicios deben de subirse en esta misma carpeta a través de un pull request en el cual este ejercicio será calificado. Por favor, haz el merge en cuanto el ejercicio sea calificado y el pull request sea aprobado 

**Cada Ejercicio deberá estar en un archivo .sql separado, es decir, deberás tener la siguiente estructura de archivos:**

```sql
10-ejercicios_funciones_numericas/
|___ ejercicio_1.sql

```

### Ejercicio: Análisis del Descuento Aplicado en Rentas y su Impacto en el Ingreso Total

### Contexto:

La tienda de alquiler de películas quiere analizar el impacto de  aplicar un descuento del 20% para ello se necesita:

1. El nuevo monto de la renta después de aplicar el descuento (discounted_amount).
2. La diferencia entre el monto original y el nuevo monto. (abs_difference)
3. El monto final redondeado al entero más cercano. (public_price)

Usa la tabla payments, y la columna amount como fuente de información, no olvides incluir el payment_id en tu consulta