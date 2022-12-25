
use ecommerce_refinado;
show tables;
select * from cliente;

-- Selecionar os clientes de acordo com a forma de pagamento
select * from cliente where Pagamento like 'Pix';
select * from cliente where Pagamento like 'Cartão1';
select * from cliente where Pagamento like 'Cartão2';

-- Selecionar os clientes se forem PJ/PF
select * from cliente where idPJ;
select * from cliente where idPF;

/* ================================================================================ */

select * from pessoaFísica;

-- Selecionar todos os dados de uma pessoaFìsica que tenha nascido depois do ano 2000 e seja do endereço X
select * from pessoaFísica where dataDeNascimento >= 2000-01-01 AND endereço like '%Tangamandapio%';

-- Selecionar alguns dados de uma PF de acordo com um endereço
select Pnome, Sobrenome, endereço from pessoaFísica where endereço like '%SP%';


/* ================================================================================ */

select * from pedido;

-- Selecionar id, frete e descrição de um pedido que tenha uma descrição X
select idPedido, Frete, descrição from pedido where descrição like 'Eletrodomésticos' or descrição like 'Eletrônicos';


/* ================================================================================ */


select * from produto;

select * from produto where valor < 100;

select * from produto where categoria = 'Legumes';
select * from produto where categoria = 'Frutas';
select * from produto where categoria = 'Eletrônicos';
select * from produto where categoria = 'Eletrodomésticos' or categoria = 'Eletrônicos';

select idProduto, descrição, valor from produto where categoria = 'Eletrônicos';
select idProduto, descrição, valor from produto where categoria = 'Frutas';

/* ================================================================================ */

