/*drop database dbinfox;
create database dbinfox
default character set utf8
default collate utf8_general_ci;
use dbinfox;*/

/*drop table tbusuarios;*/
create table tbusuarios(
iduser					int not null,
usuario					varchar(50)	not null,
fone					varchar(15),
login					varchar(15) not null unique,	
senha					varchar(15) not null,
constraint pk_iduser	primary key (iduser)
)default charset = utf8;

describe tbusuarios;
select * from tbusuarios;
insert into tbusuarios ( iduser, usuario, fone, login, senha )
		values		( 1, 'josé de assis', '9999-9999', 'joseassis', '123456');
insert into tbusuarios ( iduser, usuario, fone, login, senha )
		values		( 2, 'Administrador', '9999-9999', 'admin', 'admin');
insert into tbusuarios ( iduser, usuario, fone, login, senha )
		values		( 3, 'Bill Gates', '9999-9999', 'bill', '123456');

/*update tbusuarios set fone = '8888-8888' where iduser = 2;
delete from tbusuarios where iduser = 3; */

//////////////////////////////////////////////////////////////////////////////////////
/*drop table tbclientes;*/
select * from tbclientes;
create table tbclientes(
idcli					int not null auto_increment,
nomecli					varchar(50)	not null,
endcli					varchar(100),
fonecli					varchar(50)	not null,
emailcli				varchar(50),
constraint pk_idcli		primary key (idcli)
)default charset = utf8;

insert into tbclientes (nomecli,endcli,fonecli,emailcli)
		values		('Linus Torvalds','Rua Tux, 2015','9999-9999','linus@linux.com');

select idcli,nomecli,fonecli from tbclientes where nomecli like 'j%';

select idcli as Id, nomecli as Nome, fonecli as Fone from tbclientes where nomecli like 'j%';
//////////////////////////////////////////////////////////////////////////////////////////////
--drop table tbos
select * from tbos;
create table tbos(
os						int primary key identity(1,1),
data_os					DATETIME NOT NULL	DEFAULT CURRENT_TIMESTAMP,
tipo					varchar(15) not null,
situacao				varchar(15) not null,
equipamento				varchar(150) not null,
defeito					varchar(150) not null,
servico					varchar(150),
tecnico					varchar(30),
valor					decimal(10,2),
idcli					int not null,
constraint fk_OsCli		foreign key (idcli) references tbclientes (idcli)
)

--ALTER TABLE tbos ADD tipo VARCHAR(15) NOT NULL AFTER data_os
--ALTER TABLE tbos ADD tipo VARCHAR (15);
--ALTER TABLE tbos ADD situacao VARCHAR (20);
////////////////////////////////////////////////////////////////////////////
--ALTER TABLE tbos MODIFY tipo VARCHAR NOT NULL;
/////////////////////////////////////////////////////////////////////////////////////////////////
insert into tbos (tipo,situacao,equipamento,defeito,servico,tecnico,valor,idcli)
values			('','','Notebook','não liga','troca da fonte','linus',87.50,1);
/////////////////////////////////////////////////////////////////////////////////////////////////
 UPDATE tbos 
 SET tipo = 'Odrem de Serviço', situacao = 'Aprovado'
 WHERE os = 6;

select
O.os, equipamento, defeito, servico, valor,
C.nomecli, fonecli
from tbos as O
inner join tbclientes as C
on (O.idcli = c.idcli);









