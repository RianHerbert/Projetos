

select *
from Clientes

alter table Clientes add constraint pk_cliente primary key (Codigo)

insert Clientes values(1, 'Rian', 'J', getdate())//violação de chave primaria

insert Clientes values('Rian', 'J', getdate())/*forma correta de se inserir*/

select * from Pedido

select * from PedidoItem

alter table PedidoItem add constraint fk_pedido foreign key (CodigoPedido) references Pedido (Codigo)

insert PedidoItem values(2, 2, 10.5, 1)