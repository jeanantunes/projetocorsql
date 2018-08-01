--------------------------------------------------------
--  Ref Constraints for Table TBOD_COR_INFORME_IR_DETALHE
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_COR_INFORME_IR_DETALHE" ADD CONSTRAINT "R_56" FOREIGN KEY ("CD_INFORME_IR_CABECALHO")
	  REFERENCES "CORRET"."TBOD_COR_INFORME_IR_CABECALHO" ("CD_INFORME_IR_CABECALHO") ON DELETE SET NULL ENABLE NOVALIDATE;
