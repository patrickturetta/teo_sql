-- Databricks notebook source
SELECT *
FROM silver_olist.cliente

-- COMMAND ----------

SELECT COUNT(*) AS nrLinha,
       COUNT(idCliente) AS nrCliente,
       COUNT(distinct idCliente) AS nrClientesDistintos,
       COUNT (distinct idClienteUnico) AS nrClienteUnicoDistintos
  
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
      COUNT(*),
      COUNT (distinct idCliente) AS qtCliente,
      COUNT (distinct idClienteUnico) AS qtClienteUnico
      
FROM silver_olist.cliente
WHERE descCidade IN ('presidente prudente', 'curitiba')


-- COMMAND ----------

SELECT
     ROUND (AVG(vlPreco), 2) AS avgPreco,
      
     INT (PERCENTILE (vlPreco, 0.5)) AS MedianPreco,
      
      MAX(vlPreco)AS vlMaxPreco,
      AVG (vlFrete) AS avgFrete,
      MAX(vlFrete) AS vlMaxFrete,
      MIN(vlFrete) AS vlMinFrete
      
FROM silver_olist.item_pedido

-- COMMAND ----------

SELECT COUNT(*)
FROM silver_olist.cliente
WHERE descUF = 'SC'
