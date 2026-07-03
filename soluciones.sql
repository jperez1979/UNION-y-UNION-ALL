-- ══════════════════════════════════════════
-- RetailChain — UNION y UNION ALL
-- Autor: [Tu nombre]
-- Fecha: [Fecha de entrega]
-- ══════════════════════════════════════════

-- ── CONSULTA 1: UNION ────────────────────
-- Reporte de Catálogo Unificado
-- Pregunta de negocio: ¿Qué productos únicos comercializa
-- la empresa en toda su red de sucursales?
-- Operador: UNION (elimina filas completamente duplicadas)

SELECT [id_producto]
      ,[nombre_producto]  
FROM [dbo].[inventario_sucursal_norte]
union
SELECT [id_producto]
      ,[nombre_producto]
FROM [dbo].[inventario_sucursal_sur];




-- ── CONSULTA 2: UNION ALL ────────────────
-- Auditoría de Stock Total
-- Pregunta de negocio: ¿Cuántos registros físicos de stock
-- existen en total entre ambas sucursales?
-- Operador: UNION ALL (mantiene todos los registros incluyendo duplicados)
with UnionTable as  
(
    SELECT id_producto
              ,nombre_producto
              ,stock
        FROM [dbo].[inventario_sucursal_norte]
        union all
        SELECT id_producto
              ,nombre_producto 
              ,stock
        FROM [dbo].[inventario_sucursal_sur]
) 
SELECT id_producto, nombre_producto, sum(stock) as StockTotal FROM UnionTable 
group by id_producto, nombre_producto
order by id_producto


-- ── CONSULTA 3: COMPARACIÓN DE RESULTADOS ─
-- Ejecutá estas dos consultas para comparar cuántas filas
-- devuelve cada operador y explicá la diferencia en tu README

SELECT COUNT(*) AS filas_union     FROM ( SELECT id_producto
              ,nombre_producto
              
        FROM [dbo].[inventario_sucursal_norte]
        union 
        SELECT id_producto
              ,nombre_producto 
              
        FROM [dbo].[inventario_sucursal_sur])     AS resultado_union;

SELECT COUNT(*) AS filas_union_all FROM ( SELECT id_producto
              ,nombre_producto
              
        FROM [dbo].[inventario_sucursal_norte]
        union all
        SELECT id_producto
              ,nombre_producto 
              
        FROM [dbo].[inventario_sucursal_sur]) AS resultado_union_all;
