--------------------------------------------------------
--  DDL for Index XPKTIPO_PESSOA
--------------------------------------------------------

  CREATE UNIQUE INDEX "CORRET"."XPKTIPO_PESSOA" ON "CORRET"."TBOD_COR_TIPO_PESSOA" ("CD_TIPO_PESSOA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CORRET_DADOS" ;
