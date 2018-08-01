/*
COR-494 : Serviço - DB Incluir campo CD_CORRETORA na TBOD_VENDA
*/
alter table CORRET.TBOD_VENDA 
add CD_CORRETORA NUMBER(10,0) NULL
;

alter table CORRET.TBOD_VENDA 
add constraint FK_TBOD_VENDA_CORRETORA 
foreign key ( CD_CORRETORA ) 
references TBOD_CORRETORA ( CD_CORRETORA )
;
