-- Databricks notebook source
  -- Lista de pedidos feito em dezembro de 2017 entregue com atraso
  
  SELECT *
  FROM silver_olist.pedido
  WHERE YEAR (dtPedido) = 2017
  AND MONTH (dtPedido) = 12
  AND descSituacao = 'delivered'
  AND DATE (dtEntregue) > DATE (dtEstimativaEntrega)

-- COMMAND ----------

-- Lista de pedidos com 2 ou mais parcelas menores que 20,00 reais

SELECT *
FROM silver_olist.pagamento_pedido
WHERE nrPacelas >= 2
AND vlPagamento / nrPacelas < 20

-- COMMAND ----------


