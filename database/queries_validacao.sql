-- 1. Validação de cadastro/login do usuário
-- Objetivo: verificar se o status da conta do usuário está ativo antes do teste
SELECT id, username, status, created_at
FROM users
WHERE username = 'standard_user';

-- 2. Validação de pedido gerado após checkout
-- Objetivo: garantir que a compra realizada na interface gravou os dados corretos na tabela de pedidos
SELECT
    o.order_id,
    u.username,
    o.total_amount,
    o.status AS order_status,
    o.created_at
FROM orders o
JOIN users u ON o.user_id = u.id
WHERE u.username = 'standard_user'
ORDER BY o.created_at DESC;
LIMIT 1;

-- 3. Validação dos itens do pedido (integridade dos dados)
-- Objetivo: verificar se o produto "Sauce Labs Backpack" foi associado ao pedido correto
SELECT
    oi.order_id,
    p.product_name,
    oi.quantity,
    oi.unit_price
FROM order_items oi
JOIN products p ON oi.product_id = p.id
WHERE oi.order_id = 'ORDER-2026-001';

-- 4. Verificação de atualização de estoque
-- Objetivo: confirmar se a quantidade em estoque reduziu após a venda
SELECT id, product_name, price, stock_quantity
FROM products
WHERE product_name = 'Sauce Labs Backpack';