-- Databricks notebook source
SELECT *
FROM silver_olist.pedido
WHERE descSituacao = 'delivered'
LIMIT 100

-- WHERE FILTRAR CONDIÇÃO --

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido
WHERE descSituacao = 'shipped' and year(dtPedido) = '2018'
LIMIT 100

-- AND onde as 2 clausulas tem que ser verdadeiras.

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido
WHERE (descSituacao = 'shipped' OR descSituacao = 'canceled') 
AND year(dtPedido) = '2018'

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido
WHERE descSituacao IN ('shipped','canceled') 
AND year(dtPedido) = '2018'

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido
WHERE descSituacao IN ('shipped','canceled') 
AND year(dtPedido) = '2018'
AND DATEDIFF (dtEstimativaEntrega, dtAprovado) > 30
