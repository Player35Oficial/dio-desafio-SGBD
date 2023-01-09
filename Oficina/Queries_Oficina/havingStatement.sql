use oficina;
/* HAVING Statement */

show tables;

/* Tabela de peças */
select * from tabeladepecas;

select count(*) as 'Tipos de Peças', avg(valorDaPeca) as 'Valor Médio', Categoria from tabeladepecas group by categoria having count(*) >= 2;


/* Mecânicos */
select * from mecanico;

select count(*) as 'Nº de Mecânicos', Especialidade from mecanico group by especialidade having count(*) <= 1;

/* Veículo */
select * from veiculo;
select idEquipe, count(*) 'Veículos sob responsabilidade da Equipe' from veiculo group by idEquipe having count(*) >= 2;









