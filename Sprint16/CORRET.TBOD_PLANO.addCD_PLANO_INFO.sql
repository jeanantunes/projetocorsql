/*201810221500 - esert - COR-933:DB - Alterar TBOD_PLANO Novo CD_PLANO_INFO (FK)*/
/*201810221500 - esert - vide COR-673:DB - Modelagem TBOD_PLANO_INFO e TBOD_ARQUIVO e TBOD_PLANO*/

ALTER TABLE "CORRET"."TBOD_PLANO"
ADD "CD_PLANO_INFO" NUMBER(10) NULL; --refer TBOD_PLANO_INFO.CD_PLANO_INFO

ALTER TABLE "CORRET"."TBOD_PLANO"
ADD CONSTRAINT "FK_TBOD_PLANO_INFO" FOREIGN KEY ("CD_PLANO_INFO") 
REFERENCES "CORRET"."TBOD_PLANO_INFO" ("CD_PLANO_INFO");
