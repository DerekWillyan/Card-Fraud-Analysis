-- Análise Descritiva
-- Distribuição de Transações por Estado
SELECT state,
       COUNT(*) AS transaction_count
FROM CardFraud
GROUP BY state
ORDER BY transaction_count DESC;

-- Distribuição de Transações por Cidade
SELECT city,
       COUNT(*) AS transaction_count
FROM CardFraud
GROUP BY city
ORDER BY transaction_count DESC;

-- Distribuição de Transações por Categoria de Comerciante
SELECT category,
       COUNT(*) AS transaction_count
FROM CardFraud
GROUP BY category
ORDER BY transaction_count DESC;

-- Volume Total e Médio de Transações por Categoria
SELECT category,
       SUM(amt) AS total_amount,
       AVG(amt) AS average_amount
FROM CardFraud
GROUP BY category
ORDER BY total_amount DESC;

-- Volume Total e Médio de Transações por Estado
SELECT state,
       SUM(amt) AS total_amount,
       AVG(amt) AS average_amount
FROM CardFraud
GROUP BY state
ORDER BY total_amount DESC;

-- Análise de Fraude
-- Taxa de Fraude
SELECT 
       (SUM(is_fraud) / COUNT(*)) * 100 AS fraud_rate
FROM CardFraud;

-- Distribuição de Fraude por Categoria
SELECT category,
       (SUM(is_fraud) / COUNT(*)) * 100 AS fraud_rate
FROM CardFraud
GROUP BY category
ORDER BY fraud_rate DESC;

-- Distribuição de Fraude por Estado
SELECT state,
       (SUM(is_fraud) / COUNT(*)) * 100 AS fraud_rate
FROM CardFraud
GROUP BY state
ORDER BY fraud_rate DESC;

-- Análise Temporal de Fraude: Fraude por Mês
SELECT DATE_FORMAT(trans_date_trans_time, '%Y-%m') AS month,
       SUM(is_fraud) AS total_fraud
FROM CardFraud
GROUP BY month
ORDER BY month;

-- Análise Geoespacial
-- Mapa de Fraude: Transações Fraudulentas vs. Não Fraudulentas
SELECT lat, long, is_fraud, COUNT(*) AS transaction_count
FROM CardFraud
GROUP BY lat, long, is_fraud
ORDER BY lat, long;

-- Padrões de Localização: Transações Fraudulentas por Estado
SELECT state,
       COUNT(*) AS fraud_count,
       AVG(lat) AS avg_lat,
       AVG(long) AS avg_long
FROM CardFraud
WHERE is_fraud = 1
GROUP BY state
ORDER BY fraud_count DESC;

-- Análise Demográfica
-- Idade Média dos Titulares do Cartão em Transações Fraudulentas
SELECT AVG(TIMESTAMPDIFF(YEAR, dob, CURDATE())) AS average_age
FROM CardFraud
WHERE is_fraud = 1;

-- Profissões e Fraude: Frequência de Fraude por Profissão
SELECT job,
       (SUM(is_fraud) / COUNT(*)) * 100 AS fraud_rate
FROM CardFraud
GROUP BY job
ORDER BY fraud_rate DESC;

-- Análise de Valor de Transação
-- Relação entre Valor das Transações e Probabilidade de Fraude
SELECT is_fraud,
       AVG(amt) AS average_amount
FROM CardFraud
GROUP BY is_fraud;

-- Distribuição dos Valores das Transações Fraudulentas
SELECT CONCAT(FLOOR(amt / 100) * 100, '-', FLOOR(amt / 100) * 100 + 99) AS value_range,
       COUNT(*) AS transaction_count
FROM CardFraud
WHERE is_fraud = 1
GROUP BY value_range
ORDER BY value_range;

-- Distribuição dos Valores das Transações Não Fraudulentas
SELECT CONCAT(FLOOR(amt / 100) * 100, '-', FLOOR(amt / 100) * 100 + 99) AS value_range,
       COUNT(*) AS transaction_count
FROM CardFraud
WHERE is_fraud = 0
GROUP BY value_range
ORDER BY value_range;

