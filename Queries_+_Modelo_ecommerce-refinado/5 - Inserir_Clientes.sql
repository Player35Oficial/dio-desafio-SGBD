-- Inserir Clientes

use ecommerce_refinado;
show tables;
desc cliente;
select * from Cliente;
select * from formaDePagamentos;
select * from pessoaFísica;
select * from pessoaJurídica;

-- Pare para pensar, todos estes atributos meio que são herdados de algum modo, Esta tabela poderia ter apenas FK's, não? [ Detalhe a ser revisto]

-- insert into cliente (idCliente, "NOME", Pagamento, idPF, idPJ);

delete from Cliente where idCliente = 1;

insert into cliente values(1, "Yuri Santana", 'Pix', 1, default);
insert into Cliente values(2, "Ana Holanda", 'Cartão1', 2, default);

insert into Cliente values	(3, "Chiara Orlandi", 'Cartão1', 3, default),
							(4, "Roberta Carbonari", 'Cartão2', 4, default),
                            (5, "Rebecca Bittencourt", 'Pix', 5, default);
							
insert into Cliente values	(11, "Super Vendas Shop", 'Cartão2', default, 11),
							(12, "Muitos Produtos Ship", 'Cartão1', default, 12);
