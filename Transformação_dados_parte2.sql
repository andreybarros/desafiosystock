/**/
SELECT
    pc.produto_id || ' - ' || pc.descricao_produto AS "Produto", -- Concatenação dos campos campos produto_id e descricao_produto
    pc.qtde_pedida AS "Qtde Requisitada",
    TO_CHAR(pc.data_pedido, 'DD/MM/YYYY') AS "Data Solicitação" --Transformação do campo de Data
FROM pedido_compra pc
WHERE
    pc.data_pedido BETWEEN DATE '2025-01-01' AND DATE '2025-03-31'
    AND pc.qtde_pedida > 10; -- Condição para produtos requisitados mais de 10x
