show tables;

use ecommerce_refinado;

select * from fornecedor;
select * from vendedorterceiro;
select * from fornecedorproduto;

select * from produto;
-- select idFornecedor, idProduto from fornecedor inner join fornecedorproduto on fornecedor.idFornecedor = fornecedorproduto.idFornecedor;

/* ===================== Queries relacionadas a produtos (E fornecedores( ===================== */


/* Junção entre 2 tabelas (produto e fornecedorProduto) */
-- selecionar produtos com descrição, categoria e quantidade e seu fornecedor com base no id;
select p.descrição, p.categoria, fp.quantidade, fp.idFornecedor
	from produto as p join fornecedorproduto fp
    on p.idProduto = fp.idProdutos order by categoria;

/* Junção entre 3 tabelas (produto, fornecedorProduto e fornecedor) */
-- selecionar produtos com descrição, categoria e quantidade e seu id de fornecedor + contato;
select p.descrição, p.categoria, fp.quantidade, fp.idFornecedor, f.contato, f.endereço
	from produto as p join fornecedorproduto fp join fornecedor f
    on p.idProduto = fp.idProdutos and fp.idFornecedor = f.idFornecedor order by categoria;


/* Filtrar a tabela anterior com base em categoria (where), usando uma ou mais categorias */
select p.descrição, p.categoria, fp.quantidade, fp.idFornecedor, f.contato, f.endereço
	from produto as p join fornecedorproduto as fp join fornecedor as f
    on p.idProduto = fp.idProdutos and fp.idFornecedor = f.idFornecedor 
    where categoria like 'Legumes%' or categoria like 'Frutas' /* or categoria like 'Eletrônicos' */
    order by categoria;

/* Esta seria uma maneira mais legível de fazer a junção entre as tabelas
select p.descrição, p.categoria, fp.quantidade, fp.idFornecedor, f.contato, f.endereço
	from produto as p  inner join fornecedorproduto as fp 
    on p.idProduto = fp.idProdutos 
	inner join fornecedor as f
    on fp.idFornecedor = f.idFornecedor
    where categoria like 'Legumes%' or categoria like 'Frutas' /* or categoria like 'Eletrônicos'
    order by categoria;
*/

-- uma seleção dos produtos com descrição, categoria, quantidade, vendededor terceirizado e seu endereço
select fp.idPProduto as ID, p.descrição as Descrição, p.categoria, fp.quantidade as Qtd, fp.idPTerceiro as "ID Terceiro", f.endereço as Endereço
	from produto as p join produtosvendedor fp join vendedorTerceiro f
    on p.idProduto = fp.idPProduto and fp.idPTerceiro = f.idTerceiro order by idPProduto;


/* ===================== Conta, Cliente e PF/PJ ===================== */
select * from cliente;
select * from conta;
select * from pessoaFísica;
select * from pessoajurídica;

-- para obter email, nome, cpf e ID das pessoas efetivamente cadastradas (PF)
select c.email, concat(Pnome, ' ', Sobrenome) as nome, pf.CPF, clt.idPF
	from conta as c inner join pessoaFísica as pf using (idConta)
    inner join cliente as clt using (idPF);

-- Contexto PJ
select c.email, RazãoSocial as 'Razão Social', pj.CNPJ, clt.idPJ
	from conta as c inner join pessoaJurídica as pj using (idConta)
    inner join cliente as clt using (idPJ);


show tables;

select * from cliente;
select * from pedido; 
select * from rastreio;

-- Uma tabela que traga a relação do cliente (ID, Nome, Forma de Pagamento) pedido (ID, Descrição) e rastreio (ID, Status)
select idCliente as "ID do Cliente", nome as Nome, Pagamento as "Método de Pagamento", idPedido as "ID de Pedido", p.descrição "Descrição", idRastreio as "ID Rastreio", statusRastreio as "Status de Rastreio" from cliente
	inner join pedido as p using (idCliente) 
    inner join rastreio using (idRastreio);
    
select * from estoque;