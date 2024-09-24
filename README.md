![GitHub](https://img.shields.io/github/license/professorjosedeassis/infoX)

# ☕ Java MySQL - Sistema OS
Sistema OS é um sistema desktop(Windows, Linux ou MAC) para gestão de ordem de serviços de uma assistência técnica de computadores, notebooks e periféricos.

![sistemaOS](https://github.com/professorjosedeassis/infox/blob/master/assets/sistemaOS.png)
### Demonstração do projeto
[![Java MySQL Sistema OS](https://img.youtube.com/vi/rB66EC0VXTA/0.jpg)](https://youtu.be/rB66EC0VXTA?si=9q50jPzixgxcaGBc "Asssistir no YouTube")

![YouTube Video Views](https://img.shields.io/youtube/views/rB66EC0VXTA?si=9q50jPzixgxcaGBc?style=social)
## Autor
Professor José de Assis
## Instruções para instalação e uso do aplicativo
### Pré requisitos
1) Ter o Java **versão 8** instalado (só funciona corretamente nesta versão do Java). 

[download Java 8](https://www.java.com/pt-BR/)

2) Ter um banco de dados local baseado no **MySQL 8** ou MariaDB compatível, no exemplo usei o XAMPP que pode ser obtido no link indicado.

[download xampp](https://www.apachefriends.org/)

### Instalação do banco
1) Iniciar os serviços Apache e MySQL no XAMPP, conforme indicado na imagem.

![xampp start](https://github.com/professorjosedeassis/carometro/blob/main/assets/xampp1.png)

2) No navegador de internet digite: **localhost/dashboard** e selecione no menu: **phpMyAdmin** conforme indicado na imagem.

![phpmyadmin](https://github.com/professorjosedeassis/carometro/blob/main/assets/xampp2.png)

3) Crie um novo banco de dados de nome **dbinfox** conforme indicado na imagem.

![dbinfox](https://github.com/professorjosedeassis/infox/blob/master/assets/infoxtela1.png)

4) Na aba SQL, copie e cole o código abaixo e execute. (Passos 1,2 e 3 indicados na imagem)

~~~sql
create table tbusuarios(iduser int primary key,usuario varchar(15) not null,fone varchar(15),login varchar(15) not null unique,senha varchar(250) not null,perfil varchar(20) not null);
insert into tbusuarios(iduser,usuario,login,senha,perfil) values(1,'Administrador','admin',md5('admin'),'admin');
create table tbclientes(idcli int primary key auto_increment,nomecli varchar(50) not null,endcli varchar(100),fonecli varchar(15) not null,emailcli varchar(50) unique);
create table tbos(os int primary key auto_increment,data_os timestamp default current_timestamp,tipo varchar(15) not null,situacao varchar(20) not null,equipamento varchar(150) not null,defeito varchar(150),servico varchar(150),tecnico varchar(30),valor decimal(10,2),idcli int not null,foreign key(idcli) references tbclientes(idcli));
~~~
![alunos](https://github.com/professorjosedeassis/infox/blob/master/assets/infoxtela2.png)

### Instalação do aplicativo
1) Em Releases faça o download do arquivo **dist.zip**
2) Descompactar e executar o arquivo **prjinfoX.jar** Verifique na tela de login o ícone que representa o banco de dados conectado. Se estiver com erro (conforme indicado na figura) verifique o XAMPP e revise novamente os passos 1 a 4 da instalação do banco.

![app](https://github.com/professorjosedeassis/infox/blob/master/assets/infoxtela3.png)

3) Se tudo estiver OK você pode iniciar fazendo o login com o usuário **admin** e a senha **admin** (esta senha pode ser alterada posteriormente). Ao logar o sistema direciona para tela principal onde podem ser cadastrados novos usuários, clientes e OS. O sistema permite também a emissão de relatórios.

![aplicativo](https://github.com/professorjosedeassis/infox/blob/master/assets/infoxtela4.png) 

## Tutorial passo a passo para desenvolver este projeto do "zero"
Tecnologias que são abordadas neste tutorial:
- Criação de banco de dados e tabelas no MySQL
- CRUD (Create Read Update e Delete)
- IDE Netbeans
- Java SE
- JDBC (Java Database Connectivity)
- Validação de dados
- Uso do framework iReport para gerar relatórios

### Iniciar tutorial:
▶️ [Playlist](https://www.youtube.com/playlist?list=PLbEOwbQR9lqxsTusvu8wfkUECrmcV81MU)
### Bibliotecas
[atxy2k](http://atxy2k.github.io/RestrictedTextField/)

[driver MySQL](https://dev.mysql.com/downloads/connector/j/)

[rs2xml](https://sourceforge.net/projects/finalangelsanddemons/files/rs2xml.jar/download)
### Ferramentas
[openJDK 8 (LTS)](https://adoptopenjdk.net/)

[NetBeans IDE 8.2](https://filehippo.com/download_netbeans/8.2/)

[iReport-5.6.0](https://sourceforge.net/projects/ireport/)

[Inno Setup](https://jrsoftware.org/isinfo.php)

### Slides
[JDBC](https://professorjosedeassis.github.io/infox/)
## Como apoiar os tutoriais e projetos?
### Você pode me pagar um café! ☕

#### Chave PIX:
` josedeassisfilho@gmail.com `
### Você também pode:
:heavy_check_mark: Inscrever-se no canal do YouTube - [INSCREVA-SE!](https://www.youtube.com/c/RoboticapraticaBr/?sub_confirmation=1)

:heavy_check_mark: Compartilhar os tutoriais e projetos

:heavy_check_mark: Seguir-me nas redes sociais:
<p align="left">
<a href="https://www.youtube.com/c/roboticapraticabr" target="blank"><img align="center" src="https://github.com/professorjosedeassis/joseassis/blob/main/img/youtube.png" alt="roboticapraticabr" height="48" width="48" /></a>
<a href="https://linkedin.com/in/professorjosedeassis" target="blank"><img align="center" src="https://github.com/professorjosedeassis/joseassis/blob/main/img/linkedin.png" alt="professorjosedeassis" height="48" width="48" /></a>
<a href="https://fb.com/professorjosedeassis" target="blank"><img align="center" src="https://github.com/professorjosedeassis/joseassis/blob/main/img/facebook.png" alt="professorjosedeassis" height="48" width="48" /></a>
<a href="https://instagram.com/prof.joseassis" target="blank"><img align="center" src="https://github.com/professorjosedeassis/joseassis/blob/main/img/instagram.png" alt="prof.joseassis" height="48" width="48" /></a>
<a href="https://twitter.com/joseassis" target="blank"><img align="center" src="https://github.com/professorjosedeassis/joseassis/blob/main/img/twitter.png" alt="joseassis" height="48" width="48" /></a>
</p>

### :smiley: Muito obrigado pelo apoio!
