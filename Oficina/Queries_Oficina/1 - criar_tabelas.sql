drop database oficina;
create DATABASE if not exists oficina;
use oficina;



create table if not exists cliente (
	idCliente int PRIMARY KEY NOT NULL
);

create table if not exists equipe (
	idEquipe int PRIMARY KEY NOT NULL
);

create table if not exists mecanico (
	idMecanico int PRIMARY KEY NOT NULL,
    nome varchar (45) NOT NULL,
    endereco varchar (120) NOT NULL,
    especialidade varchar (45) NOT NULL,
    idEquipe int NOT NULL,
    
    constraint FK_mecanico_equipe FOREIGN KEY (idEquipe) references equipe(idEquipe)
);

create table if not exists veiculo (
	idVeiculo int PRIMARY KEY NOT NULL,
    idCliente int NOT NULL,
    idEquipe int NOT NULL,
    
    constraint FK_veiculo_cliente FOREIGN KEY (idCliente) references cliente(idCliente),
    constraint FK_veiculo_equipe FOREIGN KEY (idEquipe) references equipe(idEquipe)
);

create table if not exists ordemDeServico (
	idOrdemDeServico int PRIMARY KEY NOT NULL,
    dataDeEmissao date NOT NULL,
    valor FLOAT NOT NULL,
    statusDeServico ENUM("Aberto", "Ajuste", "Revisão", "Confirmado", "Andamento", "Encerrado", "Cancelada"),
    dataDeConclusao date NOT NULL,
    autorizacaoCliente ENUM("Autorizado", "Não Autorizado")
);

create table if not exists tabelaDePecas (
	idPeca CHAR(4) PRIMARY KEY NOT NULL,
    peca varchar (120) NOT NULL,
    valorDaPeca FLOAT NOT NULL,
    categoria varchar (45) NOT NULL,
    disponibilidade ENUM ("Em Estoque", "Em Falta") NOT NULL
);

create table if not exists referenciaMaoDeObra (
	idReferenciaMaoDeObra int PRIMARY KEY NOT NULL,
    descricao varchar(120) NOT NULL,
    categoria varchar(45) NOT NULL,
    valor FLOAT NOT NULL
);

create table if not exists servicos (
	idServico char (4) PRIMARY KEY NOT NULL,
    servico ENUM ("Manutenção", "Revisão Periódica") NOT NULL,
    descricao varchar(120) NOT NULL,
    idReferenciaMaoDeObra int NOT NULL,
    
    CONSTRAINT FK_servicos_refMaoDeObra FOREIGN KEY (idReferenciaMaoDeObra) references referenciaMaoDeObra(idReferenciaMaoDeObra)
);

/* N:M */

/* AVALIA E EXECUTA */
create table if not exists avaliaExecuta (
	idEquipe int not null,
    idOrdemDeServico int not null,
    
    CONSTRAINT FK_equipe_ordemDeServico FOREIGN KEY (idEquipe) references equipe(idEquipe),
    CONSTRAINT FK_ordemDeServico_equipe FOREIGN KEY (idOrdemDeServico) references ordemDeServico (idOrdemDeServico)
);

/* OFERECE */
create table if not exists oferece (
	idOrdemDeServico int not null,
    idServico char(4) not null,
    
    CONSTRAINT FK_servico_ordemDeServico FOREIGN KEY (idServico) references servicos(idServico),
    CONSTRAINT FK_ordemDeServico_servico FOREIGN KEY (idOrdemDeServico) references ordemDeServico (idOrdemDeServico)
);

/* Compõe */
create table if not exists compoe (
	idOrdemDeServico int not null,
    idPeca CHAR(4) not null,
    quantidade int not null, 
    
    CONSTRAINT FK_tabela_ordemDeServico FOREIGN KEY (idPeca) references tabelaDePecas(idPeca),
    CONSTRAINT FK_ordemDeServico_tabela FOREIGN KEY (idOrdemDeServico) references ordemDeServico(idOrdemDeServico)
);

show tables;