-- Databricks notebook source
SELECT *,
        CASE WHEN descUF ='SP' THEN 'paulista' ELSE 'outros'
        END AS descNacionalidade
        
FROM silver_olist.cliente


-- COMMAND ----------

SELECT *,
        CASE WHEN descUF ='SP' THEN 'paulista' ELSE 'outros'
        END AS descNacionalidade
        
FROM silver_olist.cliente


-- COMMAND ----------

SELECT *,
      CASE 
        WHEN descUF IN ('SP','MG','RJ','ES') THEN 'sudeste'
      END AS rescRegiao
      
FROM silver_olist.cliente      
  

-- COMMAND ----------

SELECT * 
