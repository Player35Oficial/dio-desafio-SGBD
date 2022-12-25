/*

create table if not exists FormaDePagamentos (
	FormaDePagamento ENUM('Pix', 'Cartão1', 'Cartão2', 'Boleto'),
	idCliente int,
    
    constraint PK_Pagamento PRIMARY KEY (FormaDePagamento),
    constraint FK_Pagamento_Cliente FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);
*/

select * from Cliente;

insert into FormaDePagamentos values ('Pix', 1);

insert into FormaDePagamentos values ('Cartão1', 2), ('Cartão1', 3), ('Cartão2', 4), ('Pix', 5), ('Cartão2', 11), ('Cartão1', 12);