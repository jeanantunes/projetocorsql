--------------------------------------------------------
--  DDL for Package Body PKG_COR_PORTAL_CORRETOR
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "CORRET"."PKG_COR_PORTAL_CORRETOR" AS
qtd_tentativas_senha_maximo CONSTANT number(1) := 3;

PROCEDURE PRC_GRAVAR_USER
(
  P_USER_PASSWORD IN VARCHAR2,
  P_USER_NAME     IN VARCHAR2,
  P_USER_EMAIL    IN VARCHAR2,
  P_OUT_TYPE_CODE     OUT VARCHAR2,
  P_OUT_USER_CODE     OUT NUMBER
)
AS
  senha  varchar2(30);
BEGIN
  
  select ADMPROD.fu_hash_login(P_USER_PASSWORD) into senha from dual;
  
  SELECT SEQ_COR_USER.nextval INTO P_OUT_USER_CODE FROM DUAL;
  
  P_OUT_TYPE_CODE := 'COR';
  
  pkg_portal_corretor.prc_incluir_usuario(P_OUT_TYPE_CODE,P_OUT_USER_CODE,senha,P_USER_NAME,P_USER_NAME,P_USER_EMAIL);
  
END;

PROCEDURE PRC_ATUALIZAR_ATTEMPT(P_USER_CODE IN NUMBER, P_QTD_TENTATIVA NUMBER)
AS
BEGIN
  
  pkg_portal_corretor.prc_alterar_tentativa('COR',P_USER_CODE,P_QTD_TENTATIVA);
  
END;

PROCEDURE PRC_RETORNAR_USUARIO(P_USUARIO               IN VARCHAR2,
                               P_CORRETORA             IN  NUMBER,
                               P_OUT_NM_USUARIO        OUT VARCHAR2,
                               P_OUT_USER_CODE         OUT NUMBER,
                               P_OUT_USER_PASSWORD     OUT VARCHAR2,
                               P_OUT_QTD_TENTATIVA     OUT NUMBER,
                               P_OUT_CD_SITUACAO      OUT NUMBER
                               )
AS
BEGIN
    SELECT NM_FUNCIONARIO_CORRETORA, U.USER_CODE, USER_PASSWORD, NVL(USER_LOGON_ATTEMPT,0), F.CD_SITUACAO_FUNCIONARIO_CORRET
    INTO   P_OUT_NM_USUARIO,P_OUT_USER_CODE,P_OUT_USER_PASSWORD,P_OUT_QTD_TENTATIVA, P_OUT_CD_SITUACAO
    FROM   TBOD_COR_FUNCIONARIO_CORRETORA F INNER JOIN TBOD_USER U ON F.USER_CODE = U.USER_CODE AND F.TYPE_CODE = U.TYPE_CODE
    WHERE  NR_CPF      = P_USUARIO
    AND    CD_PARCEIRO = P_CORRETORA;
  END;

PROCEDURE PRC_VALIDAR_USUARIO
(
  P_USUARIO               IN VARCHAR2, 
  P_SENHA                 IN VARCHAR2, 
  P_CPF_CNPJ_CORRETORA    IN VARCHAR2, 
  P_OUT_CD_RET            OUT NUMBER,
  P_OUT_NM_USUARIO        OUT VARCHAR2,
  P_OUT_USER_CODE         OUT NUMBER
)
AS
  senha_usuario          VARCHAR2(30);
  codigo_corretora       NUMBER(8);  
  tentativas             NUMBER(8);
  codigo_situacao       NUMBER(8);  
  status                VARCHAR2(30);
