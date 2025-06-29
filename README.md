# desafiosystock
# Desafio Técnico - Analista de Integração de Dados (Implantação)

Este repositório contém as soluções para o desafio técnico solicitado pela Systock, incluindo a criação das tabelas, inserção de dados, consultas SQL e estratégias de validação de dados.

---

## Estrutura do Projeto

- `create_tables.sql` — Script para criação das tabelas `venda`, `pedido_compra` e `entradas_mercadoria`.
- `insert_data.sql` — Scripts para inserção dos dados fornecidos.
- `Consultas_parte01.sql` — Consultas básicas solicitadas na Parte 1.
- `Transformação_dados_parte2.sql` — Consultas com transformações solicitadas na Parte 2.
- `parte03_validacao.sql` — Estratégia e consultas para validação dos dados com o cliente (Fevereiro/2025).

---

## Parte 3 — Estratégia de Validação com o Cliente

Nesta etapa final, o objetivo é garantir a exatidão e confiabilidade dos dados apresentados para o cliente, focando no mês de Fevereiro de 2025.

### Principais Pontos de Validação

- Conferir o total de vendas por produto no período.
- Verificar a quantidade pedida e a quantidade efetivamente recebida para cada produto.
- Identificar produtos com pedidos pendentes de recebimento.

### Técnicas Utilizadas

- Uso de consultas SQL agregadas para totalizar valores.
- Comparação entre tabelas de pedido e entrada de mercadoria para validar recebimento.
- Uso de filtros por período para garantir análise temporal correta.

### Consultas Preparadas para a Reunião

As consultas estão disponíveis no arquivo `parte3_validacao.sql` e incluem:

- Total de vendas por produto.
- Total pedido vs. total recebido por produto.
- Produtos com pedidos ainda não recebidos.

Essas consultas podem ser executadas ao vivo durante a reunião para transparência e validação conjunta.

---

## Como Executar

1. Crie o banco de dados PostgreSQL local.
2. Execute o script `create_tables.sql` para criar as tabelas.
3. Insira os dados usando `insert_data.sql`.
4. Rode as consultas das partes 1 e 2 para análise.
5. Execute o `parte3_validacao.sql` para suporte na validação com o cliente.


### Observação Importante sobre a Tabela `entradas_mercadoria`

Durante a criação das tabelas, identifiquei que a definição da tabela `entradas_mercadoria` continha um erro na chave primária: foi informada a coluna `ordem_compra` como parte da chave primária, porém essa coluna não estava declarada na estrutura original.

Para corrigir e garantir a integridade dos dados, adicionei explicitamente a coluna `ordem_compra` à tabela `entradas_mercadoria`, conforme a relação necessária com a tabela `pedido_compra`. Isso permite manter a consistência e o vínculo correto entre os pedidos de compra e as entradas de mercadoria.

Caso deseje verificar o script corrigido, ele está disponível no arquivo `create_tables.sql`.


---

## Contato

Em caso de dúvidas, fico à disposição para esclarecimentos.

---

### Obrigado pela oportunidade!
