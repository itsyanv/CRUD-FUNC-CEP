create database 'C:\elp4\banco.fdb' user 'SYSDBA' password 'masterkey' page_size 8192;

connect 'C:\elp4\banco.fdb' user 'SYSDBA' password 'masterkey';

create table paises(
  codPais int not null primary key,
  pais varchar(50) not null,
  sigla varchar(5),
  DDI varchar(3),
  DatCad date not null,
  DatUltAlt date not null);
  
create generator gen_paises;
set generator gen_paises to 0;

set term ^;
  create trigger paises_bi for paises
  active before insert position 0
  as
  begin
    if (new.codPais is null) then
	  new.codPais = gen_id(gen_paises,1);
  end^
set term ;^

create table estados(
  codEstado int not null primary key,
  estado varchar(50) not null,
  uf varchar(3),
  codPais int not null references paises,
  DatCad date not null,
  DatUltAlt date not null);
  
create generator gen_estados;
set generator gen_estados to 0;

set term ^;
  create trigger estados_bi for estados
  active before insert position 0
  as
  begin
    if (new.codEstado is null) then
	  new.codEstado = gen_id(gen_estados,1);
  end^
set term ;^

create table cidades(
  codCidade int not null primary key,
  cidade varchar(50) not null,
  DDD varchar(4),
  codEstado int not null references estados,
  DatCad date not null,
  DatUltAlt date not null);

create generator gen_cidades;
set generator gen_cidades to 0;

set term ^;
  create trigger cidades_bi for cidades
  active before insert position 0
  as
  begin
    if (new.codCidade is null) then
	  new.codCidade = gen_id(gen_cidades,1);
  end^
set term ;^

create table cargos(
  codCargo int not null primary key,
  cargo varchar(30) not null,
  CNH char not null,
  DatCad date not null,
  DatUltAlt date not null);
 
create generator gen_cargos;
set generator gen_cargos to 0;

set term ^;
  create trigger cargos_bi for cargos
  active before insert position 0
  as
  begin
    if (new.codCargo is null) then
	  new.codCargo = gen_id(gen_cargos,1);
  end^
set term ;^

create table funcionarios(
  codfunc int not null primary key,
  funcionario varchar(50) not null,
  endereco varchar(50) not null,
  complemento varchar(20),
  bairro varchar(40) not null,
  DataNasc date not null,
  codCidade int not null references cidades,
  codCargo int not null references cargos,
  CNH varchar(10),
  DataValCNH date,
  DatCad date not null,
  DatUltAlt date not null);
  
create generator gen_funcionarios;
set generator gen_funcionarios to 0;

set term ^;
  create trigger funcionarios_bi for funcionarios
  active before insert position 0
  as
  begin
    if (new.codfunc is null) then
	  new.codfunc = gen_id(gen_funcionarios,1);
  end^
set term ;^