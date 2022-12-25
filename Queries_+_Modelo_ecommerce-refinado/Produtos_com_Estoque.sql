use ecommerce_refinado;

/*
-- Produtos Estoque
create table if not exists ProdutoEstoque (
	idPEstoque int,
    idEstoque int, 
    quantidade int default 1,
    
    constraint FK_Produtos_Estoque FOREIGN KEY (idPEstoque) REFERENCES Produto(idProduto),
    constraint FK_Estoques_Produtos FOREIGN KEY (idEstoque) REFERENCES Estoque(idEstoque)
);

*/
/* insert into ProdutoEstoque values (ID do produto em Estoque, ID do Estoque, Quantidade);
	Estoques Registrados: 204, 202, 404, 200
 */
/* Eletrônicos */
insert into ProdutoEstoque values (1, 200, 50);
insert into ProdutoEstoque values (15, 200, 150);

/* Eletrodomésticos */
insert into ProdutoEstoque values (24, 202, 150);
insert into ProdutoEstoque values (34, 202, 150);


/* Decoração */
insert into ProdutoEstoque values (45, 404, 80);
insert into ProdutoEstoque values (89, 404, 20);

/* Frutas */
insert into ProdutoEstoque values (239, 204, 100);
insert into ProdutoEstoque values (240, 204, 100);
insert into ProdutoEstoque values (241, 204, 100);
insert into ProdutoEstoque values (242, 204, 100);

/* Legumes  */
insert into ProdutoEstoque values (209, 204, 100);
insert into ProdutoEstoque values (210, 204, 100);
insert into ProdutoEstoque values (211, 204, 100);
insert into ProdutoEstoque values (212, 204, 100);

select * from ProdutoEstoque;