--------------------------------------------------------
--  DDL for Procedure PRC_FECHAMENTO_INFORME_IR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CORRET"."PRC_FECHAMENTO_INFORME_IR" (P_ANO_BASE NUMBER)
AS
  UltimoRegistro VARCHAR2(300) DEFAULT NULL;
BEGIN
  
  DELETE FROM TBOD_COR_INFORME_IR_DETALHE
  WHERE CD_INFORME_IR_CABECALHO IN 
  (SELECT CD_INFORME_IR_CABECALHO FROM TBOD_COR_INFORME_IR_CABECALHO 
   WHERE NR_NR_ANO = P_ANO_BASE);
  
  DELETE FROM TBOD_COR_INFORME_IR_CABECALHO
  WHERE NR_NR_ANO = P_ANO_BASE;
    
  FOR regInforme in 
  ( SELECT NR_CNPJ as CPF_CGC, NR_CNPJ_PAGADORA as FONTE_PAGADORA_CNPJ,
    NM_RAZAO_SOCIAL_PAGADORA FONTE_PAGADORA_RAZAO_SOCIAL,
    DT_VALID_FIS_JUR VALID_FIS_JUR,
    NM_RESPONSAVEL RESPONSAVEL,
    TBOD_COR_CORRETORA.CD_PARCEIRO AS CD_PARCEIRO,
    NR_NR_MES_COMPETENCIA AS MES_COMPETENCIA,
    CD_RETENCAO AS CODIGO_RETENCAO,
    DS_RENDIMENTO AS DESCRICAO_RENDIMENTO,
    VL_BRUTO AS VLR_BRUTO,
    VL_IR AS VLR_IR_RETIDO
    FROM TBOD_COR_FEC_INFORME_DETALHE
    INNER JOIN TBOD_COR_CORRETORA 
    ON TBOD_COR_FEC_INFORME_DETALHE.CD_PARCEIRO = TBOD_COR_CORRETORA.CD_PARCEIRO
    WHERE  NR_NR_ANO_COMPETENCIA  = P_ANO_BASE 
    ORDER BY NR_CNPJ,NR_CNPJ_PAGADORA)    
    LOOP
    
      IF(regInforme.CPF_CGC || regInforme.FONTE_PAGADORA_CNPJ <> UltimoRegistro) OR (UltimoRegistro IS NULL) THEN
        UltimoRegistro := regInforme.CPF_CGC || regInforme.FONTE_PAGADORA_CNPJ;
        
        INSERT INTO TBOD_COR_INFORME_IR_CABECALHO(NM_FONTE_PAGADORA
        ,NR_CPF_CNPJ_FONTE_PAGADORA
        ,DS_INFORMACOES_COMPLEMENTARES
        ,DT_RESPONSAVEL
        ,NM_RESPONSAVEL
        ,CD_INFORME_IR_CABECALHO
        ,CD_PARCEIRO
        ,NR_NR_ANO)
        VALUES(regInforme.FONTE_PAGADORA_RAZAO_SOCIAL,regInforme.FONTE_PAGADORA_CNPJ,
        NULL,regInforme.VALID_FIS_JUR,regInforme.RESPONSAVEL,
        SEQ_TBOD_COR_INF_IR_CAB.NEXTVAL,regInforme.CD_PARCEIRO,
        P_ANO_BASE);
      END IF;
      
      INSERT INTO TBOD_COR_INFORME_IR_DETALHE(NR_NR_MES
      ,CD_RETENCAO
      ,DS_RENDIMENTO
      ,VL_RENDIMENTO
      ,VL_IMPOSTO_RETIDO
      ,CD_INFORME_IR_CABECALHO
      ,CD_INFORME_IR_DETALHE)
      VALUES(regInforme.MES_COMPETENCIA,regInforme.CODIGO_RETENCAO,
             regInforme.DESCRICAO_RENDIMENTO,regInforme.VLR_BRUTO,
             regInforme.VLR_IR_RETIDO,SEQ_TBOD_COR_INF_IR_CAB.CURRVAL,
             SEQ_TBOD_COR_INF_IR_DET.NEXTVAL);          
    END LOOP;
END;
 

/

  GRANT EXECUTE ON "CORRET"."PRC_FECHAMENTO_INFORME_IR" TO "USUCORRET";
  GRANT EXECUTE ON "CORRET"."PRC_FECHAMENTO_INFORME_IR" TO "R_USUCORRET";