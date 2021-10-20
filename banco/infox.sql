/**
 * Sistema para gestão de Serviços
 *
 * @author Professor José de Assis
 * @version 1.1
 */
 
create database dbinfox;
use dbinfox;

create table tbusuarios(
	iduser int primary key,
    usuario varchar(15) not null,
    fone varchar(15),
    login varchar(15) not null unique,
    senha varchar(250) not null,
    perfil varchar(20) not null
);

-- usuário restrito (uso interno)
insert into tbusuarios(iduser,usuario,login,senha,perfil)
values(1,'Administrador','admin',md5('admin'),'admin');

create table tbclientes(
	idcli int primary key auto_increment,
    nomecli varchar(50) not null,
    endcli varchar(100),
    fonecli varchar(15) not null,
    emailcli varchar(50) unique
);

create table tbos(
	os int primary key auto_increment,
    data_os timestamp default current_timestamp,
    tipo varchar(15) not null,
    situacao varchar(20) not null,
    equipamento varchar(150) not null,
    defeito varchar(150),
    servico varchar(150),
    tecnico varchar(30),
    valor decimal(10,2),
    idcli int not null,
    foreign key(idcli) references tbclientes(idcli)
);

-- relatório 1 (clientes)
select * from tbclientes order by nomecli;

-- relatório 2 (serviços)
select 
tbos.os as OS,date_format(tbos.data_os,'%d/%m/%Y') as data,
tbos.equipamento,tbos.servico as serviço,tbos.situacao as status,tbos.valor,
tbclientes.nomecli as cliente,tbclientes.fonecli as fone
from tbos inner join tbclientes on tbos.idcli = tbclientes.idcli
order by situacao;

-- impressão da OS
select 
tbos.os as OS,date_format(tbos.data_os,'%d/%m/%Y - %H:%i') as data,
tbos.tipo as tipo_OS,tbos.equipamento,tbos.defeito,
tbos.servico as serviço,tbos.valor,
tbclientes.nomecli as cliente,tbclientes.fonecli as fone
from tbos inner join tbclientes on tbos.idcli = tbclientes.idcli
where os=1;