# database_clientdata
criação de um banco de dados para cadastro de clientes em uma assistência técnica



através do codigo no proximo arquivo, conseguimos criar um banco de dados para uma loja/assistência técinica de celulares com o MySQL, sendo possivel: 

1. fazer o registro do cliente com nome, numero de telefone e documento
2. ficha do aparelho deixado para conserto com atributos como: modelo, tipo do serviço, data e observações
3. localizar o cliente através de um id unico por cliente.

Facilitando muito o trabalho do usuário final.

Alguns tipos de select foram usados para demonstração, tais como:

select * from dadoscliente; 
(apresenta todos os dados do cliente)

select * from celularcliente; 
(apresenta dados de todos os aparelhos deixados na loja)

select * from dadoscliente d
join celularcliente c
on d.idcliente = c.idcliente
order by nomesobrenome;
(apresenta todos os dados do cliente e de seus respectivos celulares deixados na loja)

select d.nomesobrenome, c.modelo, c.servico, c.observacao from dadoscliente d
join celularcliente c
on d.idcliente = c.idcliente;
(filtra apenas por nome e sobrenome, modelo do celular, serviço a ser feito e observação)


select d.nomesobrenome, c.modelo, c.data_servico, c.observacao   from dadoscliente d
join celularcliente c
on d.idcliente = c.idcliente
where c.data_servico > '2020-12-31'
order by nomesobrenome, data_servico desc;
(filtra apenas por nome e sobrenome, modelo do celular, data do serviço e observação, tais que foram deixados na loja a partir de 2021.
Organizados também por nome e por data decrescente)
