


create table Test45
(
	Descricao varchar(50) null,
	Complemento char(10) not null
)
insert Test45 values('a', 'a')
select * from Test45

insert Test45 values(null, 'b')
select * from Test45
