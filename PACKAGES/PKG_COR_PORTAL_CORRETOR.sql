--------------------------------------------------------
--  DDL for Package PKG_COR_PORTAL_CORRETOR
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "CORRET"."PKG_COR_PORTAL_CORRETOR" AS 

PROCEDURE PRC_GRAVAR_USER
(
  P_USER_PASSWORD IN VARCHAR2,
  P_USER_NAME     IN VARCHAR2,
  P_USER_EMAIL    IN VARCHAR2,
  P_OUT_TYPE_CODE     OUT VARCHAR2,
  P_OUT_USER_CODE     OUT NUMBER
);

/*Valida usuario do portal do corretor
  Retorna P_OUT_CD_RET:
    0 - Login OK
    1 - Usuario invalido
    2 - Corretor nao existe
    3 - Numero de Tentativas excedido
    4 - Senha invalida
  Retorna P_OUT_NM_USUARIO, nome do usuario, caso P_OUT_CD_RET = 0      
*/
PROCEDURE PRC_VALIDAR_USUARIO
(
  P_USUARIO               IN VARCHAR2, --Usuario Login
  P_SENHA                 IN VARCHAR2, --Senha do Usuario
  P_CPF_CNPJ_CORRETORA    IN VARCHAR2, --CPF ou CNPJ da Corretora
  P_OUT_CD_RET            OUT NUMBER, --Codigo de Retorno,
  P_OUT_NM_USUARIO        OUT VARCHAR2,--Nome do Usuario caso o retorno seja 0
  P_OUT_USER_CODE         OUT NUMBER --Codigo do usuario na TBOD_USER
);

/*Valida usuario do portal do corretor e altera a senha para a nova
  Retorna P_OUT_CD_RET:
    0 - Login OK
    1 - Usuario ou Senha invalidos
    2 - Corretor nao existe
  Retorna P_OUT_NM_USUARIO, nome do usuario, caso P_OUT_CD_RET = 0      
*/
PROCEDURE PRC_ALTERAR_SENHA_USUARIO
(
  P_USUARIO               IN VARCHAR2, --Usuario Login
  P_CPF_CNPJ_CORRETORA    IN VARCHAR2, --CNPJ ou cpf da Corretora
  P_SENHA_ANTIGA          IN VARCHAR2, --Senha do Usuario
  P_SENHA_NOVA          IN VARCHAR2, --Senha do Usuario
  P_OUT_CD_RET            OUT NUMBER --Codigo de Retorno,
);

/*Busca o usuario do portal do corretor e altera a senha para a nova
  Retorna P_OUT_CD_RET:
    0 - Login OK
    1 - Usuario ou Senha invalidos
    2 - Corretor nao existe
  Retorna P_OUT_NM_USUARIO, nome do usuario, caso P_OUT_CD_RET = 0      
*/
PROCEDURE PRC_REGERAR_SENHA_USUARIO
(
  P_USUARIO               IN VARCHAR2, --Usuario Login
  P_CPF_CNPJ_CORRETORA    IN VARCHAR2, 
  P_SENHA_NOVA          IN VARCHAR2, --Senha do Usuario
  P_OUT_CD_RET            OUT NUMBER --Codigo de Retorno,
);



/*Valida usuario do portaladmin e retorna o nome do usuario logado e suas respectivas funcionalidades
    0 - Login OK
    1 - Usuario ou Senha invalidos
    2 - Corretor nao existe
  Retorna P_OUT_NM_USUARIO, nome do usu¿rio, caso P_OUT_CD_RET = 0      
*/
PROCEDURE PRC_LOGIN_USUARIO_ADMIN
(
  P_NOME_USUARIO        IN INTR_CLN_MASTER.NOME_USUARIO%TYPE,
  P_SENHA               IN  INTR_CLN_MASTER.SENHA%TYPE,
  P_OUT_CD_RET          OUT NUMBER,
  P_NOME_COMPLETO       OUT INTR_CLN_MASTER.NOME_COMPLETO%TYPE,
  P_FUNCIONALIDADES     OUT SYS_REFCURSOR
);

/*
Atualiza o numero de tentativas do usuario
*/
PROCEDURE PRC_ATUALIZAR_ATTEMPT(P_USER_CODE IN NUMBER, P_QTD_TENTATIVA NUMBER);

/*
Atualiza a SITUACAO do usuario
*/
PROCEDURE PRC_ATUALIZA_SITUACAO_USUARIO
(
  P_USER_CODE               IN NUMBER, --Usuario Login
  P_CD_SITUACAO             IN NUMBER
);

END PKG_COR_PORTAL_CORRETOR;
 

/

  GRANT EXECUTE ON "CORRET"."PKG_COR_PORTAL_CORRETOR" TO "USUCORRET";
  GRANT EXECUTE ON "CORRET"."PKG_COR_PORTAL_CORRETOR" TO "R_USUCORRET";
