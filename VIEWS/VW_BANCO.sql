--------------------------------------------------------
--  DDL for View VW_BANCO
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "CORRET"."VW_BANCO" ("BANK_NUMBER", "BANK_NAME") AS 
  SELECT BANK_NUMBER,
    MAX(BANK_NAME) BANK_NAME
  FROM AP_BANK_BRANCHES@LK_EBSCORRET
  GROUP BY BANK_NUMBER
 ;
  GRANT SELECT ON "CORRET"."VW_BANCO" TO "USUCORRET";
  GRANT SELECT ON "CORRET"."VW_BANCO" TO "R_USUCORRET";
  GRANT SELECT ON "CORRET"."VW_BANCO" TO "CD_PORTALDOCORRETOR";
