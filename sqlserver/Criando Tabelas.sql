

create database Ecomerce

create table Clientes
(
	Codigo int not null,
	Nome varchar(200) not null,
	TipoPessoa char not null
)

create table Pedido
(
	Codigo int not null,
	DataSolicitacao datetime not null,
	FlagPago bit not null,
	TotalPedido float not null,
	CodigoCliente int not null
)

create table PedidoItem
(
	CodigoPedido int not null,
	CodigoProduto int not null,
	Preco float not null,
	Quantidade int not null
)

create table Produtos
(
	Codigo int,
	Nome varchar(100),
	Descricao varchar(200),
	Preco float
)

drop table Clientes