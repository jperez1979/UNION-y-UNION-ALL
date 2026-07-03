¿Por qué usaste LEFT JOIN para la Consulta 1 y no INNER JOIN? ¿Qué se perdería si usaras INNER JOIN?
Debemos usar left join ya que debemos primero listar todos los productos, hayan tenido ventas o no, para luego filtrar los que en ventas tengan null. Estos son los que nunca tuvieron ventas.
No se puede usar inner join sino incluiría solo los productos que tienen ventas.

¿Por qué usaste RIGHT JOIN para la Consulta 2? ¿Qué tabla está a la izquierda y cuál a la derecha en tu consulta?
Use right join ya que debía incluir todas las ventas, tengan un producto existente en la tabla productos o no.
La tabla de la izquierda es productos y la de la derecha es ventas.


¿Qué representan los valores NULL en cada resultado? Explica con un ejemplo concreto de los datos qué significa que venta_id sea NULL en la Consulta 1 y que producto_id de productos sea NULL en la Consulta 2.
Los valores null en las consultas muestran ausencia de valor. No existe un valor para ese campo para el registro seleccionado.
En el ejemplo 1 la venta_id es null en los casos en los cuales el articulo ej.: Hub USB-C 7p no tiene ventas registradas en la tabla ventas.
En el ejemplo 2 la producto_id es null en los casos en los cuales la venta ej.: venta_id 10, producto 999 no tiene producto registrado en la tabla productos. No existe en la tabla productos un producto con el id 999.

¿Cuándo usarías FULL OUTER JOIN en un caso real de negocio?  
Debo usarlo cuando debo mostrar todos los registros de la tabla de la derecha (tengan o no registros en la tabla de la izquierda) y viceversa.

