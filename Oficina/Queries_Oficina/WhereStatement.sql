show tables;

/* MECÂNICO */

select * from mecanico;
select idMecanico, nome, especialidade, idEquipe from mecanico where especialidade like 'Transmissão';
select idMecanico, nome, especialidade, idEquipe from mecanico where especialidade like 'Transmissão' or especialidade like 'Amortecedores';
select idMecanico, nome, especialidade, idEquipe from mecanico where especialidade like 'Transmissão' or especialidade like 'Amortecedores' or especialidade like 'Motor';

/* SERVIÇOS */

select * from servicos;
select idServico, servico, descricao from servicos where servico like 'revisão periódica';
select idServico, servico, descricao from servicos where servico like 'Manutenção';

/* REFERÊNCIA DE MÃO DE OBRA */

select * from referenciamaodeobra;
select idReferenciaMaoDeObra as 'ID Referencial', descricao as 'Descrição', categoria 'Categoria', valor 'Valor'
	from referenciamaodeobra 
	where valor <= 1000;
    

/* ORDEM DE SERVIÇO */

select * from ordemdeservico;
select idOrdemDeServico 'ID - OS', date_format(`dataDeEmissao`, '%d/%m/%Y') as 'Data de Emissão',date_format(`dataDeConclusao`, '%d/%m/%Y') as 'Data de Conclusão', statusDeServico as 'Status', valor 'Valor', autorizacaoCliente as 'Cliente' 
from ordemdeservico 
where autorizacaoCliente like 'Autorizado';

select idOrdemDeServico 'ID - OS', date_format(`dataDeEmissao`, '%d/%m/%Y') as 'Data de Emissão',date_format(`dataDeConclusao`, '%d/%m/%Y') as 'Data de Conclusão', statusDeServico as 'Status', concat("R$ ", round(valor, 2) ) as 'Valor', autorizacaoCliente as 'Cliente' 
from ordemdeservico 
where autorizacaoCliente like 'Autorizado';

/* TABELA DE PEÇAS */
show tables;

select * from tabeladepecas;
select * from tabeladepecas where peca like 'kit%';


select idPeca, peca, valorDaPeca, categoria 
	from tabeladepecas 
    where valorDaPeca <= 500 and peca like 'kit%';

select idPeca, peca, valorDaPeca, categoria 
	from tabeladepecas 
    where valorDaPeca >= 500 and peca like 'kit%';

select idPeca as ID, peca as 'Peça', concat('R$ ', valorDaPeca) as 'Valor', categoria 
	FROM tabeladepecas where valordapeca <= 1500;


select * from ordemdeservico;
-- select distinct c.idPeca, tb.peca, tb.valorDaPeca, tb.categoria from ordemDeServico os, compoe c, tabeladepecas tb where os.idOrdemDeServico = c.idOrdemDeServico;

select * from compoe;
