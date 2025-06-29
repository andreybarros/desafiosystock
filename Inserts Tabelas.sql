/*Insert tabela venda*/
INSERT INTO public.venda (venda_id, data_emissao, horariomov, produto_id, qtde_vendida, valor_unitario, filial_id, item, unidade_medida) VALUES
(1001, '2025-06-26', '08:30:00', 'PROD001', 2.0, 10.5000, 1, 1, 'UN'),
(1002, '2025-06-26', '09:15:00', 'PROD002', 1.5, 25.0000, 1, 1, 'KG'),
(1003, '2025-06-26', '10:45:00', 'PROD003', 3.0, 5.7500, 1, 1, 'LT'),
(1004, '2025-06-26', '11:20:00', 'PROD004', 0.75, 100.9900, 1, 1, 'UN'),
(1005, '2025-06-26', '12:05:00', 'PROD005', 4.0, 15.0000, 1, 1, 'CX'),
(4002, '2025-02-16', '09:30:00', 'PROD400', 5.0, 15.0000, 1, 1, 'UN'),
(4003, '2025-02-19', '11:00:00', 'PROD600', 8.0, 12.0000, 1, 1, 'UN'),
(4004, '2025-02-21', '14:45:00', 'PROD600', 2.0, 12.0000, 1, 1, 'UN'),
(4001, '2025-02-18', '10:00:00', 'PROD200', 2.0, 75.0000, 1, 1, 'UN');


/*Insert tabela pedido_compra*/
INSERT INTO public.pedido_compra 
(pedido_id, data_pedido, item, produto_id, descricao_produto, ordem_compra, qtde_pedida, filial_id, data_entrega, qtde_entregue, qtde_pendente, preco_compra, fornecedor_id) 
VALUES
(2001.0, '2025-06-20', 1.0, 'PROD001', 'Produto 1 - Caneta Azul', 3001.0, 10.0, 1, '2025-06-25', 5.0, 5.0, 9.0, 101),
(2002.0, '2025-06-21', 1.0, 'PROD002', 'Produto 2 - Papel A4', 3002.0, 20.0, 1, '2025-06-26', 20.0, 0.0, 22.0, 102),
(2003.0, '2025-06-22', 1.0, 'PROD003', 'Produto 3 - Café em pó', 3003.0, 15.0, 1, '2025-06-26', 12.0, 3.0, 5.0, 103),
(2004.0, '2025-06-23', 1.0, 'PROD004', 'Produto 4 - Cadeira Escritório', 3004.0, 5.0, 1, '2025-06-27', 2.0, 3.0, 95.0, 104),
(2005.0, '2025-06-24', 1.0, 'PROD005', 'Produto 5 - Caixa Plástica', 3005.0, 8.0, 1, '2025-06-28', 4.0, 4.0, 12.0, 105),
(3004.0, '2025-02-07', 1.0, 'PROD400', 'Caixa Organizadora Pequena', 5004.0, 15.0, 1, '2025-02-14', 10.0, 5.0, 12.5, 204),
(3005.0, '2025-02-12', 1.0, 'PROD500', 'Lápis de Cor 12 Cores', 5005.0, 30.0, 1, '2025-02-20', 0.0, 30.0, 3.0, 205),
(3006.0, '2025-02-18', 1.0, 'PROD600', 'Caderno 200 Folhas', 5006.0, 25.0, 1, '2025-02-25', 20.0, 5.0, 8.9, 206),
(3001.0, '2025-02-05', 1.0, 'PROD100', 'Tinta Spray Azul', 5001.0, 10.0, 1, '2025-02-10', 0.0, 10.0, 18.5, 201),
(3002.0, '2025-02-10', 1.0, 'PROD200', 'Grampeador Industrial', 5002.0, 5.0, 1, '2025-02-15', 5.0, 0.0, 55.0, 202),
(3003.0, '2025-02-15', 1.0, 'PROD300', 'Caneca Branca 300ml', 5003.0, 20.0, 1, '2025-02-20', 0.0, 20.0, 7.9, 203);


/*Insert tabela entrada_mercadoria*/
INSERT INTO entrada_mercadoria
(data_entrada, nota_fiscal, item, produto_id, descricao_produto, qtde_recebida, filial_id, preco_unitario, ordem_compra)
VALUES
('2025-06-25', 'NF1001', 1.0, 'PROD001', 'Produto 1 - Caneta Azul', 5.0, 1, 9.0000, 3001.0),
('2025-06-26', 'NF1002', 1.0, 'PROD002', 'Produto 2 - Papel A4', 20.0, 1, 22.0000, 3002.0),
('2025-06-26', 'NF1003', 1.0, 'PROD003', 'Produto 3 - Café em pó', 12.0, 1, 5.0000, 3003.0),
('2025-06-27', 'NF1004', 1.0, 'PROD004', 'Produto 4 - Cadeira Escritório', 2.0, 1, 95.0000, 3004.0),
('2025-06-28', 'NF1005', 1.0, 'PROD005', 'Produto 5 - Caixa Plástica', 4.0, 1, 12.0000, 3005.0);
