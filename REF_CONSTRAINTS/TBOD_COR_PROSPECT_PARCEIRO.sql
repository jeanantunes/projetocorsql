--------------------------------------------------------
--  Ref Constraints for Table TBOD_COR_PROSPECT_PARCEIRO
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_COR_PROSPECT_PARCEIRO" ADD CONSTRAINT "R_33" FOREIGN KEY ("CD_FAIXA_FATURAMENTO_ANUAL")
	  REFERENCES "CORRET"."TBOD_COR_FAIXA_FAT_ANUAL" ("CD_FAIXA_FATURAMENTO_ANUAL") ON DELETE SET NULL ENABLE NOVALIDATE;
  ALTER TABLE "CORRET"."TBOD_COR_PROSPECT_PARCEIRO" ADD CONSTRAINT "R_57" FOREIGN KEY ("CD_SITUACAO_PROSPECT_PARCEIRO")
	  REFERENCES "CORRET"."TBOD_COR_SIT_PROSPECT_PARC" ("CD_SITUACAO_PROSPECT_PARCEIRO") ON DELETE SET NULL ENABLE NOVALIDATE;
