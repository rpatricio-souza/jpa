reate schema avaliacao;
use avaliacao;
create table pro_professor (
pro_id bigint unsigned primary key auto_increment,
pro_nome_usuario varchar(50) not null,
pro_senha varchar(50) not null,
pro_titulo varchar(10),
constraint pro_nome_usuario_uk unique (pro_nome_usuario)
);
create table alu_aluno (
alu_id bigint unsigned primary key auto_increment,
alu_nome_usuario varchar(50) not null,
alu_senha varchar(50) not null,
alu_ra bigint unsigned not null,
constraint alu_nome_usuario_uk unique (alu_nome_usuario),
constraint alu_ra_uk unique (alu_ra)
);
create table tra_trabalho (
tra_id bigint unsigned primary key auto_increment,
tra_titulo varchar(50) not null,
tra_data_hora_entrega datetime not null,
tra_local_arquivo varchar(200) not null,
pro_avaliador_id bigint unsigned,
constraint tra_pro_fk foreign key (pro_avaliador_id)
references pro_professor (pro_id)
);
create table ent_entrega (
alu_id bigint unsigned,
tra_id bigint unsigned,
primary key (alu_id, tra_id),
constraint ent_alu_fk foreign key (alu_id)
references alu_aluno (alu_id),
constraint ent_tra_fk foreign key (tra_id)
references tra_trabalho (tra_id)
);
