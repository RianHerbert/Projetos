select * from clientes

select * from Produtos

insert Produtos values(1, 'Caneta', 'Caneta Azul', 1.5)
insert Produtos values(2, 'Caderno', 'Caderno 10 materias', 20.99)

select * from Pedido

insert Pedido values(2, getdate(), 0, 22.49, 1)

delete
from	PedidoItem
where	CodigoPedido = 2
AND		Quantidade = 2

select * from Pedido
select *
from PedidoItem

update PedidoItem
set		Preco = 20.99
where CodigoProduto = 2

insert PedidoItem values(2, 1, 1.5, 1)
insert PedidoItem values(2, 2, 22.49, 1)

select *, convert(varchar, DataSolicitacao, 103)
from	Pedido