use Ecomerce
select * from Clientes


insert into clientes (codigo, nome, TipoPessoa) values(1, 'Thiago', 'F');
insert clientes (codigo, nome, TipoPessoa) values(2, 'Thiago', 'F');
insert clientes (TipoPessoa, codigo, nome) values('F', 3, 'Thiago');
insert clientes values(4, 'Thiago', 'F');
insert clientes values(5, 'Thiago', 'F'), (1, 'Thiago', 'J');

select *
from clientes
where TipoPessoa = 'J'

update clientes
set		Codigo = 7,
		Nome = 'Rian'
where TipoPessoa = 'J'

update clientes
set		TipoPessoa = 'J'

delete	
from  clientes
where Codigo in(5, 4, 3, 2)

select *
from clientes
where Codigo = 1
AND TipoPessoa = 'J'

select isnull(DataCriacao, getdate()), *
from clientes

select *,
	case
		when TipoPessoa = 'J' then 'Jurídica'
		when TipoPessoa = 'F' then 'Física'
		else 'Pessoa Indefinida'
	end + ' - ' + convert(varchar, getdate(), 103)
from	clientes



