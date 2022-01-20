/*drop database dbinfox;
create database dbinfox
default character set utf8
default collate utf8_general_ci;*/

use dbinfox;

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

--//////////////////////////////////////////////////////////////////////////////////////
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

select * from tbclientes order by nomecli;
--//////////////////////////////////////////////////////////////////////////////////////////////
--drop table tbos
select * from tbos;
create table tbos(
os						int primary key identity(1,1),
data_os					DATETIME NOT NULL	DEFAULT CURRENT_TIMESTAMP,
tipo					varchar(30) not null,
situacao				varchar(30) not null,
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
values			('Odrem de Serviço','Aprovado','Notebook','não liga','troca da fonte','linus',87.50,1);

insert into tbos (tipo,situacao,equipamento,defeito,servico,tecnico,valor,idcli)
values			('Orçamento','Reprovado','Notebook','não liga','troca da fonte','linus',97.50,3);

insert into tbos (tipo, situacao, equipamento, defeito, servico, idcli)
values			('Orçamento', 'Aguardando Aprovação', 'Desktop', 'Não liga', 'Análise', 4);

insert into tbos (tipo, situacao, equipamento, defeito, servico, idcli)
values			('Odrem de Serviço', 'Aguardando Visita Técnica', 'Notebook', 'Não liga', 'Análise', 6);

insert into tbos (tipo, situacao, equipamento, defeito, servico, idcli)
values			('Orçamento', 'Aguardando Agendamento', 'Tablet', 'Não liga', 'Análise', 7);

insert into tbos (tipo, situacao, equipamento, defeito, servico, idcli)
values			('Odrem de Serviço', 'Abandonado pelo Cliente', 'Notebook', 'Não liga', 'Análise', 8);
---///////////////////////////////////////////////////////////////////////////////////////////////
UPDATE tbos 
SET tipo = 'Orçamento', tecnico = 'João', valor = 40.90
WHERE os = 3
---///////////////////////////////////////////////////////////////////////////////////////////////
select
O.os, data_os, tipo, equipamento, defeito, servico, valor,
C.nomecli, fonecli
from tbos as O
inner join tbclientes as C
on (O.idcli = c.idcli);
---///////////////////////////////////////////////////////////////////////////////////////////////
select * from tbos;
select os, 
	 FORMAT(data_os, 'dd/MM/yyyy - hh:mm', 'pt-BR'),
	tipo,
	situacao,
	equipamento,
	defeito,
	servico,
	tecnico,
	valor,
	idcli
from tbos
WHERE os = 3
/*	tipo, 
	equipamento, 
	defeito, 
	servico, 
	valor,
--SELECT FORMAT(getdate(), 'dd/MM/yyyy - hh:mm', 'pt-BR' )
--SELECT FORMAT(data, 'dd-mm-yyyy hh:mm:ss')
--/////////////////////////////////////////////////////////////////////////////////////////////// */
select 
	OSER.os, data_os, tipo, situacao, equipamento, valor,
	CLI.nomecli, fonecli
from tbos as OSER
inner join tbclientes as CLI
on (CLI.idcli = OSER.idcli);
--///////////////////////////////////////////////////////////////////////////////////////////////
select * from tbos WHERE os = 1;

