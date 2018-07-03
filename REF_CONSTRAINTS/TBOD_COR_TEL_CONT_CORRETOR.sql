--------------------------------------------------------
--  Ref Constraints for Table TBOD_COR_TEL_CONT_CORRETOR
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_COR_TEL_CONT_CORRETOR" ADD CONSTRAINT "R_28" FOREIGN KEY ("CD_CONTATO_CORRETORA")
	  REFERENCES "CORRET"."TBOD_COR_CONTATO_CORRETORA" ("CD_CONTATO_CORRETORA") ENABLE NOVALIDATE;
  ALTER TABLE "CORRET"."TBOD_COR_TEL_CONT_CORRETOR" ADD CONSTRAINT "R_29" FOREIGN KEY ("CD_TELEFONE")
	  REFERENCES "CORRET"."TBOD_COR_TELEFONE" ("CD_TELEFONE") ENABLE NOVALIDATE;