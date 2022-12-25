-- Tabela de Pedidos
/*
create table if not exists Pedido(
	idPedido int not null,
    Frete float,
    idCliente int,
    idRastreio int,
    descrição varchar(45),
    
    constraint PK_Pedido PRIMARY KEY (idPedido),
    constraint FK_Pedido_Cliente FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente),
    constraint FK_Pedido_Rastreio FOREIGN KEY (idRastreio) REFERENCES Rastreio(idRastreio)
);

-- Tabela de Rastreio
create table if not exists Rastreio(
	idRastreio int not null,
    statusRastreio enum('Em Processamento','Separado para Entrega', 'Saiu para Entrega', 'Entregue'),
    descrição varchar(120),
    
    constraint PK_Rastreio PRIMARY KEY (idRastreio)
);

*/

select * from rastreio;
select * from pedido;
desc rastreio;

insert into rastreio values(001, 'Em processamento', "");
insert into Pedido values (1, 14.99, 1, 001, "");

insert into rastreio values(002, 'Em processamento', "");
insert into Pedido values (2, 14.99, 2, 001, "Frutas");

insert into rastreio values(003, 'Em processamento', "");
insert into Pedido values (3, 14.99, 3, 002, "Legumes");

insert into rastreio values(004, 'Em processamento', "");
insert into Pedido values (4, 14.99, 12, 003, "Eletrodomésticos");

insert into rastreio values(005, 'Em processamento', "");
insert into Pedido values (5, 14.99, 11, 004, "Eletrônicos");

insert into rastreio values(006, 'Em processamento', "");
insert into Pedido values (6, 14.99, 4, 005, "Decoração");

insert into rastreio values(007, 'Em processamento', "");
insert into Pedido values (7, 14.99, 2, 006, "Decoração");

insert into rastreio values(008, 'Em processamento', "");
insert into Pedido values (8, 14.99, 5, 007, "Eletrônicos");

select * from cliente;