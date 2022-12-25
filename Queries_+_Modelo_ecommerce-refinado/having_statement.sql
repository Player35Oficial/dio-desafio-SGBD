select * from cliente;

select * from cliente where idPF group by idCliente having idCliente >= 4;


select * from produto;

-- selecionar os produtos entre eletrodomésticos e eletrônicos, agrupados por valor que esteja acima de 1500, ordenando pelo ID;
select * from produto where categoria like 'Eletrodomésticos' or categoria like 'Eletrônicos' group by valor having valor > 1500 order by idProduto;


