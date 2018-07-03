--------------------------------------------------------
--  Ref Constraints for Table TBOD_COR_INFORME_IR_CABECALHO
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_COR_INFORME_IR_CABECALHO" ADD CONSTRAINT "R_55" FOREIGN KEY ("CD_PARCEIRO")
	  REFERENCES "CORRET"."TBOD_COR_CORRETORA" ("CD_PARCEIRO") ON DELETE SET NULL ENABLE NOVALIDATE;
