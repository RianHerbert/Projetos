select * from clientes

select * from Produtos

insert Produtos values(1, 'Caneta', 'Caneta Azul', 1.5)
insert Produtos values(2, 'Caderno', 'Caderno 10 matérias', 20.99)

select * from Pedido

insert Pedido values(2, getdate(), 0, 22.49, 1)

select *, convert(varchar, DataSolicitacao, 103)
from Pedido

select *
from	PedidoItem

insert PedidoItem values(2, 1, 1.5, 1)
insert PedidoItem values(2, 2, 20.99, 1)

insert Clientes (Codigo, Nome, TipoPessoa) values(2, 'Higor', 'F')

select isnull(DataCriacao, GETDATE()), *
from clientes

select *,
	case
		when TipoPessoa = 'J' then 'Jurídica'
		when TipoPessoa = 'F' then 'Física'
		else 'Pessoa Indefinida'
	end + ' - ' + convert(varchar, getdate(), 103)
from clientes