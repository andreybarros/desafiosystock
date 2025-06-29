
------------------------------------------------------------------------------------------------
/*Consumo por produto e mês*/

SELECT 
    venda.produto_id AS "PRODUTO",
    pedido.descricao_produto AS "DESCRICAO",
    CONCAT(CAST(SUM(venda.qtde_vendida) AS TEXT), ' - ', venda.unidade_medida) AS "CONSUMO TOTAL"
FROM venda
INNER JOIN pedido_compra pedido ON venda.produto_id = pedido.produto_id
WHERE 
    EXTRACT(MONTH FROM venda.data_emissao) = 2
    AND EXTRACT(YEAR FROM venda.data_emissao) = 2025
GROUP BY 
    venda.produto_id,
    pedido.descricao_produto,
    venda.unidade_medida

------------------------------------------------------------------------------------------------
/*Produtos com requisição pendente*/
SELECT
	produto_id PRODUTO,
	descricao_produto DESCRICAO,
	qtde_pedida QTD_PEDIDA,
	qtde_entregue QTD_ENTREGUE
from 
	pedido_compra
WHERE 
	qtde_entregue = '0'
	
------------------------------------------------------------------------------------------------
/* Produtos não consumidos e não recebidos*/
SELECT 
pc.produto_id,
pc.descricao_produto,
pc.qtde_pedida,
pc.data_pedido
FROM 
    pedido_compra pc
LEFT JOIN entradas_mercadoria em ON pc.ordem_compra = em.ordem_compra
    AND pc.produto_id = em.produto_id
    AND pc.item = em.item
LEFT JOIN venda v ON pc.produto_id = v.produto_id
   AND EXTRACT(MONTH FROM v.data_emissao) = 2
    AND EXTRACT(YEAR FROM v.data_emissao) = 2025
WHERE 
    EXTRACT(MONTH FROM pc.data_pedido) = 2 
    AND EXTRACT(YEAR FROM pc.data_pedido) = 2025
    AND em.produto_id IS NULL 
    AND v.produto_id IS null
   
    


