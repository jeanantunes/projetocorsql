DECLARE
    CURSOR CUR_EST_CORRETORA IS 
    SELECT * 
    FROM TBOD_CORRETORA;
    --WHERE CD_CORRETORA BETWEEN 143 AND 145;
    
    REG_EST_CORRETORA CUR_EST_CORRETORA%ROWTYPE;      
    
    VAR_EST_CD_ENDERECO TBOD_ENDERECO.CD_ENDERECO%TYPE;
    
BEGIN
    OPEN CUR_EST_CORRETORA;
    LOOP
        FETCH CUR_EST_CORRETORA
        INTO REG_EST_CORRETORA;
            
        VAR_EST_CD_ENDERECO := 0;            
            
        BEGIN
            
            EXIT WHEN
               CUR_EST_CORRETORA%NOTFOUND;
            
            DBMS_OUTPUT.PUT_LINE('CORRETORA: ' || REG_EST_CORRETORA.CD_CORRETORA);   
                                                                                                               
            SELECT SEQ_TBOD_ENDERECO.NEXTVAL INTO VAR_EST_CD_ENDERECO FROM DUAL;

            DBMS_OUTPUT.PUT_LINE('VAR_EST_CD_ENDERECO: ' || VAR_EST_CD_ENDERECO);   
                  
            INSERT INTO TBOD_ENDERECO (
                 CD_ENDERECO /*NUMBER(10,0)	No		1*/
                ,LOGRADOURO /*VARCHAR2(150 BYTE)	Yes		2*/
                ,CEP /*VARCHAR2(15 BYTE)	No		3*/
                ,CIDADE /*VARCHAR2(150 BYTE)	Yes		4*/
                ,COMPLEMENTO /*VARCHAR2(100 BYTE)	Yes		5*/
                ,BAIRRO /*VARCHAR2(150 BYTE)	Yes		6*/
                ,UF /*VARCHAR2(2 BYTE)	Yes		7*/
                ,CD_TIPO_ENDERECO /*NUMBER(10,0)	Yes		8*/
                ,NUMERO /*VARCHAR2(10 BYTE)	Yes		9*/
            )
            SELECT
                 VAR_EST_CD_ENDERECO
                ,SUBSTR( CORENDE.DS_LOGRADOURO, 1, 150) /*VARCHAR2(200 BYTE)	No		2*/
                ,TO_CHAR( CORENDE.CD_CEP) /*NUMBER(8,0)	Yes		4*/
                ,CORENDE.NM_CIDADE /*VARCHAR2(90 BYTE)	No		6*/
                ,CORENDE.DS_COMPLEMENTO /*VARCHAR2(90 BYTE)	Yes		7*/
                ,CORENDE.NM_BAIRRO /*VARCHAR2(90 BYTE)	Yes		5*/
                ,CORENDE.SG_UF /*CHAR(2 BYTE)	Yes		8*/
                ,null /*,CD_TIPO_ENDERECO*/ /*NUMBER(10,0)	Yes		8*/
                ,CORENDE.NR_LOGRADOURO /*VARCHAR2(10 BYTE)	No		3*/
            FROM TBOD_COR_ENDERECO CORENDE  
            JOIN TBOD_COR_ENDERECO_CORRETORA CORENCO 
            ON CORENCO.CD_ENDERECO = CORENDE.CD_ENDERECO 
            JOIN TBOD_COR_CORRETORA CORCORR 
            ON CORCORR.CD_PARCEIRO = CORENCO.CD_PARCEIRO 
            WHERE CORCORR.CD_PARCEIRO = REG_EST_CORRETORA.CODIGO;
            
            UPDATE TBOD_CORRETORA 
            SET CD_ENDERECO = VAR_EST_CD_ENDERECO 
            WHERE CD_CORRETORA = REG_EST_CORRETORA.CD_CORRETORA;
            
        COMMIT;
        
        EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
        END;
        
    END LOOP;      

END;
