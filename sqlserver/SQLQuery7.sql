


select *
from clientes

alter table Clientes add constraint pk_clientes primary key(Codigo)

insert Clientes values('Julio', 'J', getdate())

select * from Pedido

select * from PedidoItem

insert PedidoItem values(2, 2, 10.5, 1)

alter table PedidoItem add constraint fk_pedido foreign key (CodigoPedido) references Pedido (Codigo)

