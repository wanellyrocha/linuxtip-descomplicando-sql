-- Databricks notebook source
SELECT 
  descUF,
  COUNT(*)

FROM silver_olist.cliente

GROUP BY descUF

-- COMMAND ----------

SELECT 
  descUF,
  COUNT(DISTINCT idClienteUnico) AS qtIdClientesUnicos

FROM silver_olist.cliente

GROUP BY descUF

-- COMMAND ----------


