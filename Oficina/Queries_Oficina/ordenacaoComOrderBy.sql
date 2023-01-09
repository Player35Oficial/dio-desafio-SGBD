
/* Tabela de Peças */
select * from tabeladepecas;
select * from tabeladepecas where valorDaPeca <= 1500 order by (valorDaPeca) desc;

-- Ordenação pelas colunas
select * from tabeladepecas order by peca;

select * from tabeladepecas order by idpeca;

select * from tabeladepecas order by categoria;

-- Ordenação pelas peças que são kits, ordenadas pelo valor de maneira descendente
select * from tabeladepecas where peca like 'kit%' order by valorDaPeca desc;

/* Ordem de Serviço */

select * from ordemdeservico;



select idOrdemDeServico as ID, date_format(dataDeEmissao, "%d/%m/%Y") as 'Data de Emissão', concat('R$ ', valor) as Valor, statusDeServico as 'Status', date_format(dataDeConclusao, "%d/%m/%Y") as 'Data de Conclusão', autorizacaoCliente as 'Autorização'
	from ordemdeservico ORDER BY dataDeEmissao;

select idOrdemDeServico as ID, date_format(dataDeEmissao, "%d/%m/%Y") as 'Data de Emissão', concat('R$ ', valor) as Valor, statusDeServico as 'Status', date_format(dataDeConclusao, "%d/%m/%Y") as 'Data de Conclusão', autorizacaoCliente as 'Autorização'
	from ordemdeservico ORDER BY autorizacaoCliente;

select idOrdemDeServico as ID, date_format(dataDeEmissao, "%d/%m/%Y") as 'Data de Emissão', concat('R$ ', valor) as Valor, statusDeServico as 'Status', date_format(dataDeConclusao, "%d/%m/%Y") as 'Data de Conclusão', autorizacaoCliente as 'Autorização'
	from ordemdeservico ORDER BY valor desc;


/* Mecânico */
select * from mecanico;

select idMecanico as 'ID', nome as 'Nome', especialidade as Especialidade from mecanico order by especialidade;

select idMecanico as 'ID', nome as 'Nome', especialidade as Especialidade from mecanico order by Nome;

select idMecanico as 'ID', nome as 'Nome', especialidade as Especialidade from mecanico order by ID;


select idMecanico as 'ID', nome as 'Nome', especialidade as Especialidade from mecanico group by Especialidade having especialidade like 'Transmissão';



