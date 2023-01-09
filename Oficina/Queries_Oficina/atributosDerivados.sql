-- Dados adquiridos a partir de outros dados. Ex.: a idade que pode ser obtida através de uma operação com a data de nascimento.
/* Obs: Tenho dificuldades para definir o que são atributos derivados */
select * from tabeladepecas;
select * from compoe;

-- numero de peças
select count(*) as 'Peças Diferentes' from tabeladepecas;

-- numero de Ordens de Serviço
select count(*) as 'Ordens de Serviço' from ordemdeservico;

-- serviços oferecidos
select count(*) as 'Tipos de Serviço' from servicos;

-- Tarefas de mão de obra
select count(*) as Servicos from servicos;



-- veículos
select count(*) as Veículos from veiculo;

-- equipes
select count(*) as Equipes from equipe;


-- o valor total de cada Solicitação nos pedidos para OS
select c.idOrdemDeServico, c.idPeca, c.quantidade, (tb.valorDaPeca * c.quantidade) as Total from compoe c, tabeladepecas tb where c.idPeca = tb.idPeca;


select * from ordemdeservico;
select * from oferece;
select * from servicos;
select * from referenciamaodeobra;
-- o valor total de cada servico prestado na os









