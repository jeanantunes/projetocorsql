/*
COR-735 - BD - Alterar TBOD_CORRETORA add CPF_RESPONSAVEL2 //201809041706 - yalm/esert
*/
/*select * from CORRET.TBOD_CORRETORA;*/

alter table CORRET.TBOD_CORRETORA
  add CPF_RESPONSAVEL2 VARCHAR2(14) NULL;

COMMIT;