create table abc (col1 int)
go
alter table abc add col2 int 
go
insert into abc (col1, col2) select 1,2