BEGIN
  
  SELECT MAX(CD_PARCEIRO) INTO codigo_corretora
  FROM TBOD_COR_CORRETORA
  WHERE NR_CNPJ = P_CPF_CNPJ_CORRETORA;
  
  IF codigo_corretora IS NULL THEN
     P_OUT_CD_RET:=2;
  ELSE
        
        PRC_RETORNAR_USUARIO(P_USUARIO,codigo_corretora,P_OUT_NM_USUARIO,P_OUT_USER_CODE,senha_usuario,tentativas, codigo_situacao);
        
        IF P_OUT_USER_CODE IS NULL OR codigo_situacao = 2 THEN
          P_OUT_CD_RET:=1;
        ELSE
          IF senha_usuario <> ADMPROD.fu_hash_login(P_SENHA)  then
            
            PRC_ATUALIZAR_ATTEMPT(P_OUT_USER_CODE,tentativas + 1);
            
            IF (tentativas + 1) >= qtd_tentativas_senha_maximo OR codigo_situacao = 3 then 
               P_OUT_CD_RET:=3;
                PRC_ATUALIZA_SITUACAO_USUARIO(P_OUT_USER_CODE, 3);
            ELSE 
              P_OUT_CD_RET:=4;
            END IF;
            
          ELSE
            IF (tentativas + 1) >= qtd_tentativas_senha_maximo OR codigo_situacao = 3 then 
               P_OUT_CD_RET:=3;
               PRC_ATUALIZA_SITUACAO_USUARIO(P_OUT_USER_CODE, 3);
            ELSE
              SELECT SITUACAO INTO status FROM VW_CORRETORA_SITUACAO WHERE CD_PARCEIRO = codigo_corretora;
              IF Upper(status) = 'INATIVO' then
                  P_OUT_CD_RET:=1;
              ELSE  
                 P_OUT_CD_RET:=0;
                 PRC_ATUALIZAR_ATTEMPT(P_OUT_USER_CODE,0);
              END IF;
            END IF;
          END IF;
        END IF;
        
  END IF;  
END;


PROCEDURE PRC_ALTERAR_SENHA_USUARIO
(
  P_USUARIO               IN VARCHAR2, --Usuario Login
  P_CPF_CNPJ_CORRETORA    IN VARCHAR2, 
  P_SENHA_ANTIGA          IN VARCHAR2, --Senha do Usuario
  P_SENHA_NOVA          IN VARCHAR2, --Senha do Usuario
  P_OUT_CD_RET            OUT NUMBER --Codigo de Retorno,
)
AS
  P_OUT_NM_USUARIO VARCHAR2(200);
  P_OUT_USER_CODE NUMBER;
  
BEGIN   
        PKG_COR_PORTAL_CORRETOR.PRC_VALIDAR_USUARIO(
          P_USUARIO => P_USUARIO,
          P_SENHA => P_SENHA_ANTIGA,
          P_CPF_CNPJ_CORRETORA => P_CPF_CNPJ_CORRETORA,
          P_OUT_CD_RET => P_OUT_CD_RET,
          P_OUT_NM_USUARIO => P_OUT_NM_USUARIO,
          P_OUT_USER_CODE => P_OUT_USER_CODE
        );                        
        
        IF P_OUT_CD_RET IS NULL THEN
          P_OUT_CD_RET:=1;
        ELSE IF P_OUT_CD_RET = 0 THEN           
        
            PKG_PORTAL_CORRETOR.PRC_ALTERAR_SENHA('COR',P_OUT_USER_CODE,ADMPROD.fu_hash_login(P_SENHA_NOVA)); 
            PRC_ATUALIZAR_ATTEMPT(P_OUT_USER_CODE,0);
        END IF;
  END IF;  
END;


PROCEDURE PRC_REGERAR_SENHA_USUARIO
(
  P_USUARIO               IN VARCHAR2, --Usuario Login
  P_CPF_CNPJ_CORRETORA    IN VARCHAR2, 
  P_SENHA_NOVA          IN VARCHAR2, --Senha do Usuario
  P_OUT_CD_RET            OUT NUMBER --Codigo de Retorno,
)
AS
  P_OUT_NM_USUARIO VARCHAR2(200);
  P_OUT_USER_CODE NUMBER;
  P_SENHA_ANTIGA VARCHAR2(200);
  P_OUT_TENTATIVA NUMBER;
  P_OUT_CD_PARCEIRO NUMBER;
  P_OUT_SITUACAO NUMBER;
