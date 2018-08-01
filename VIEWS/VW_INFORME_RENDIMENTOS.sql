--------------------------------------------------------
--  DDL for View VW_INFORME_RENDIMENTOS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "CORRET"."VW_INFORME_RENDIMENTOS" ("RAZAO_SOCIAL", "CPF_CGC", "VALID_FIS_JUR", "RESPONSAVEL", "CODIGO_RETENCAO", "DESCRICAO_RENDIMENTO", "COD_EMPRESA_PAGADORA", "FONTE_PAGADORA_RAZAO_SOCIAL", "FONTE_PAGADORA_CNPJ", "COD_ESTAB", "COD_TRIBUTO", "IDENT_FIS_JUR", "NUM_DOCFIS", "ALIQUOTA", "COD_DARF", "DATA_FATOR_GERADOR", "ANO_COMPETENCIA", "MES_COMPETENCIA", "TP_QUITACAO", "VLR_BRUTO", "VLR_IR_RETIDO", "DEDUCAO", "SERIE_DOCFIS", "NUM_PROCESSO", "NUM_AP") AS 
  SELECT s04.razao_social RAZAO_SOCIAL,
    s04.CPF_CGC,
    TRUNC(SYSDATE) VALID_FIS_JUR,
    'ANDRE CARPINTEIRO BLANCO' RESPONSAVEL,
    8045 CODIGO_RETENCAO,
    'Comissões e corretagens pagos à PJ e serviços de propaganda prestados por PJ (Art. 53, Lei 7.450/85)' DESCRICAO_RENDIMENTO,
    s53.cod_empresa COD_EMPRESA_PAGADORA,
    ESTAB.RAZAO_SOCIAL FONTE_PAGADORA_RAZAO_SOCIAL,
    estab.cgc FONTE_PAGADORA_CNPJ,
    s53.cod_estab,
    s53.cod_tributo,
    S04.IDENT_FIS_JUR,
    S53.num_docfis,
    s53.aliquota,
    s53.cod_receita COD_DARF,
    s53.data_fator_gerador,
    s53.ano_competencia ANO_COMPETENCIA,
    s53.mes_competencia MES_COMPETENCIA,
    s53.ind_tipo_quitacao tp_quitacao,
    s53.vlr_bruto VLR_BRUTO,
    s53.vlr_ir_retido VLR_IR_RETIDO,
    s53.vlr_ded_inss_terc deducao,
    s53.serie_docfis,
    s53.num_processo,
    s53.num_ap
  FROM msaf.X53_RETENCAO_IRRF@lk_msafcorret S53,
    msaf.X04_PESSOA_FIS_JUR@lk_msafcorret S04,
    msaf.estabelecimento@lk_msafcorret estab
  WHERE S53.IDENT_FIS_JUR=S04.IDENT_FIS_JUR
  AND S53.COD_ESTAB      = ESTAB.COD_ESTAB
  AND S53.COD_EMPRESA    = ESTAB.COD_EMPRESA
  AND s53.cod_receita    = '804506';
  GRANT SELECT ON "CORRET"."VW_INFORME_RENDIMENTOS" TO "USUCORRET";
  GRANT SELECT ON "CORRET"."VW_INFORME_RENDIMENTOS" TO "CD_PORTALDOCORRETOR";
