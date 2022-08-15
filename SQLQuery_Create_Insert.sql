Create Database BDLocadora
Use BDLocadora

create table tbClientes(
	CodCli int, 
	Nome varchar (50), 
	Endereco varchar(50),
	Cidade  varchar(50),
	Sexo char(1),
	Datanasc datetime,
	CNH varchar(25),
	DataHabilitacao date,
	Primary Key (CodCli)
)

create table tbCarros (
	CodCarro int, 
	Marca varchar(30),
	Modelo varchar(30),
	Placa varchar(8),
	ValorDiaria money,
	Fornecedor varchar(50),
	Primary Key (CodCarro)
)

create table tbAluguel(
	CodAluguel int,
	CodCli int, 
	CodCarro int,
	DataRet datetime,
	DataDev datetime,
	ValorPago money,
	Primary Key (CodAluguel),
	Foreign Key (CodCli) references
						tbClientes (CodCli),
	Foreign Key (CodCarro) references
						tbCarros (CodCarro)

)

insert into tbClientes
(CodCli, Cidade, CNH, DataHabilitacao, Datanasc, Endereco, Nome, Sexo, Estado)
