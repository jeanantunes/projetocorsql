--------------------------------------------------------
--  DDL for Index IDX_ID_TOKEN
--------------------------------------------------------

  CREATE UNIQUE INDEX "CORRET"."IDX_ID_TOKEN" ON "CORRET"."TBOD_DEVICE_TOKEN" ("ID_TOKEN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "CORRET_DADOS" ;
