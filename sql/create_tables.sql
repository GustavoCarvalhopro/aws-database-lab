-- Listar todos os clientes
SELECT * FROM clientes;

-- Total de pedidos por cliente
SELECT c.nome, COUNT(p.id) AS total_pedidos
FROM clientes c
LEFT JOIN pedidos p ON c.id = p.cliente_id
GROUP BY c.nome;

-- Valor total de pedidos por cliente
SELECT c.nome, SUM(p.valor) AS total_valor
FROM clientes c
JOIN pedidos p ON c.id = p.cliente_id
GROUP BY c.nome;
