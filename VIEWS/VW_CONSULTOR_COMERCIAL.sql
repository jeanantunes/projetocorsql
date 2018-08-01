--------------------------------------------------------
--  DDL for View VW_CONSULTOR_COMERCIAL
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "CORRET"."VW_CONSULTOR_COMERCIAL" ("CD_CONSULTOR", "CD_REGIONAL_COMERCIAL", "NM_CONSULTOR") AS 
  SELECT Intr_cln_master.ID_MASTER AS CD_CONSULTOR,
    tbod_filial.cd_filial          AS CD_REGIONAL_COMERCIAL,
    NOME_COMPLETO                  AS NM_CONSULTOR
  FROM ADMPWEB.Intr_cln_master,
    ADMPWEB.tbod_gestor_consultor,
    ADMPWEB.tbod_gestor,
    ADMPWEB.tbod_filial
  WHERE Intr_cln_master.ID_MASTER = tbod_gestor_consultor.ID_MASTER
  AND tbod_gestor.cd_gestor       = tbod_gestor_consultor.cd_gestor
  AND tbod_filial.cd_filial       = tbod_gestor.cd_filial
  AND ativo                       = 'S'
  AND tbod_filial.fl_ativo        = 'S'
 ;
  GRANT SELECT ON "CORRET"."VW_CONSULTOR_COMERCIAL" TO "USUCORRET";
  GRANT SELECT ON "CORRET"."VW_CONSULTOR_COMERCIAL" TO "R_USUCORRET";
  GRANT SELECT ON "CORRET"."VW_CONSULTOR_COMERCIAL" TO "CD_PORTALDOCORRETOR";