BEGIN   

SELECT CD_PARCEIRO INTO P_OUT_CD_PARCEIRO
FROM TBOD_COR_CORRETORA WHERE NR_CNPJ = P_CPF_CNPJ_CORRETORA;

  P_SENHA_ANTIGA := '';
  
        PRC_RETORNAR_USUARIO(
        P_USUARIO,
        P_OUT_CD_PARCEIRO,
        P_OUT_NM_USUARIO,
        P_OUT_USER_CODE,
        P_SENHA_ANTIGA,
        P_OUT_TENTATIVA, 
        P_OUT_SITUACAO);                 
         
        PKG_PORTAL_CORRETOR.PRC_ALTERAR_SENHA('COR',P_OUT_USER_CODE,ADMPROD.fu_hash_login(P_SENHA_NOVA));
        PRC_ATUALIZAR_ATTEMPT(P_OUT_USER_CODE,0);
        PRC_ATUALIZA_SITUACAO_USUARIO(P_OUT_USER_CODE, 1);
        
    P_OUT_CD_RET := 0;
END;




PROCEDURE PRC_ATUALIZA_SITUACAO_USUARIO
(
  P_USER_CODE               IN NUMBER, --Usuario Login
  P_CD_SITUACAO             IN NUMBER
)
AS
BEGIN
 update TBOD_COR_FUNCIONARIO_CORRETORA 
                set CD_SITUACAO_FUNCIONARIO_CORRET = P_CD_SITUACAO
                WHERE USER_CODE = P_USER_CODE
                AND TYPE_CODE = 'COR';


END;


PROCEDURE PRC_LOGIN_USUARIO_ADMIN
(
  P_NOME_USUARIO        IN INTR_CLN_MASTER.NOME_USUARIO%TYPE,
  P_SENHA               IN  INTR_CLN_MASTER.SENHA%TYPE,
  P_OUT_CD_RET          OUT NUMBER,
  P_NOME_COMPLETO       OUT INTR_CLN_MASTER.NOME_COMPLETO%TYPE,
  P_FUNCIONALIDADES     OUT SYS_REFCURSOR
)
AS 
P_ID_MASTER  INTR_CLN_MASTER.ID_MASTER%TYPE;
P_COUNT_USERS NUMBER;
BEGIN 

select count(*) INTO P_COUNT_USERS
  from INTR_CLN_MASTER 
  WHERE NOME_USUARIO = P_NOME_USUARIO
  AND  TRIM(SENHA) like P_SENHA;

 IF P_COUNT_USERS = 1  THEN
  select NOME_COMPLETO, ID_MASTER INTO P_NOME_COMPLETO, P_ID_MASTER
  from INTR_CLN_MASTER 
  WHERE NOME_USUARIO = P_NOME_USUARIO
  AND  TRIM(SENHA) like P_SENHA;

 

    OPEN P_FUNCIONALIDADES
    FOR 
      SELECT DISTINCT NM_ROLE 
      FROM TB_ACESSO_ROLES AC
      INNER JOIN 
        TB_ACESSO_USER_ROLE AUC ON
        AUC.CD_ROLE = AC.CD_ROLE
      WHERE 
       ID_MASTER = P_ID_MASTER;
    
    P_OUT_CD_RET := 0;
   
  ELSE
    P_OUT_CD_RET := 1;
  END IF;

END;


END PKG_COR_PORTAL_CORRETOR;

/

  GRANT EXECUTE ON "CORRET"."PKG_COR_PORTAL_CORRETOR" TO "USUCORRET";
  GRANT EXECUTE ON "CORRET"."PKG_COR_PORTAL_CORRETOR" TO "R_USUCORRET";
