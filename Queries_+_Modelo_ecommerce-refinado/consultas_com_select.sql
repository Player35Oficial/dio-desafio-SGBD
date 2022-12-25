show databases;
use ecommerce_refinado;
show tables;

-- cliente, conta, estoque, formadepagamentos, fornecedor, fornecedorproduto, pedido, pessoafísica, pessoajurídica, produto, produtoestoque, produtopedido, produtosvendedor, rastreio, vendedorterceiro
select * from cliente;

select nome, idCliente from cliente;
-- select idCliente from cliente;

select idConta, email from conta;


-- select * from estoque, fornecedor, vendedorterceiro;

select * from pedido;
select idPedido, idCliente, descrição from pedido;


select * from pessoaFísica;
select CPF, Pnome, Sobrenome, idConta from pessoaFísica;

select * from pessoajurídica;
select CNPJ, RazãoSocial, Endereço from pessoajurídica;

select * from produto;
select idProduto, Descrição, Valor from produto;

select * from vendedorterceiro;
select CNPJ, razãoSocial, endereço from vendedorTerceiro;




