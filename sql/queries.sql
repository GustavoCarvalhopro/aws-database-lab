-- Inserindo clientes
INSERT INTO clientes (nome, email)
VALUES 
('Ana Silva', 'ana@email.com'),
('Carlos Souza', 'carlos@email.com'),
('Mariana Lima', 'mariana@email.com');

-- Inserindo pedidos
INSERT INTO pedidos (cliente_id, valor)
VALUES
(1, 250.00),
(1, 120.50),
(2, 89.90);

-- Listar clientes com seus pedidos
SELECT 
    c.nome,
    c.email,
    p.valor,
    p.criado_em
FROM clientes c
JOIN pedidos p ON p.cliente_id = c.id
ORDER BY p.criado_em DESC;

-- Total gasto por cliente
SELECT 
    c.nome,
    SUM(p.valor) AS total_gasto
FROM clientes c
JOIN pedidos p ON p.cliente_id = c.id
GROUP BY c.nome
ORDER BY total_gasto DESC;
