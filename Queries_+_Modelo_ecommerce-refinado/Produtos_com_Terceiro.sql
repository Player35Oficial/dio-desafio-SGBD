-- Produtos com Terceiro
use ecommerce_refinado;

/*
	produtosVendedor
	idPTerceiro int,
    idPProduto int,
    quantidade int default 1,
    
*/

select * from vendedorTerceiro;
select * from produto;
select * from vendedorTerceiro, ProdutosVendedor where idTerceiro = idPTerceiro;



/* idTerceiro 5525 - Razão Social: João Produtos */
insert into ProdutosVendedor values(5525, 45, 200);
insert into ProdutosVendedor values(5525, 89, 200);
insert into ProdutosVendedor values(5525, 1, 150);
insert into ProdutosVendedor values(5525, 15, 75);

/* idTerceiro 9890 - Razão Social: Armarinhos César */
insert into ProdutosVendedor values(9890, 45, 150);
insert into ProdutosVendedor values(9890, 24, 75);
insert into ProdutosVendedor values(9890, 34, 75);
insert into ProdutosVendedor values(9890, 89, 10);

/* idTerceiro 1010 - Razão Social: Lucas Frutas */
insert into ProdutosVendedor values(1010, 242, 70);
insert into ProdutosVendedor values(1010, 241, 75);
insert into ProdutosVendedor values(1010, 240, 20);
insert into ProdutosVendedor values(1010, 239, 40);

/* idTerceiro 2022 - Razão Social: Gastro Shop */
insert into ProdutosVendedor values(2022, 212, 60);
insert into ProdutosVendedor values(2022, 211, 60);
insert into ProdutosVendedor values(2022, 210, 80);
insert into ProdutosVendedor values(2022, 209, 80);
insert into ProdutosVendedor values(2022, 242, 35);
insert into ProdutosVendedor values(2022, 241, 35);

select * from ProdutosVendedor, Produto where idProduto = idPTerceiro;


/*

================== Frutas 
(242,"Manga Tommy");
(241,"Laranja");
(240,"Maçã Verde");
(239,"Maçã")


 ================== Legumes 
(212,"Cenoura")
(211,"Tomate")
(210,"Alface")
(209,"Cebola")


*/