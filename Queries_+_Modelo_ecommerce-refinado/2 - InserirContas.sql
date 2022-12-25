-- Inserir Contas
-- id (int), email (45), senha (45)

show databases;
use ecommerce_refinado;
show tables;
desc conta;

select * from conta;
-- PF's
insert into conta (idConta, email, senha)
	values (DEFAULT, "email@dominio.com", "123456789");
    
insert into conta values (default, "email2@dominio.com","987654321");
insert into conta
	values 
		(default, "chichi3@dominio.com","Chiara321"),
        (default, "email4@dominio.com","97154321"),
        (default, "becca5@dominio.com","98rebecca"),
        (default, "email6@dominio.com","987656821"),
        (default, "aninha7@dominio.com","ana54321"),
        (default, "luzita8@dominio.com","9876luiza"),
        (default, "aylla_b9@dominio.com","aylla4321"),
        (default, "sulle10@dominio.com","98suellen");

-- PJ's
insert into conta
	values 
        (default, "comercio@dominio.com","98vendas"),
        (default, "comercio2@dominio.com","98produtos"),
        (default, "comercio3@dominio.com","senhasenha"),
        (default, "comercio4@dominio.com","umasenhasegura");
