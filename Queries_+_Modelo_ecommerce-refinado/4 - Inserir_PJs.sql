-- Inserir PJ's

use ecommerce_refinado;
show tables;
desc pessoaJurídica;
select * from pessoaJurídica;

/*
insert into conta
	values 
        (11, "comercio@dominio.com","98vendas"),
        (12, "comercio2@dominio.com","98produtos"),
        (13, "comercio3@dominio.com","senhasenha"),
        (14, "comercio4@dominio.com","umasenhasegura");
*/
-- insert into pessoaJurídica (idPJ, CNPJ, Razão Social, Endereço, idConta);

insert into pessoaJurídica values	(011, "67745678911234", "Super Vendas Shop", "Avenida Escrito nas Estrelas 5556, Jardim Comercial - Cidade Empresária, SP", 11),
									(012, "12745677341234", "Muitos Produtos Ship", "Rua Escritos pela Estradas 587, Jardim Produtor - Cidade Produtora, SP", 12),
                                    (013, "12345678936734", "Hiper Seguro Seguro", "Avenida Escrita nos Desenhos 3210, Jardim Seguro - Cidade Segura, SP", 13),
                                    (014, "48613678911234", "Mais que Um Comercio Seguro", "Rua Desenhada nas Galáxias 589, Jardim Estelar - Cidade Via Láctea, SP", 14);
