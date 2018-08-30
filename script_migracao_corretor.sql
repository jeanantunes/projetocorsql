DECLARE
      CURSOR CUR_COR_CORRETORA IS SELECT * FROM TBOD_COR_CORRETORA WHERE CD_PARCEIRO NOT IN (SELECT CODIGO FROM TBOD_CORRETORA ) AND ID_ATIVO = 'S' AND CD_TIPO_PESSOA = 'J';
      REG_COR_CORRETORA CUR_COR_CORRETORA%ROWTYPE;      
      VAR_CD_CORRETORA TBOD_CORRETORA.CD_CORRETORA%TYPE;
      VAR_CD_LOGIN TBOD_LOGIN.CD_LOGIN%TYPE;
      VAR_CD_ENDERECO TBOD_ENDERECO.CD_ENDERECO%TYPE;      
      VAR_CNPJ TBOD_CORRETORA.CNPJ%TYPE;
BEGIN
      OPEN CUR_COR_CORRETORA;
      LOOP
            FETCH CUR_COR_CORRETORA
            INTO REG_COR_CORRETORA;
            VAR_CD_CORRETORA := 0;            
            
            BEGIN
            
            EXIT WHEN
               CUR_COR_CORRETORA%NOTFOUND;
            
              DBMS_OUTPUT.PUT_LINE('CORRETORA: '||REG_COR_CORRETORA.CD_PARCEIRO);   
              VAR_CNPJ := LPAD(REG_COR_CORRETORA.NR_CNPJ,14,'0');
              DBMS_OUTPUT.PUT_LINE('CNPJ: '||VAR_CNPJ);
              DBMS_OUTPUT.PUT_LINE('SENHA: '||SUBSTR(VAR_CNPJ,1,4)|| SUBSTR(VAR_CNPJ,11,4));                            
                                                                                                           
              SELECT SEQ_TBOD_CORRETORA.NEXTVAL INTO VAR_CD_CORRETORA  FROM DUAL;
              SELECT SEQ_TBOD_LOGIN.NEXTVAL INTO VAR_CD_LOGIN FROM DUAL;
              
              INSERT INTO TBOD_LOGIN VALUES (VAR_CD_LOGIN, 1, SUBSTR(VAR_CNPJ,1,4)|| SUBSTR(VAR_CNPJ,11,4), NULL);
                         
              INSERT INTO TBOD_CORRETORA VALUES (
                  VAR_CD_CORRETORA,
                  REG_COR_CORRETORA.NM_EMPRESA_PARCEIRA,
                  REG_COR_CORRETORA.CD_PARCEIRO, -- CODIGO
                  VAR_CNPJ,
                  343, --HARDCODE ENDERECO
                  REG_COR_CORRETORA.ID_ATIVO,
                  '1',
                  NULL, -- REGIONAL
                  REG_COR_CORRETORA.NM_FANTASIA, -- RAZAO_SOCIAL
                  NULL,-- TELEFONE
                  REG_COR_CORRETORA.ID_OPTANTE_SIMPLES, -- SIMPLES_NACIONAL
                  SYSDATE, -- DATA DE ABERTURA
                  'A', -- STATUS_CNPJ
                  NULL, --NOME_REPRESENTANTE_LEGAL1,
                  NULL, --NOME_REPRESENTANTE_LEGAL2,
                  NULL, --CELULAR,
                  NULL, --EMAIL,
                  NULL, --CNAE,
                  VAR_CD_LOGIN -- CD_LOGIN
              );                          
              COMMIT;
            
             EXCEPTION
               WHEN OTHERS THEN
                    ROLLBACK;
             END;            
      END LOOP;      
END;