--------------------------------------------------------
--  DDL for Index XPKTELEFONE_CONTATO_EQUIPE_PRO
--------------------------------------------------------

  CREATE UNIQUE INDEX "CORRET"."XPKTELEFONE_CONTATO_EQUIPE_PRO" ON "CORRET"."TBOD_COR_TEL_CONT_EQP_PROSP" ("CD_TELEFONE", "CD_EQUIPE_PROSPECT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CORRET_DADOS" ;
