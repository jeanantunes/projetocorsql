--------------------------------------------------------
--  DDL for Procedure PRC_RESUMO_IR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CORRET"."PRC_RESUMO_IR" 
(
  P_ANO_BASE           IN NUMBER,
  P_TIPO_CHAMADA       IN NUMBER,
  P_OUT_QTD_ATIVAS     OUT NUMBER,
  P_OUT_QTD_MF         OUT NUMBER,
  P_OUT_QTD_ERRO       OUT NUMBER,
  P_OUT_CUR_RESULTADO  OUT sys_refcursor
)
AS
BEGIN
  
  IF P_TIPO_CHAMADA = 4 THEN
    --ATIVAS
    SELECT COUNT(1) INTO P_OUT_QTD_ATIVAS FROM VW_CORRETORA_SITUACAO
    WHERE  SITUACAO = 'Ativo';
    
    P_OUT_QTD_MF := 100;
    
    P_OUT_QTD_ERRO := 2;    
  ELSIF P_TIPO_CHAMADA = 1 THEN
    
    PRC_PRE_FECHAMENTO_IR(P_ANO_BASE);
    
    SELECT  NVL(MAX(NR_NUM_QUANTIDADE_ATIVA),0),
            NVL(MAX(NR_NUM_QUANTIDADE_COM_INFORME),0),
            NVL(MAX(NR_NUM_QUANTIDADE_SEM_INFORME),0)
    INTO P_OUT_QTD_ATIVAS,P_OUT_QTD_MF,P_OUT_QTD_ERRO
    FROM TBOD_COR_FEC_INFORME_RESUMO
    WHERE NR_NR_ANO = P_ANO_BASE ;
        
  ELSIF  P_TIPO_CHAMADA = 2 THEN               
      
    OPEN P_OUT_CUR_RESULTADO FOR
    SELECT NM_EMPRESA_PARCEIRA,CD_TIPO_PESSOA,
    DT_VALID_FIS_JUR,
    NM_RESPONSAVEL,
    CD_RETENCAO,
    DS_RENDIMENTO,
    CD_EMPRESA_PAGADORA,
    NM_RAZAO_SOCIAL_PAGADORA,
    NR_CNPJ_PAGADORA,
    NR_CNPJ,
    CD_ESTABELECIMENTO,
    CD_TRIBUTO,
    NR_ALIQUOTA,
    DT_FATOR_GERADOR,
    NR_NR_MES_COMPETENCIA,
    CD_TIPO_QUITACAO,
    VL_BRUTO,
    VL_IR,
    VL_DEDUCAO,
    TBOD_COR_CORRETORA.CD_PARCEIRO,
    NR_NR_ANO_COMPETENCIA
    FROM VW_CORRETORA_SITUACAO
    INNER JOIN TBOD_COR_CORRETORA 
    ON VW_CORRETORA_SITUACAO.CD_PARCEIRO = TBOD_COR_CORRETORA.CD_PARCEIRO
    INNER JOIN TBOD_COR_FEC_INFORME_DETALHE
    ON    TBOD_COR_FEC_INFORME_DETALHE.CD_PARCEIRO = TBOD_COR_CORRETORA.CD_PARCEIRO
    WHERE  SITUACAO = 'Ativo'
    AND    NR_NR_ANO_COMPETENCIA  = P_ANO_BASE;
  
  ELSIF  P_TIPO_CHAMADA = 3 THEN
  
    OPEN P_OUT_CUR_RESULTADO FOR
    SELECT TBOD_COR_CORRETORA.CD_PARCEIRO,DT_VALIDADE_EBS,NM_EMPRESA_PARCEIRA,NM_FANTASIA,NR_CNPJ,
           NR_SUSEP,NR_PIS,ID_OPTANTE_SIMPLES,ID_CONTRATO,CD_CLASSIFICACAO_COMERCIAL
           CD_GRAU_RELACIONAMENTO,CD_TIPO_PESSOA,ID_ATIVO,CD_REGIONAL_COMERCIAL,CD_CONSULTOR
           DT_INCLUSAO,DT_ULTIMA_ATUALIZACAO,CD_USUARIO_ULTIMA_ATUALIZACAO,CD_USUARIO_INCLUSAO
    FROM VW_CORRETORA_SITUACAO
    INNER JOIN TBOD_COR_CORRETORA 
    ON VW_CORRETORA_SITUACAO.CD_PARCEIRO = TBOD_COR_CORRETORA.CD_PARCEIRO
    WHERE  SITUACAO = 'Ativo'
    AND    NOT EXISTS(SELECT 1 FROM TBOD_COR_FEC_INFORME_DETALHE
                      WHERE  TBOD_COR_CORRETORA.CD_PARCEIRO = TBOD_COR_FEC_INFORME_DETALHE.CD_PARCEIRO
                      AND    NR_NR_ANO_COMPETENCIA          = P_ANO_BASE);  
  END IF;

END;
 

/

  GRANT EXECUTE ON "CORRET"."PRC_RESUMO_IR" TO "USUCORRET";
  GRANT EXECUTE ON "CORRET"."PRC_RESUMO_IR" TO "R_USUCORRET";