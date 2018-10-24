/*201810221424 - esert - COR-720:BD - Criar Tabela Generica P/ Arquivos*/
/*201810221424 - esert - vide COR-673:DB - Modelagem TBOD_PLANO_INFO e TBOD_ARQUIVO*/

CREATE SEQUENCE "CORRET"."SEQ_TBOD_ARQUIVO" 
MINVALUE 1 
MAXVALUE 999999999 
INCREMENT BY 1 
START WITH 1 
CACHE 20 
NOORDER 
NOCYCLE
;

/*
--201810241207 - esert/jota - seq SEQ_TBOD_ARQUIVO recriada com start 17 apos inserts manuais de 12 ate 16.
h t t p s : //stackoverflow .com /questions /11671575 /oracle-setting-sequence-to-a-specific-value
*//*
DROP SEQUENCE "CORRET"."SEQ_TBOD_ARQUIVO";
CREATE SEQUENCE "CORRET"."SEQ_TBOD_ARQUIVO" 
MINVALUE 1 
MAXVALUE 999999999 
INCREMENT BY 1 
START WITH 17 --201810241207 - esert/jota - seq recriada com start 17 apos inserts manuais
CACHE 20 
NOORDER 
NOCYCLE
;
*/
--select SEQ_TBOD_ARQUIVO.CURRVAL from dual;  --201810241207 - esert/jota - nao aceita executar CURRVAL antes de NEXTVAL.
