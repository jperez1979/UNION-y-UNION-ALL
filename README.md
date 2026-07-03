¿Cuántas filas devuelve cada consulta y por qué son distintas? Explicá con ejemplos concretos de los datos qué filas se eliminaron con UNION
La primera consutla retoran  11 filas, la segunda 14 filas.
Con las union se eleminaron las filas que en todos sus columnas tenian los mismos datpos.

¿Por qué UNION ALL es más eficiente que UNION? ¿Qué operación adicional realiza UNION internamente que consume más recursos?
Es mas eficiente porque no tiene que excluir los valores repetidos. Recorrer el resultado para eliminar registros duplicados.

¿En qué casos de negocio usarías cada uno? Dá al menos dos ejemplos reales distintos a los del ejercicio.
La union la usaria en el caso de querer obtener clientes diferentes de dos sucursales.
La union all la usaria en el caso de querer listar ventas que se encuentren en diferentes tablas.

¿Qué pasa si las columnas de ambas consultas no coinciden en número o tipo? ¿Qué error genera SQL?

Sql no puede hacer la union y no retorna datos.
Retorna este error: "Todas las consultas combinadas mediante un operador UNION, INTERSECT o EXCEPT deben tener el mismo número de expresiones en sus listas de destino"
