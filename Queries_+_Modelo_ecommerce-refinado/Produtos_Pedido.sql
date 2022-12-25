select * from Pedido;
select * from Rastreio;
select * from Cliente;
select * from formadepagamentos;

/*
create table if not exists ProdutoPedido (
	idProdutos int,
    idPedido int,
    quantidade int not null,
    
    constraint FK_Produto_Pedido FOREIGN KEY (idProdutos) REFERENCES Produto(idProduto),
    constraint FK_Pedido_Produto FOREIGN KEY (idPedido) REFERENCES Pedido(idPedido)
);
*/

desc rastreio;
select * from pedido;
select * from ProdutoPedido;

/* insert into produtoPedido values(idProduto, idPedido, quantidade); */

insert into produtoPedido values(241, 2, 10);

insert into produtoPedido values(211, 3, 20);

insert into produtoPedido values(24, 4, 2);

insert into produtoPedido values(15, 5, 5);

insert into produtoPedido values(45, 6, 4);

insert into produtoPedido values(89, 7, 10);

insert into produtoPedido values(1, 8, 2);
