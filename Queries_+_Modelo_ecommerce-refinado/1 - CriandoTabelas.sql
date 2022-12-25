show databases;
create DATABASE ecommerce_refinado;
use ecommerce_refinado;
show tables;

-- Tabela conta
create table if not exists conta (
	idConta INT not null AUTO_INCREMENT,
	email varchar(45) not null,
    senha varchar(45) not null,
    
	constraint PK_conta primary key (idConta),
    constraint UC_conta unique (idConta, email)
);

-- drop table PessoaFísica;
-- Tabela Pessoa Física
create table if not exists PessoaFísica(
	idPF int not null,
    CPF char(11),
	dataDeNascimento date not null,
    Pnome varchar(45) not null,
    Mnome varchar(45) not null,
    Sobrenome varchar(45) not null,
    endereço varchar(120) not null,
    idConta int,
    
    constraint PK_idPF primary key (idPF),
    constraint FK_idConta_PF FOREIGN KEY (idConta) references conta(idConta)
);

-- Tabela Pessoa Jurídica
create table if not exists PessoaJurídica(
	idPJ int not null,
    CNPJ char(14) not null,
    RazãoSocial varchar(45) not null,
    Endereço varchar(120) not null,
    idConta int,
	
	constraint PK_idPJ PRIMARY KEY (idPJ),
    constraint FK_idConta_PJ FOREIGN KEY (idConta) references conta(idConta),
    
	constraint UC_cnpj unique (CNPJ)
);

drop table Cliente;
-- Tabela Cliente
create table if not exists Cliente (
	idCliente int not null,
    nome varchar(45),
    Pagamento varchar(45),
    idPF INT,
    idPJ int,
    
    constraint PK_idCliente PRIMARY KEY (idCliente),
    constraint FK_Cliente_PF FOREIGN KEY (idPF) references PessoaFísica(idPF),
    constraint FK_Cliente_PJ FOREIGN KEY (idPJ) references PessoaJurídica(idPJ)
);


-- Tabela de Formas de Pagamento
create table if not exists FormaDePagamentos (
	FormaDePagamento ENUM('Pix', 'Cartão1', 'Cartão2', 'Boleto'),
	idCliente int,
    
    constraint PK_Pagamento PRIMARY KEY (FormaDePagamento),
    constraint FK_Pagamento_Cliente FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);

/*
constraint FK_Cliente_Pagamento FOREIGN KEY (Pagamento) references FormaDePagamentos(FormaDePagamento)

,
    constraint FK_Pagamento_Cliente FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
*/

-- Tabela de Rastreio
create table if not exists Rastreio(
	idRastreio int not null,
    statusRastreio enum('Em Processamento','Separado para Entrega', 'Saiu para Entrega', 'Entregue'),
    descrição varchar(120),
    
    constraint PK_Rastreio PRIMARY KEY (idRastreio)
);


-- Tabela de Pedidos
create table if not exists Pedido(
	idPedido int not null,
    Frete float,
    idCliente int,
    idRastreio int,
    
    constraint PK_Pedido PRIMARY KEY (idPedido),
    constraint FK_Pedido_Cliente FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente),
    constraint FK_Pedido_Rastreio FOREIGN KEY (idRastreio) REFERENCES Rastreio(idRastreio)
);

alter table Pedido add descrição varchar(45);

-- Tabela de Estoque
create table if not exists Estoque(
	idEstoque int not null,
    Endereço varchar(120) not null,
    
    constraint PK_Estoque PRIMARY KEY (idEstoque)
);

-- alter table Estoque Drop column Quantidade;
-- alter table Estoque add Quantidade int not null default 1;


-- Tabela de Fornecedor
create table if not exists Fornecedor(
	idFornecedor int not null,
    Endereço varchar(120) not null,
    CNPJ char(15) not null,
    contato char(11),
    
    constraint PK_Fornecedor PRIMARY KEY (idFornecedor),
    constraint UC_cnpj unique (CNPJ)
);

-- Tabela de Produto
create table if not exists Produto (
	idProduto int not null,
    categoria varchar(45),
    Descrição varchar(45),
    Valor float not null,
    
    constraint PK_Produto PRIMARY KEY (idProduto)
);

-- Vendedor / Terceiro
create table if not exists VendedorTerceiro (
	idTerceiro int not null,
    razãoSocial varchar(45) not null,
    endereço varchar(120) not null,
    CNPJ char(15) not null,
    CPF char(11),
    
    constraint PK_Terceiro PRIMARY KEY (idTerceiro),
    constraint UC_cnpj_cpf UNIQUE (CNPJ, CPF)
);




-- Produtos por vendedor
create table if not exists ProdutosVendedor (
	idPTerceiro int,
    idPProduto int,
    quantidade int default 1,
    
    constraint FK_Produtos_Terceiro FOREIGN KEY (idPTerceiro) REFERENCES VendedorTerceiro(idTerceiro),
    constraint FK_Produtos_Produto FOREIGN KEY (idPProduto) REFERENCES Produto(idProduto)
);

-- Produtos Estoque
create table if not exists ProdutoEstoque (
	idPEstoque int,
    idEstoque int, 
    quantidade int default 1,
    
    constraint FK_Produtos_Estoque FOREIGN KEY (idPEstoque) REFERENCES Produto(idProduto),
    constraint FK_Estoques_Produtos FOREIGN KEY (idEstoque) REFERENCES Estoque(idEstoque)
);

-- Fornecedor Produto
create table if not exists FornecedorProduto (
	idFornecedor int,
    idProdutos int,
    
    constraint FK_Fornecedor_disp_Produto FOREIGN KEY (idFornecedor) REFERENCES Fornecedor(idFornecedor),
    constraint FK_Produto_disp_Fornecedor FOREIGN KEY (idProdutos) REFERENCES Produto(idProduto)
);

alter table FornecedorProduto add quantidade int not null default 1;
-- alter table FornecedorProduto drop column Quantidade;

-- Produto Pedido
create table if not exists ProdutoPedido (
	idProdutos int,
    idPedido int,
    
    constraint FK_Produto_Pedido FOREIGN KEY (idProdutos) REFERENCES Produto(idProduto),
    constraint FK_Pedido_Produto FOREIGN KEY (idPedido) REFERENCES Pedido(idPedido)
);

alter table ProdutoPedido add quantidade int not null;

show tables;


-- show databases;
-- use information_schema;

-- select * from referential_constraints where CONSTRAINT_SCHEMA = 'ecommerce_refinado';