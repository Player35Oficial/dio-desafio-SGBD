select * from rastreio;
select * from pedido;
show tables;
-- numero de clientes
select count(*) as numeroDeClientes from cliente;

-- numero de pedidos
select count(*) as Pedidos from pedido;

-- numero de clientes PF
select count(*) as ClientesPF from cliente where idPF;

-- numero de clientes PJ
select count(*) as ClientesPJ from cliente, pedido p where idPJ = p.idCliente;

-- Variedade de Legumes, frutas, eletrônicos, eletrodomésticos, Decoração
select count(*) as tiposDeLegumes from produto where categoria = 'Legumes';

select count(*) as tiposDeFrutas from produto where categoria = 'Frutas';

select count(*) as tiposDeEletrônicos from produto where categoria = 'Eletrônicos';

select count(*) as tiposDeEletrodomésticos from produto where categoria = 'Eletrodomésticos'; 

select count(*) as itensDeDecoração from produto where categoria = 'Decoração';

-- Quantas vezes um produto X (241) é pedido e a quantidade média
select count(*) as Requisições, round(AVG(quantidade), 1) as Quantidade from produtopedido where idProdutos = 1;