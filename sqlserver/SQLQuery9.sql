

select * from StatusPedidoItem

insert PedidoItemLog (CodigoPedido, CodigoProduto, CodigoStatusPedidoItem, DataMovimento)
select CodigoPedido, CodigoProduto, 1, getdate()
from PedidoItem

select * from PedidoItem

select * from PedidoItemLog

insert PedidoItemLog values(1, 2, 1, getdate())//erro

inner	join /*Pegar todos os clientes que estão na tabela de pedidos e retornar todos que existem nas duas tabelas de acordo com a igualdade*/
left	join/*Traz todas as informações da tabela a esquerda e da direita caso tenha alguma*/
right	join/*Traz as informações da direita e traz da esquerda caso tenha algo*/

select *
from Clientes cli
left	join Pedido ped
on		cli.codigo = ped.CodigoCliente
where	ped.TotalPedido > 10


select	cli.Codigo,
		cli.Nome,
		count(ped.Codigo)
from	Clientes cli
left	join Pedido ped
on		cli.codigo = ped.CodigoCliente
group	by cli.Codigo,
		cli.Nome


select	*
from Clientes cli
where cli.Codigo not in(select CodigoCliente from Pedido)

select	t4.Codigo,
		t4.Descricao,
		sum(t1.Preco * t1.Quantidade) Somatoria
from	PedidoItem t1
inner	join PedidoItemLog t2
on		t1.CodigoPedido = t2.CodigoPedido
and		t1.CodigoProduto = t2.CodigoProduto
inner	join StatusPedidoItem t3
on		t3.Codigo = t2.CodigoStatusPedidoItem
inner	join Produtos t4
on		t4.Codigo = t2.CodigoProduto
group	by	t4.Codigo,
		t4.Descricao
having	sum(t1.Preco * t1.Quantidade) > 10

insert Pedido values(getdate(), 0, 10, 1, 1)

select	*
from	Clientes cli, Pedido ped, PedidoItem pedItem
where	cli.Codigo = ped.CodigoCliente
and		ped.Codigo = pedItem.CodigoPedido
