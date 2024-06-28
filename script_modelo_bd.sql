create database estoque_alimentos;

use estoque_alimentos;

create table alimento(
	pk int not null auto_increment, primary key(pk), 
    nome varchar(255) not null,
    qtd int not null,
    perecivel  decimal(65) not null,
    vencimento int not null,
    lote_pk int not null, foreign key (lote_fk) references lote (pk),
    estoque_fk int not null, foreign key (estoque_fk) references estoque (pk),
    localArmazenamento_fk int not null, foreign key (localArmazenamento_fk) references localArmazenamento (pk)
);

create table lote(
	pk int not null auto_increment, primary key(pk), 
    numeracaolote varchar(255) not null
);

create table estoque(
	pk int not null auto_increment, primary key(pk), 
    capacidade int not null,
    pedido_fk int not null, foreign key (pedido_fk) references pedido (pk)
);

create table localarmazenamento(
	pk int not null auto_increment, primary key(pk), 
    nome varchar(255) not null,
    prateleira varchar(45),
    freezer varchar(45),
    geladeira varchar(45)
);


create table detalhepedido(
	pk int not null auto_increment, primary key(pk), 
    nome varchar(255) not null,
    qtd int not null,
    valorbase int not null,
    valortotal int not null,
    gastototal int not null
);

create table pedido(
	pk int not null auto_increment, primary key(pk), 
    cabecalho varchar(255) not null,
    detalhepedido_fk int not null, foreign key (detalhepedido_fk) references detalhepedido (pk)
);

 insert into alimento (nome, qtd, perecivel, vencimento) values ("pastel", 15, 56789, '2024-12-25');




