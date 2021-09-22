create database vb_cell;

use vb_cell;

CREATE TABLE if not exists dadoscliente (
  idcliente int(11) NOT NULL AUTO_INCREMENT,
  nomesobrenome varchar(30) DEFAULT NULL,
  telefone varchar(18) DEFAULT NULL,
  ano_cadastro year(4) DEFAULT NULL,
  documento varchar(30) DEFAULT NULL,
  PRIMARY KEY (idcliente)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

create table if not exists celularcliente(
idcliente int,
modelo varchar(45),  
servico varchar (70),
data_servico date,
primary key (modelo),
foreign key (idcliente) references dadoscliente (idcliente)
)default charset = utf8;

select * from dadoscliente;

select * from celularcliente;

select * from dadoscliente d
join celularcliente c
on d.idcliente = c.idcliente
order by nomesobrenome;

select d.nomesobrenome, c.modelo, c.servico, c.observacao from dadoscliente d
join celularcliente c
on d.idcliente = c.idcliente;


select d.nomesobrenome, c.modelo, c.data_servico, c.observacao   from dadoscliente d
join celularcliente c
on d.idcliente = c.idcliente
where c.data_servico > '2020-12-31'
order by nomesobrenome, data_servico desc;
