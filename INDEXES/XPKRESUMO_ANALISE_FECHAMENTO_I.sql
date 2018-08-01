--------------------------------------------------------
--  DDL for Index XPKRESUMO_ANALISE_FECHAMENTO_I
--------------------------------------------------------

  CREATE UNIQUE INDEX "CORRET"."XPKRESUMO_ANALISE_FECHAMENTO_I" ON "CORRET"."TBOD_COR_FEC_INFORME_RESUMO" ("NR_NR_ANO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CORRET_DADOS" ;
