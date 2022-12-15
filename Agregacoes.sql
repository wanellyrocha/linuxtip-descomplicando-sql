-- Databricks notebook source
SELECT COUNT(*) AS nrLinhasNaoNulas
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
  COUNT(*) AS nrLinhasNaoNulas,
  COUNT(idCliente) AS nrIdClienteNaoNulo,
  COUNT(distinct idCliente) AS nrIdClienteDistintos,
  COUNT(distinct idClienteUnico) AS nrIdClienteUnicoDistinto
  
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
  COUNT(*) AS qtLinhas,
  COUNT(distinct idCliente) AS qtClientes,
  COUNT(distinct idClienteUnico) AS qtClientesUnicos  

FROM silver_olist.cliente

WHERE descCidade IN ('rio de janeiro', 'curitiba')

-- COMMAND ----------

SELECT
  ROUND(AVG(vlPreco), 2) AS avgPreco,
  
  ROUND(PERCENTILE(vlPreco, 0.5),2)  AS medianPreco, -- preço mediano dos produtos
  
  MAX(VlPreco) AS maxPreco,
  ROUND(AVG(vlFrete), 2) AS avgFrete,
  MAX(vlFrete) AS maxFrete,
  MIN(vlFrete) AS minFrete
  
FROM silver_olist.item_pedido


-- COMMAND ----------

SELECT COUNT(*)

FROM silver_olist.cliente

WHERE descUF = 'SP'

-- COMMAND ----------



-- COMMAND ----------


