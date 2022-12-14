-- Databricks notebook source
SELECT *
FROM silver_olist.pedido
WHERE descSituacao = 'shipped'

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido
WHERE descSituacao = 'shipped'
AND year (dtPedido) = '2018'

--leia-se: selecione todas as colunas da tabela silver_olist.pedido enviados de 2018 

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido
WHERE (descSituacao = 'shipped' OR descSituacao = 'canceled')
AND year (dtPedido) = '2018'

--leia-se: selecione todas as colunas da tabela silver_olist.pedido enviados ou cancelados de 2018 


-- COMMAND ----------

SELECT *
FROM silver_olist.pedido
WHERE descSituacao IN ('shipped','canceled')
AND year (dtPedido) = '2018'

--leia-se: selecione todas as colunas da tabela silver_olist.pedido enviados ou cancelados de 2018 

-- COMMAND ----------

SELECT *,
DATEDIFF(dtestimativaEntrega, dtAprovado)
FROM silver_olist.pedido
WHERE descSituacao IN ('shipped','canceled')
AND year (dtPedido) = '2018'
AND DATEDIFF (dtestimativaEntrega, dtAprovado) >30


-- COMMAND ----------


