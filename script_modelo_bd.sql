create database estoque_alimentos;

use estoque_alimentos;

create table alimento(
	pk int not null auto_increment, primary key(pk), 
    nome varchar(255) not null
);

create table lote(
	pk int not null auto_increment, primary key(pk), 
    quantidade INT not null,
    data_vencimento date not null,
    codigo varchar(255) not null,
	pedido_fk int not null, foreign key (pedido_fk) references pedido (pk),
    alimento_fk int not null, foreign key (alimento_fk) references alimento (pk)
);

create table detalhe_pedido(
	pk int not null auto_increment, primary key(pk), 
    quantidade_solicitada int not null,
    valor double not null,
    status_entrega tinyint not null
);

create table pedido(
	pk int not null auto_increment, primary key(pk), 
    origem varchar(255) not null,
    data_pedido date not null,
    data_entrega date not null,
    detalhe_pedido_fk int not null, foreign key (detalhe_pedido_fk) references detalhe_pedido (pk)
);



select * from detalhe_pedido;

insert into alimento (nome) values ("leite");
insert into alimento (nome) value ("chá");
insert into alimento (nome) value ("pão");
insert into alimento (nome) value ("manteiga");
insert into alimento (nome) value ("queijo");

select * from detalhe_pedido;

insert into detalhe_pedido (quantidade_solicitada, valor, status_entrega) value (2, 27.50, "1");
insert into detalhe_pedido (quantidade_solicitada, valor, status_entrega) value (10, 30.00, "0");
insert into detalhe_pedido (quantidade_solicitada, valor, status_entrega) value (14, 50.10, "1");
insert into detalhe_pedido (quantidade_solicitada, valor, status_entrega) value (2, 27.50, "0");
insert into detalhe_pedido (quantidade_solicitada, valor, status_entrega) value (5, 60.50, "1");

insert into pedido (origem, data_pedido, data_entrega, detalhe_pedido_fk) value ("Brasil", "2024-08-01", "2024-08-06", 1);
insert into pedido (origem, data_pedido, data_entrega, detalhe_pedido_fk) value ("Brasil", "2024-10-01", "2024-10-15", 2);
insert into pedido (origem, data_pedido, data_entrega, detalhe_pedido_fk) value ("itália", "2024-12-11", "2025-01-06", 3);




