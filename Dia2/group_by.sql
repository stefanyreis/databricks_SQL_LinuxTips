-- Databricks notebook source
SELECT 
descUf AS estados,
COUNT (*) AS quantidadeClientes
FROM silver_olist.cliente
GROUP BY descUF
ORDER BY quantidadeClientes desc

-- COMMAND ----------


