-- Inserir PF's

use ecommerce_refinado;
show tables;
desc pessoafísica;

select * from conta;


insert into pessoaFísica values (1, 12345678911, '2003-11-17', "Yuri", "G.", "Santana", "Rua Epaminondas 23, Jardim Das Rosas - Embu das Artes, SP", 1);
insert into pessoaFísica values (2, 98765432111, '2007-11-17', "Ana", "F.", "Holanda", "Rua Catapimbas 56, Jardim Da Pátria - Tangamandápio, SP", 2);

insert into pessoaFísica values	(3, 98764222112, '2001-02-23', "Chiara", "C.", "Orlandi", "Rua Pamonha 01, Jardim Das Flores - Pintópolis, SP", 3),
								(4, 45825432124, '2002-05-17', "Roberta", "S.", "Carbonari", "Rua Bacalhau 26, Jardim Novo Jardim - Piracicaba, SP", 4),
                                (5, 11265435438, '1998-01-09', "Rebecca", "H.", "Bittencourt", "Avenida Melancia 595, Jardim Da Luz - Capão Redondo, SP", 5),
                                (6, 62435432145, '1997-09-07', "Natalia", "P.", "da Silva", "Estrada do Porto 245, Jardim Escolar - Jundiaí, SP", 6),
                                (7, 98438762122, '1987-10-12', "Ana Luiza", "T.", "Carvalho", "Avenida Bom Paraíso 12, Vila Do Socorro - São Bernardo do Campo, SP", 7),
                                (8, 98762432117, '2001-06-30', "Luana", "B.", "de Jesus", "Rua João Paulo 56, Jardim Ibirapuera - Itapecerica da Serra, SP", 8),
                                (9, 98742432113, '2000-08-01', "Aylla", "S.", "Gomes", "Rua Campos de Fora 59, Jardim Targoniano - Joinville, SP", 9),
                                (10, 45662742115, '1995-07-23', "Suellen", "C.", "Bergold", "Rua Desespero 127, Jardim Celeste - Campinas, SP", 10);

select * from pessoaFísica;