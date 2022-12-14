-- Databricks notebook source
SELECT
  *
FROM
  silver_olist.pedido -- leia-se selecione tudo da tabela silver_olist.pedido

-- COMMAND ----------

SELECT
  idPedido,
FROM
  silver_olist.pedido -- Selecione a coluna idPedido da tabela Silver_olist.pedido

-- COMMAND ----------

SELECT
  idPedido,
  descSituacao
FROM
  silver_olist.pedido
LIMIT
  5
  
  -- LIMIT limita quantidade de amostra

-- COMMAND ----------

SELECT
  *,
  DATEDIFF(dtEstimativaEntrega, dtEntregue) AS qtDiasPromessaEntrega
FROM
  silver_olist.pedido -- DATEDIFF diferença de dias
