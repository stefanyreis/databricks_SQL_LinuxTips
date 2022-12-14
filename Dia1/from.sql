-- Databricks notebook source
SELECT * FROM silver_olist.pedido

--leia-se: selecione TUDO da tabela olist.pedido

-- COMMAND ----------

select idPedido
from silver_olist.pedido
-- leia-se: selecione a coluna idPedido da tabela silver_olist.pedido

-- COMMAND ----------

select idPedido,
       descSituacao
from silver_olist.pedido
-- leia-se: selecione a coluna idPedido e descSituacao da tabela silver_olist.pedido

-- COMMAND ----------

select idPedido,
       descSituacao
from silver_olist.pedido
limit 5 

-- leia-se: selecione a coluna idPedido e descSituacao da tabela silver_olist.pedido limitando a quantidade de linhas

-- COMMAND ----------

SELECT *,
         DATEDIFF (dtEstimativaEntrega, dtEntregue) AS qtDiasPromessaEntrega
         
FROM silver_olist.pedido


-- AS é para colocar um outro nome na coluna

-- COMMAND ----------


