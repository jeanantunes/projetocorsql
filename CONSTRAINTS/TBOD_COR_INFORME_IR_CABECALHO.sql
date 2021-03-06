--------------------------------------------------------
--  Constraints for Table TBOD_COR_INFORME_IR_CABECALHO
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_COR_INFORME_IR_CABECALHO" MODIFY ("NR_NR_ANO" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_COR_INFORME_IR_CABECALHO" MODIFY ("CD_PARCEIRO" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_COR_INFORME_IR_CABECALHO" MODIFY ("CD_INFORME_IR_CABECALHO" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_COR_INFORME_IR_CABECALHO" MODIFY ("NR_CPF_CNPJ_FONTE_PAGADORA" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_COR_INFORME_IR_CABECALHO" MODIFY ("NM_FONTE_PAGADORA" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_COR_INFORME_IR_CABECALHO" ADD CONSTRAINT "XPKINFORME_IR_CABE¿ALHO" PRIMARY KEY ("CD_INFORME_IR_CABECALHO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CORRET_DADOS"  ENABLE NOVALIDATE;
