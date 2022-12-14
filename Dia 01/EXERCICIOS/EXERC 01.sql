-- Databricks notebook source
-- SELECIONE TODOS OS CLIENTES PAULISTANOS

SELECT *
FROM silver_olist.cliente
WHERE descCidade = 'sao paulo'

-- COMMAND ----------

-- Selecione todos os clientes Paulistas


SELECT *
FROM silver_olist.cliente
WHERE descUF = 'SP'

-- COMMAND ----------

-- selecione todos os vendedores cariocas e paulistas
SELECT *
FROM silver_olist.vendedor
WHERE descCidade = 'rio de janeiro' OR descUF = 'SP'


-- COMMAND ----------

-- Selecione todos os produtos de perfumaria e bebes com altura maior que 5cm

SELECT *
FROM silver_olist.produto
WHERE descCategoria IN ('perfumaria', 'bebes') 
AND vlAlturaCm > 5

