-- Databricks notebook source
SELECT *,

       CASE 
        WHEN descUF = 'SP' THEN 'Paulista'
        WHEN descUF = 'RJ' THEN 'Fluminence'
        WHEN descUF = 'PR' THEN 'Paranaense'
        ELSE 'Outros'
       END AS descNacionalidade
FROM silver_olist.cliente

-- Case when criar uma nova coluna com informações necessarias

-- COMMAND ----------

SELECT 
