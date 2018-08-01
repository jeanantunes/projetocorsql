--------------------------------------------------------
--  DDL for Procedure PRC_IMPORTAR_CORRETORA_EBS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CORRET"."PRC_IMPORTAR_CORRETORA_EBS" 
AS
  CD_PARCEIRO_ULTIMO          TBOD_COR_CORRETORA.CD_PARCEIRO%TYPE;
  CD_CNPJ_ULTIMO              TBOD_COR_CORRETORA.NR_CNPJ%TYPE;
  DS_BANCO                    VARCHAR2(200);
  CEP                         NUMBER(10);
  TIPO_PESSOA                 CHAR(1);
  QTD_ORG                     NUMBER(3);
  CD_PARCEIRO_EXISTENTE       TBOD_COR_CORRETORA.CD_PARCEIRO%TYPE;
BEGIN

  FOR regCorretora in (SELECT NOME_CORRETOR as NM_EMPRESA_PARCEIRA, 
                              NOME_CORRETOR as NM_FANTASIA, 
                              TO_NUMBER(REGEXP_REPLACE(CPF_CNPJ,'(\.|-|/)','')) as NR_CNPJ,
                              AGENCIA as NR_AGENCIA,
                              TO_CHAR(BANCO) as NM_BANCO,
                              TO_NUMBER(BANCO) as NR_BANCO,
                              CONTA_CORRENTE as NR_CONTA_CORRENTE,
                              CEP,
                              BAIRRO,
                              RUA,
                              CIDADE,
                              ESTADO,
                              ORG_ID,
                              TIPO_CORRETOR,
                              DT_INATIVACAO_SITE
                              FROM XODP_AP_VENDOR_PORTAL_V@LK_EBSCORRET 
                              ORDER BY TO_NUMBER(REGEXP_REPLACE(CPF_CNPJ,'(\.|-|/)','')))
  LOOP
    
    /*select MAX(BANK_NAME) into DS_BANCO from
    (
    SELECT * FROM VW_BANCO 
    WHERE  regexp_like(BANK_NUMBER, '^-?[[:digit:],.]*$')
    )
    where BANK_NUMBER =  lpad(to_char(regCorretora.NR_BANCO),3,'0');*/
    
    IF regCorretora.TIPO_CORRETOR LIKE '%JURIDICA%' THEN
      TIPO_PESSOA := 'J';
    ELSE
      TIPO_PESSOA := 'F';
    END IF;
    
    IF((regCorretora.NR_CNPJ <> CD_CNPJ_ULTIMO) OR (CD_CNPJ_ULTIMO IS NULL)) THEN
      
      CD_CNPJ_ULTIMO := regCorretora.NR_CNPJ;          
      
      CD_PARCEIRO_EXISTENTE := 0;
      
      SELECT NVL(MAX(CD_PARCEIRO),0) INTO CD_PARCEIRO_EXISTENTE FROM TBOD_COR_CORRETORA
      WHERE NR_CNPJ = CD_CNPJ_ULTIMO;
      
      IF CD_PARCEIRO_EXISTENTE = 0 THEN     
        
        SELECT SEQ_TBOD_COR_CORRETORA.NEXTVAL INTO CD_PARCEIRO_ULTIMO
        FROM DUAL;
  
        INSERT INTO TBOD_COR_CORRETORA(CD_PARCEIRO,
                                       NM_EMPRESA_PARCEIRA,
                                       NM_FANTASIA,
                                       NR_CNPJ,
                                       ID_OPTANTE_SIMPLES,
                                       ID_CONTRATO,
                                       ID_ATIVO,
                                       CD_TIPO_PESSOA)  
        VALUES( CD_PARCEIRO_ULTIMO, 
                regCorretora.NM_EMPRESA_PARCEIRA,
                regCorretora.NM_FANTASIA,
                regCorretora.NR_CNPJ,
                'N',
                'N',
                'S',
                TIPO_PESSOA);                                
                
      ELSE        
        
        CD_PARCEIRO_ULTIMO := CD_PARCEIRO_EXISTENTE;
        
        UPDATE TBOD_COR_CORRETORA SET NM_EMPRESA_PARCEIRA = regCorretora.NM_EMPRESA_PARCEIRA,
                                       NM_FANTASIA        = regCorretora.NM_FANTASIA,
                                       CD_TIPO_PESSOA     = TIPO_PESSOA
        WHERE CD_PARCEIRO = CD_PARCEIRO_ULTIMO;
      
        DELETE FROM TBOD_COR_ENDERECO_CORRETORA WHERE cd_parceiro = CD_PARCEIRO_ULTIMO;
        DELETE FROM TBOD_COR_ORG_PAGADORA WHERE cd_parceiro = CD_PARCEIRO_ULTIMO;
        
      END IF;        
      
      IF regCorretora.rua IS NOT NULL THEN           
                    
          INSERT INTO TBOD_COR_ENDERECO(CD_CEP,CD_ENDERECO,DS_LOGRADOURO,NR_LOGRADOURO,NM_BAIRRO,NM_CIDADE,DS_COMPLEMENTO,SG_UF)
          VALUES( TO_NUMBER(SUBSTR(REGEXP_REPLACE(regCorretora.CEP,'[^0-9]*',''),0,8)),seq_tbod_COR_endereco.nextval,regCorretora.rua,0,regCorretora.bairro,regCorretora.cidade,null,regCorretora.estado);      
          
          INSERT INTO TBOD_COR_ENDERECO_CORRETORA(cd_endereco,cd_parceiro) VALUES(seq_tbod_COR_endereco.CURRVAL,CD_PARCEIRO_ULTIMO);
          
      END IF;
      
    END IF;
    
    SELECT COUNT(1) INTO QTD_ORG FROM TBOD_COR_ORG_PAGADORA
    WHERE CD_PARCEIRO = CD_PARCEIRO_ULTIMO
    AND   CD_ORG_PAGADORA = regCorretora.ORG_ID;
    
    IF QTD_ORG = 0 THEN
      INSERT INTO TBOD_COR_ORG_PAGADORA(CD_PARCEIRO,CD_ORG_PAGADORA,DT_INATIVACAO_EBS)
      VALUES(CD_PARCEIRO_ULTIMO,regCorretora.ORG_ID,regCorretora.DT_INATIVACAO_SITE);
    END IF;    
  END LOOP;
END;
 

/

  GRANT EXECUTE ON "CORRET"."PRC_IMPORTAR_CORRETORA_EBS" TO "USUCORRET";
  GRANT EXECUTE ON "CORRET"."PRC_IMPORTAR_CORRETORA_EBS" TO "R_USUCORRET";
