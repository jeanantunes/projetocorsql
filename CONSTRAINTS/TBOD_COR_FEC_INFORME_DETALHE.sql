--------------------------------------------------------
--  Constraints for Table TBOD_COR_FEC_INFORME_DETALHE
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_COR_FEC_INFORME_DETALHE" MODIFY ("NR_NR_ANO_COMPETENCIA" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_COR_FEC_INFORME_DETALHE" MODIFY ("CD_PARCEIRO" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_COR_FEC_INFORME_DETALHE" MODIFY ("NR_NR_MES_COMPETENCIA" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_COR_FEC_INFORME_DETALHE" ADD CONSTRAINT "XPKDETALHE_ANALISE_FECHAMENTO" PRIMARY KEY ("NR_NR_MES_COMPETENCIA", "CD_PARCEIRO", "NR_NR_ANO_COMPETENCIA", "NR_CNPJ_PAGADORA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CORRET_DADOS"  ENABLE NOVALIDATE;