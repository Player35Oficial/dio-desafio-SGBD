-- Inserir Produtos

/*
	idProduto int not null,
    categoria varchar(45),
    Descrição varchar(45),
    Valor float not null,
    
*/
select * from Produto;
/* Eletrônicos */
insert into Produto values(1, "Eletrônicos", "TV 34' LG Smart TV", 1499.99);
insert into Produto values(15, "Eletrônicos", "Samsung Book 15 8GB 256GB", 2299.99);

/* Eletrodomésticos */
insert into Produto values(24, "Eletrodomésticos", "Geladeira Consul Frost-Free 2 Portas ", 8499.99);
insert into Produto values(34, "Eletrodomésticos", "Fogão 5 Bocas Brastemp coocktop ", 3499.99);

/* Decoração */
insert into Produto values(45, "Decoração", "Planta Samambaia", 99.99);
insert into Produto values(89, "Decoração", "Lustre Perolado", 8799.99);


/* Frutas */ 
insert into Produto values(242, "Frutas", "Manga Tommy", 1.99);
insert into Produto values(241, "Frutas", "Laranja", 2.99);
insert into Produto values(240, "Frutas", "Maçã Verde", 1.99);
insert into Produto values(239, "Frutas", "Maçã", 0.99);


/* Legumes */
insert into Produto values(212, "Legumes", "Cenoura", 5.99);
insert into Produto values(211, "Legumes", "Tomate", 3.99);
insert into Produto values(210, "Legumes", "Alface", 2.99);
insert into Produto values(209, "Legumes", "Cebola", 1.99);


