/*
COR-699 - Criar tabela TBOD_CONTRATO_CORRETORA
*/
/*
COR-752 - DB - alterar tabela TBOD_CONTRATO_CORRETORA - 201809101539 - esert
COR-752 - DB - alterar tabela TBOD_CONTRATO_CORRETORA - 201809111704 - esert
*/
--DROP TABLE CORRET.TBOD_CONTRATO_CORRETORA;

CREATE TABLE CORRET.TBOD_CONTRATO_CORRETORA
(
  "CD_CONTRATO_CORRETORA" NUMBER(10) NOT NULL,
  "DT_ACEITE_CONTRATO" DATE NOT NULL,
  "CD_CORRETORA" NUMBER(10) NOT NULL,
  "CD_CONTRATO_MODELO" NUMBER(10) NOT NULL
);

ALTER TABLE TBOD_CONTRATO_CORRETORA
ADD CONSTRAINT PK_TBOD_CONTRATO_CORRETORA PRIMARY KEY ("CD_CONTRATO_CORRETORA");

ALTER TABLE TBOD_CONTRATO_CORRETORA
ADD CONSTRAINT "FK_TBOD_CORRETORA" FOREIGN KEY ("CD_CORRETORA")
REFERENCES "CORRET"."TBOD_CORRETORA" ("CD_CORRETORA");

ALTER TABLE TBOD_CONTRATO_CORRETORA
ADD CONSTRAINT "FK_TBOD_CONTRATO_MODELO" FOREIGN KEY ("CD_CONTRATO_MODELO")
REFERENCES "CORRET"."TBOD_CONTRATO_MODELO" ("CD_CONTRATO_MODELO");

COMMIT;
