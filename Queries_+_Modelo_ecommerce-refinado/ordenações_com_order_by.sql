show tables;

-- Trazer uma ordenação com base em categoria
select * from produto order by categoria;


-- Trazer uma ordenação com base em valor (asc ou desc)
select * from produto order by valor desc;

-- Trazer uma ordenação com base em descrição
select * from produto order by descrição;

-- Trazer uma ordenação com base em id
select * from produto order by idProduto desc;

/* ================================================================================ */

-- ordenar a tabela clientes por: nome 
select * from cliente order by nome;

select * from cliente order by Pagamento;

/* ================================================================================ */

-- ordenar os pedidos pelo id
select * from pedido order by idCliente;

-- atualizar os fretes com valores diferentes para poder fazer uma consulta que faça mais sentido (esta parte pode ser ignorada se já houver diferenciação nesses valores)
update pedido set Frete = 87.50 where descrição = 'Eletrônicos';

update pedido set Frete = 32.75 where descrição = 'Decoração';

-- ordenar os pedidos pelo valor do frete
select * from pedido order by Frete desc;

/* ================================================================================ */

select * from fornecedor;

select * from fornecedor order by endereço desc;

select * from fornecedor order by idFornecedor desc;

/* ================================================================================ */

show tables;

-- Selecionar os dados dos clientes PF ordenados por (nome/id)
select * from cliente where idPF order by nome;

-- Selecionar os dados dos clientes PJ ordenados por (nome/id)
select * from cliente where idPJ order by nome;




