use ecommerce_refinado;

/*

create table if not exists FornecedorProduto (
	idFornecedor int,
    idProdutos int,
    Quantidade int,
    
    constraint FK_Fornecedor_disp_Produto FOREIGN KEY (idFornecedor) REFERENCES Fornecedor(idFornecedor),
    constraint FK_Produto_disp_Fornecedor FOREIGN KEY (idProdutos) REFERENCES Produto(idProduto)
);

*/

/* insert into ProdutoEstoque values (ID do produto em Estoque, ID do Estoque, Quantidade);
	Estoques Registrados: 2121, 4575, 2424, 5698
 */
/* Eletrônicos */
insert into FornecedorProduto values (2121, 1, 50);
insert into FornecedorProduto values (2121, 15, 150);

/* Eletrodomésticos */
insert into FornecedorProduto values (2424, 24, 150);
insert into FornecedorProduto values (2424, 34, 150);


/* Decoração */
insert into FornecedorProduto values (4575, 45, 80);
insert into FornecedorProduto values (4575, 89, 20);

/* Frutas */
insert into FornecedorProduto values (5698, 239, 100);
insert into FornecedorProduto values (5698, 240, 100);
insert into FornecedorProduto values (5698, 241, 100);
insert into FornecedorProduto values (5698, 242, 100);

/* Legumes  */
insert into FornecedorProduto values (5698, 209, 100);
insert into FornecedorProduto values (5698, 210, 100);
insert into FornecedorProduto values (5698, 211, 100);
insert into FornecedorProduto values (5698, 212, 100);

select * from FornecedorProduto;