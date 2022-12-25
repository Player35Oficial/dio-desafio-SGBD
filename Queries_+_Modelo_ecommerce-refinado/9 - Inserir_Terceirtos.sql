-- Inserir Terceiros

/*
idTerceiro int not null,
    razãoSocial varchar(45) not null,
    endereço varchar(120) not null,
    CNPJ char(15) not null,
    CPF char(11),

*/

-- insert into VendedorTerceiro Values ("razãoSocial", "Endereço", CNPJ, CPF)
select * from VendedorTerceiro;

delete from vendedorTerceiro where idTerceiro = 1010;

insert into VendedorTerceiro values( 5525,"João Produtos", "Rua Gastro 27, Jardim Botânico - Cidade Frutas, SP", 123456789012345,default);

insert into VendedorTerceiro values(9890, "Armarinhos César", "Rua Mobili 27, Jardim Madeira - Cidade Das Árvores, SP", 789016789012345,default);

insert into VendedorTerceiro values(1010, "Lucas Frutas", "Rua Gastro 29, Jardim Vitaminas - Cidade Frutas, SP", 120167889014235, default);

insert into VendedorTerceiro values(2022, "Gastro Shop", "Rua Gastro 27, Jardim Comprado - Cidade Turismo, SP", 123456778890345,default);