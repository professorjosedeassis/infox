/*drop database dbinfox;
create database dbinfox
default character set utf8
default collate utf8_general_ci;*/
use dbinfox;
create table tbusuarios(
iduser			int primary key,
usuario			varchar(50)	not null,
fone			varchar(15),
login			varchar(15) not null unique,	
senha			varchar(15) not null
)default charset = utf8;

describe tbusuarios;
select * from tbusuarios;
insert into tbusuarios ( iduser, usuario, fone, login, senha )
		values		( 1, 'josé de assis', '9999-9999', 'joseassis', '123456');
insert into tbusuarios ( iduser, usuario, fone, login, senha )
		values		( 2, 'Administrador', '9999-9999', 'admin', 'admin');
insert into tbusuarios ( iduser, usuario, fone, login, senha )
		values		( 3, 'Bill Gates', '9999-9999', 'bill', '123456');

update tbusuarios set fone = '8888-8888' where iduser = 2;
delete from tbusuarios where iduser = 3; 

/*drop table tbclientes;*/
describe tbclientes;
select * from tbclientes;
create table tbclientes(
idcli			int primary key auto_increment unique,
nomecli			varchar(50)	not null,
endcli			varchar(100),
fonecli			varchar(50)	not null,
emailcli		varchar(50)
)default charset = utf8;

insert into tbclientes (nomecli,endcli,fonecli,emailcli)
		values		('Linus Torvalds','Rua Tux, 2015','9999-9999','linus@linux.com');

drop table tbos;
describe tbos;
select * from tbos;
create table tbos(
os				int primary key auto_increment,
data_os			timestamp default current_timestamp,
equipamento		varchar(150) not null,
defeito			varchar(150) not null,
servico			varchar(150),
tecnico			varchar(30),
valor			decimal(10,2)
)default charset = utf8;

alter table tbos add fk_idcli int not null;
alter table tbos add foreign key (fk_idcli) references tbclientes (idcli);


insert into tbos (equipamento,defeito,servico,tecnico,valor, fk_idcli)
values			('Notebook','não liga','troca da fonte','linus',87.50, 1);

select
O.os, equipamento, defeito, servico, valor,
C.nomecli, fonecli
from tbos as O
inner join tbclientes as C
on (O.idcli = c.idcli);









