-- Databricks notebook source
SELECT
      COUNT (*) AS nrlinhasNaoNulas, --linhas não nulas
      COUNT (idCliente) AS nrIdClienteNaoNulo, -- id de clientes nao nulos
      COUNT (distinct idCliente) AS nrIdClienteDistintos, --id de clientes distintos
      COUNT (idClienteUnico) AS nrIdClientesUnico,
      COUNT (distinct idClienteunico) AS nrIdClienteUnicoDistintos

FROM silver_olist.cliente

-- COMMAND ----------

SELECT *
FROM silver_olist.cliente

-- COMMAND ----------

SELECT *
FROM silver_olist.item_pedido

-- COMMAND ----------

SELECT 
   ROUND (AVG(vlPreco), 2),
   ROUND (AVG(vlFrete), 2),
   INT(MAX(vlFrete)),
   MIN(vlFrete)
FROM silver_olist.item_pedido    

-- COMMAND ----------

SELECT COUNT (*)
FROM silver_olist.cliente

