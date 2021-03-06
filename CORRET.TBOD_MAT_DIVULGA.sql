
  CREATE TABLE "CORRET"."TBOD_MAT_DIVULGA" 
   (	"CD_MAT_DIVULGA" NUMBER(10,0) NOT NULL ENABLE, 
	"CD_CATEGORIA" NUMBER(10,0) NOT NULL ENABLE, 
	"CD_SUB_CATEGORIA" NUMBER(10,0) NOT NULL ENABLE, 
	"NOME" VARCHAR2(250 BYTE) NOT NULL ENABLE, 
	"DESCRICAO" VARCHAR2(250 BYTE) NOT NULL ENABLE, 
	"TIPO_CONTEUDO" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
	"ATIVO" VARCHAR2(1 BYTE) NOT NULL ENABLE, 
	"THUMBNAIL" BLOB, 
	"ARQUIVO" BLOB, 
	 CONSTRAINT "PK_TBOD_MAT_DIVULGA" PRIMARY KEY ("CD_MAT_DIVULGA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "CORRET_DADOS"  ENABLE, 
	 CONSTRAINT "FK_TBOD_MAT_CATEG" FOREIGN KEY ("CD_CATEGORIA")
	  REFERENCES "CORRET"."TBOD_MAT_CATEG" ("CD_MAT_CATEG") ENABLE, 
	 CONSTRAINT "FK_TBOD_MAT_SUBCATEG" FOREIGN KEY ("CD_SUB_CATEGORIA")
	  REFERENCES "CORRET"."TBOD_MAT_SUBCATEG" ("CD_MAT_SUBCATEG") ENABLE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "CORRET_DADOS" 
 LOB ("THUMBNAIL") STORE AS BASICFILE (
  TABLESPACE "CORRET_DADOS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING ) 
 LOB ("ARQUIVO") STORE AS BASICFILE (
  TABLESPACE "CORRET_DADOS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING ) ;

/*
INSERT INTO "CORRET"."TBOD_MAT_DIVULGA" (CD_MAT_DIVULGA, CD_CATEGORIA, CD_SUB_CATEGORIA, NOME, DESCRICAO, TIPO_CONTEUDO, ATIVO) VALUES ( '1', '1', '1', 'MAT 111', 'DESC MAT 111', 'img/jpg', 'S')
INSERT INTO "CORRET"."TBOD_MAT_DIVULGA" (CD_MAT_DIVULGA, CD_CATEGORIA, CD_SUB_CATEGORIA, NOME, DESCRICAO, TIPO_CONTEUDO, ATIVO) VALUES ( '2', '1', '1', 'MAT 112', 'DESC MAT 112', 'img/jpg', 'S')
INSERT INTO "CORRET"."TBOD_MAT_DIVULGA" (CD_MAT_DIVULGA, CD_CATEGORIA, CD_SUB_CATEGORIA, NOME, DESCRICAO, TIPO_CONTEUDO, ATIVO) VALUES ( '3', '1', '1', 'MAT 113', 'DESC MAT 113', 'img/jpg', 'S')
INSERT INTO "CORRET"."TBOD_MAT_DIVULGA" (CD_MAT_DIVULGA, CD_CATEGORIA, CD_SUB_CATEGORIA, NOME, DESCRICAO, TIPO_CONTEUDO, ATIVO) VALUES ( '4', '1', '2', 'MAT 121', 'DESC MAT 121', 'img/jpg', 'S')
INSERT INTO "CORRET"."TBOD_MAT_DIVULGA" (CD_MAT_DIVULGA, CD_CATEGORIA, CD_SUB_CATEGORIA, NOME, DESCRICAO, TIPO_CONTEUDO, ATIVO) VALUES ( '5', '1', '2', 'MAT 122', 'DESC MAT 122', 'img/jpg', 'S')
INSERT INTO "CORRET"."TBOD_MAT_DIVULGA" (CD_MAT_DIVULGA, CD_CATEGORIA, CD_SUB_CATEGORIA, NOME, DESCRICAO, TIPO_CONTEUDO, ATIVO) VALUES ( '6', '1', '2', 'MAT 123', 'DESC MAT 123', 'img/jpg', 'N')
INSERT INTO "CORRET"."TBOD_MAT_DIVULGA" (CD_MAT_DIVULGA, CD_CATEGORIA, CD_SUB_CATEGORIA, NOME, DESCRICAO, TIPO_CONTEUDO, ATIVO) VALUES ( '7', '1', '3', 'MAT 131', 'DESC MAT 131', 'img/jpg', 'S')
INSERT INTO "CORRET"."TBOD_MAT_DIVULGA" (CD_MAT_DIVULGA, CD_CATEGORIA, CD_SUB_CATEGORIA, NOME, DESCRICAO, TIPO_CONTEUDO, ATIVO) VALUES ( '8', '1', '3', 'MAT 132', 'DESC MAT 132', 'img/jpg', 'S')
INSERT INTO "CORRET"."TBOD_MAT_DIVULGA" (CD_MAT_DIVULGA, CD_CATEGORIA, CD_SUB_CATEGORIA, NOME, DESCRICAO, TIPO_CONTEUDO, ATIVO) VALUES ( '9', '1', '3', 'MAT 133', 'DESC MAT 133', 'img/jpg', 'S')
INSERT INTO "CORRET"."TBOD_MAT_DIVULGA" (CD_MAT_DIVULGA, CD_CATEGORIA, CD_SUB_CATEGORIA, NOME, DESCRICAO, TIPO_CONTEUDO, ATIVO) VALUES ('10', '2', '1', 'MAT 211', 'DESC MAT 211', 'img/jpg', 'S')
INSERT INTO "CORRET"."TBOD_MAT_DIVULGA" (CD_MAT_DIVULGA, CD_CATEGORIA, CD_SUB_CATEGORIA, NOME, DESCRICAO, TIPO_CONTEUDO, ATIVO) VALUES ('11', '2', '1', 'MAT 212', 'DESC MAT 212', 'img/jpg', 'S')
INSERT INTO "CORRET"."TBOD_MAT_DIVULGA" (CD_MAT_DIVULGA, CD_CATEGORIA, CD_SUB_CATEGORIA, NOME, DESCRICAO, TIPO_CONTEUDO, ATIVO) VALUES ('12', '2', '1', 'MAT 213', 'DESC MAT 213', 'img/jpg', 'N')
INSERT INTO "CORRET"."TBOD_MAT_DIVULGA" (CD_MAT_DIVULGA, CD_CATEGORIA, CD_SUB_CATEGORIA, NOME, DESCRICAO, TIPO_CONTEUDO, ATIVO) VALUES ('13', '2', '2', 'MAT 221', 'DESC MAT 221', 'img/jpg', 'S')
INSERT INTO "CORRET"."TBOD_MAT_DIVULGA" (CD_MAT_DIVULGA, CD_CATEGORIA, CD_SUB_CATEGORIA, NOME, DESCRICAO, TIPO_CONTEUDO, ATIVO) VALUES ('14', '2', '2', 'MAT 222', 'DESC MAT 222', 'img/jpg', 'S')
INSERT INTO "CORRET"."TBOD_MAT_DIVULGA" (CD_MAT_DIVULGA, CD_CATEGORIA, CD_SUB_CATEGORIA, NOME, DESCRICAO, TIPO_CONTEUDO, ATIVO) VALUES ('15', '2', '2', 'MAT 223', 'DESC MAT 223', 'img/jpg', 'S')
INSERT INTO "CORRET"."TBOD_MAT_DIVULGA" (CD_MAT_DIVULGA, CD_CATEGORIA, CD_SUB_CATEGORIA, NOME, DESCRICAO, TIPO_CONTEUDO, ATIVO) VALUES ('16', '2', '3', 'MAT 231', 'DESC MAT 231', 'img/jpg', 'S')
INSERT INTO "CORRET"."TBOD_MAT_DIVULGA" (CD_MAT_DIVULGA, CD_CATEGORIA, CD_SUB_CATEGORIA, NOME, DESCRICAO, TIPO_CONTEUDO, ATIVO) VALUES ('17', '2', '3', 'MAT 232', 'DESC MAT 232', 'img/jpg', 'S')
INSERT INTO "CORRET"."TBOD_MAT_DIVULGA" (CD_MAT_DIVULGA, CD_CATEGORIA, CD_SUB_CATEGORIA, NOME, DESCRICAO, TIPO_CONTEUDO, ATIVO) VALUES ('18', '2', '3', 'MAT 233', 'DESC MAT 233', 'img/jpg', 'N')
INSERT INTO "CORRET"."TBOD_MAT_DIVULGA" (CD_MAT_DIVULGA, CD_CATEGORIA, CD_SUB_CATEGORIA, NOME, DESCRICAO, TIPO_CONTEUDO, ATIVO) VALUES ('19', '3', '1', 'MAT 311', 'DESC MAT 311', 'img/jpg', 'S')
INSERT INTO "CORRET"."TBOD_MAT_DIVULGA" (CD_MAT_DIVULGA, CD_CATEGORIA, CD_SUB_CATEGORIA, NOME, DESCRICAO, TIPO_CONTEUDO, ATIVO) VALUES ('20', '3', '1', 'MAT 312', 'DESC MAT 312', 'img/jpg', 'S')
INSERT INTO "CORRET"."TBOD_MAT_DIVULGA" (CD_MAT_DIVULGA, CD_CATEGORIA, CD_SUB_CATEGORIA, NOME, DESCRICAO, TIPO_CONTEUDO, ATIVO) VALUES ('21', '3', '1', 'MAT 313', 'DESC MAT 313', 'img/jpg', 'S')
INSERT INTO "CORRET"."TBOD_MAT_DIVULGA" (CD_MAT_DIVULGA, CD_CATEGORIA, CD_SUB_CATEGORIA, NOME, DESCRICAO, TIPO_CONTEUDO, ATIVO) VALUES ('22', '3', '2', 'MAT 321', 'DESC MAT 321', 'img/jpg', 'S')
INSERT INTO "CORRET"."TBOD_MAT_DIVULGA" (CD_MAT_DIVULGA, CD_CATEGORIA, CD_SUB_CATEGORIA, NOME, DESCRICAO, TIPO_CONTEUDO, ATIVO) VALUES ('23', '3', '2', 'MAT 322', 'DESC MAT 322', 'img/jpg', 'S')
INSERT INTO "CORRET"."TBOD_MAT_DIVULGA" (CD_MAT_DIVULGA, CD_CATEGORIA, CD_SUB_CATEGORIA, NOME, DESCRICAO, TIPO_CONTEUDO, ATIVO) VALUES ('24', '3', '2', 'MAT 323', 'DESC MAT 323', 'img/jpg', 'N')
INSERT INTO "CORRET"."TBOD_MAT_DIVULGA" (CD_MAT_DIVULGA, CD_CATEGORIA, CD_SUB_CATEGORIA, NOME, DESCRICAO, TIPO_CONTEUDO, ATIVO) VALUES ('25', '3', '3', 'MAT 331', 'DESC MAT 331', 'img/jpg', 'S')
INSERT INTO "CORRET"."TBOD_MAT_DIVULGA" (CD_MAT_DIVULGA, CD_CATEGORIA, CD_SUB_CATEGORIA, NOME, DESCRICAO, TIPO_CONTEUDO, ATIVO) VALUES ('26', '3', '3', 'MAT 332', 'DESC MAT 332', 'img/jpg', 'S')
INSERT INTO "CORRET"."TBOD_MAT_DIVULGA" (CD_MAT_DIVULGA, CD_CATEGORIA, CD_SUB_CATEGORIA, NOME, DESCRICAO, TIPO_CONTEUDO, ATIVO) VALUES ('27', '3', '3', 'MAT 333', 'DESC MAT 333', 'img/jpg', 'S')
*/
