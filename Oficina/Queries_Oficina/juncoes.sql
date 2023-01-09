use oficina;
/* Junções */

show tables;
-- Pensar: Quais junções seriam interessantes? 

-- Tabela de peças e a composição da OS;

select * from compoe;
select * from tabeladepecas;

select idPeca as ID, peca as Descrição, Quantidade, valorDaPeca, (quantidade *valorDaPeca) as Custo from compoe inner join tabeladepecas using (idPeca);

select idPeca as ID, peca as Descrição, Quantidade, concat('R$ ', round(valorDaPeca, 2)) as Valor, concat('R$ ',(quantidade *valorDaPeca)) as Custo from compoe inner join tabeladepecas using (idPeca);

-- Servicos e a OS

select * from oferece;
select * from servicos;

select idServico, servico, descricao from servicos inner join oferece using (idServico);

-- Servicos e a Referência de Mão de Obra; 
select * from referenciamaodeobra;

select idServico, servico, s.descricao, categoria, valor from servicos as s
	inner join oferece using (idServico)
    inner join referenciamaodeobra using (idReferenciaMaoDeObra);
    
select idServico, servico, s.descricao, categoria, valor from servicos as s
	inner join oferece using (idServico)
    inner join referenciamaodeobra using (idReferenciaMaoDeObra) where valor < 5000;
    
select idServico as ID, servico as Serviço, s.descricao as Descrição, Categoria, concat('R$ ', valor) as Valor from servicos as s
	inner join oferece using (idServico)
    inner join referenciamaodeobra using (idReferenciaMaoDeObra) where valor < 5000;

-- a OS, os Serviços e a referência de Mão de Obra

select * from ordemdeservico;
select * from servicos;
select * from oferece;
select * from referenciamaodeobra;


select os.idOrdemDeServico, statusDeServico, idServico, servico from ordemdeservico as os 
inner join oferece using (idOrdemDeServico)
inner join servicos using (idServico)
;
-- ---------------------------------------

select os.idOrdemDeServico, statusDeServico, idServico, servico, s.descricao, categoria, rf.valor from ordemdeservico as os 
inner join oferece using (idOrdemDeServico)
inner join servicos as s using (idServico)
inner join referenciamaodeobra as rf using(idReferenciaMaoDeObra)
;

-- ---------------------------------------
/* 
date_format(dataDeEmissao, "%d/%m/%Y") as 'Data de Emissão'
date_format(dataDeConclusao, "%d/%m/%Y") as 'Data de Conclusão'
*/

select os.idOrdemDeServico as 'ID - OS', date_format(dataDeEmissao, "%d/%m/%Y") as 'Data de Emissão', date_format(dataDeConclusao, "%d/%m/%Y") as 'Data de Conclusão',
		statusDeServico, idServico, servico, s.descricao, categoria, concat('R$ ', rf.valor) as 'R$ de Serviços' from ordemdeservico as os 
			inner join oferece using (idOrdemDeServico)
			inner join servicos as s using (idServico)
			inner join referenciamaodeobra as rf using(idReferenciaMaoDeObra)
;

-- ---------------------------------------

select distinct os.idOrdemDeServico as 'ID - OS', date_format(dataDeEmissao, "%d/%m/%Y") as 'Data de Emissão', date_format(dataDeConclusao, "%d/%m/%Y") as 'Data de Conclusão',
		statusDeServico, idServico, servico, s.descricao, categoria, concat('R$ ', rf.valor) as 'R$ de Serviços' from ordemdeservico as os 
			inner join oferece using (idOrdemDeServico)
			inner join servicos as s using (idServico)
			inner join referenciamaodeobra as rf using(idReferenciaMaoDeObra)

;


select * from tabeladepecas;
select * from compoe;

-- retornar a soma dos valores de das peças, por OS;
select distinct (valordapeca * quantidade) as 'Valor na OS' from compoe inner join tabeladepecas using(idPeca);

-- Precisa de Estudo
/*
select distinct os.idOrdemDeServico as 'ID - OS', date_format(dataDeEmissao, "%d/%m/%Y") as 'Data de Emissão', date_format(dataDeConclusao, "%d/%m/%Y") as 'Data de Conclusão',
		statusDeServico, idServico, servico, s.descricao, rf.categoria, concat('R$ ', rf.valor) as 'R$ de Serviços', concat('R$ ', (tb.valordapeca * quantidade)) as 'R$ de Peças', concat('R$ ', os.valor) as Total from ordemdeservico as os
			inner join oferece using (idOrdemDeServico)
			inner join servicos as s using (idServico)
			inner join referenciamaodeobra as rf using(idReferenciaMaoDeObra)
			inner join compoe using (idOrdemDeServico)
            inner join tabeladepecas as tb using (idPeca);


select * from oferece;
select count(*) from oferece where idOrdemDeServico = 1;

*/




select * from ordemdeservico;
select * from avaliaexecuta;
select * from equipe;


select os.idOrdemDeServico as 'ID - OS', ae.idEquipe as 'Equipe Responsável',  dataDeEmissao, statusDeServico, autorizacaoCliente from avaliaexecuta ae	
	inner join ordemdeservico os
    where os.idOrdemDeServico = ae.idOrdemDeServico;























