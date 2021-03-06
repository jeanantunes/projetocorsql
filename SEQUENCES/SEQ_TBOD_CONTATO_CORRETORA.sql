--------------------------------------------------------
--  DDL for Sequence SEQ_TBOD_CONTATO_CORRETORA
--------------------------------------------------------

   CREATE SEQUENCE  "CORRET"."SEQ_TBOD_CONTATO_CORRETORA"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
  GRANT ALTER ON "CORRET"."SEQ_TBOD_CONTATO_CORRETORA" TO "USUCORRET";
  GRANT SELECT ON "CORRET"."SEQ_TBOD_CONTATO_CORRETORA" TO "USUCORRET";
  GRANT ALTER ON "CORRET"."SEQ_TBOD_CONTATO_CORRETORA" TO "R_USUCORRET";
  GRANT SELECT ON "CORRET"."SEQ_TBOD_CONTATO_CORRETORA" TO "R_USUCORRET";
  GRANT SELECT ON "CORRET"."SEQ_TBOD_CONTATO_CORRETORA" TO "CD_PORTALDOCORRETOR";
