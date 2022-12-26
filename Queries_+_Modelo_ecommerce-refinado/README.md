# dio-desafio-SGBD
 Repositório Criado para Reunir as Atividades de Projeto e Desafios do Bootcamp Database Experience da DIO (Digital Innovation One)

## Descrição do Desafio
O esquema deverá ser adicionado a um repositório do Github para futura avaliação do desafio de projeto. Adicione ao Readme a descrição do projeto conceitual para fornecer o contexto sobre seu esquema.

### Objetivo:
Refine o modelo apresentado acrescentando os seguintes pontos:

* Cliente PJ e PF – Uma conta pode ser PJ ou PF, mas não pode ter as duas informações;
* Pagamento – Pode ter cadastrado mais de uma forma de pagamento;
* Entrega – Possui status e código de rastreio;


## Contexto

#### Narrativa – Escopo de Ecommerce

Qual o Escopo? – Venda de Produtos
* Produto, Estoque, Fornecedor, Pedido, Cliente

Narrativa – Produto
•	Os produtos são vendidos por uma única plataforma online. Contudo, estes podem ter vendedores distintos (terceiros)
•	Cada produto possui um fornecedor
•	Um ou mais produtos podem compor um pedido

Narrativa – Cliente
•	O cliente pode se cadastrar no site com seu CPF ou CNPJ
•	O endereço do cliente irá determinar o valor do frete
•	Um cliente pode comprar mais de um pedido. Este tem um período de carência para devolução do produto

Narrativa – Pedido
•	Os pedidos são criados por clientes e possuem informações de compra, endereço e status de entrega
•	Um produto ou mais compõem o pedido
•	O pedido pode ser cancelado

# Descrição do Desafio 2
Replique a modelagem do projeto lógico de banco de dados para o cenário de e-commerce. Fique atento as definições de chave primária e estrangeira, assim como as constraints presentes no cenário modelado. Perceba que dentro desta modelagem haverá relacionamentos presentes no modelo EER. Sendo assim, consulte como proceder para estes casos. Além disso, aplique o mapeamento de modelos aos refinamentos propostos no módulo de modelagem conceitual.

Assim como demonstrado durante o desafio, realize a criação do Script SQL para criação do esquema do banco de dados. Posteriormente, realize a persistência de dados para realização de testes. Especifique ainda queries mais complexas dos que apresentadas durante a explicação do desafio. Sendo assim, crie queries SQL com as cláusulas abaixo:

* Recuperações simples com SELECT Statement
* Filtros com WHERE Statement
* Crie expressões para gerar atributos derivados
* Defina ordenações dos dados com ORDER BY
* Condições de filtros aos grupos – HAVING Statement
* Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados

### Diretrizes
* Não há um mínimo de queries a serem realizadas;
* Os tópicos supracitados devem estar presentes nas queries;
* Elabore perguntas que podem ser respondidas pelas consultas;
* As cláusulas podem estar presentes em mais de uma query;
