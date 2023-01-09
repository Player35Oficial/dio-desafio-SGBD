use oficina;

show tables;

select * from cliente;
select * from veiculo;
select * from mecanico;
select idMecanico, nome, especialidade from mecanico;

select * from ordemdeservico;
select idOrdemDeServico, statusDeServico, valor, autorizacaoCliente from ordemdeservico;

select * from tabeladepecas;
select idPeca, valorDaPeca, categoria, disponibilidade from tabeladepecas;

select * from servicos;
select idServico, idReferenciaMaoDeObra, descricao from servicos;

select * from referenciamaodeobra;
select categoria, valor, idReferenciaMaoDeObra from referenciamaodeobra;


select * from compoe;








