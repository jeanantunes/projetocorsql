--------------------------------------------------------
--  DDL for View VW_REGIONAL_COMERCIAL
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "CORRET"."VW_REGIONAL_COMERCIAL" ("CD_REGIONAL_COMERCIAL", "DS_REGIONAL", "DS_REGIONAL_COMERCIAL", "DS_EMAIL", "NR_TELEFONE") AS 
  SELECT CD_REGIONAL_COMERCIAL, DS_REGIONAL,
    DS_REGIONAL || ' - ' || DS_REGIONAL_COMERCIAL AS DS_REGIONAL_COMERCIAL,
    DS_EMAIL,
    NR_TELEFONE
  FROM    
    (SELECT tbod_filial.CD_FILIAL AS CD_REGIONAL_COMERCIAL,
      DS_REGIONAL,
      DS_FILIAL AS DS_REGIONAL_COMERCIAL,
      DS_EMAIL,
      CASE WHEN NR_TELEFONE IS NULL 
      THEN 
        NULL 
      ELSE 
        CASE WHEN NR_DDD IS NULL THEN 
          TRIM(TO_CHAR(NR_TELEFONE))
        ELSE
          TRIM(TO_CHAR(NR_DDD)) || '-' || TRIM(TO_CHAR(NR_TELEFONE))
        END
      END NR_TELEFONE
    FROM ADMPWEB.tbod_filial,
      ADMPWEB.tbod_regional,
      ADMPWEB.tbod_unidade_odontoprev
    WHERE tbod_filial.cd_regional           = tbod_regional.cd_regional
    AND tbod_unidade_odontoprev.cd_unidade  = tbod_regional.cd_unidade
    AND UPPER(NM_UNIDADE) NOT LIKE '%BRADESCO%'
    AND ADMPWEB.tbod_filial.fl_exibir_portal = 'S'
    )
    WHERE CD_REGIONAL_COMERCIAL IN
    (SELECT MAX(cd_filial)
    FROM ADMPWEB.tbod_filial SECUNDARIO
    WHERE SECUNDARIO.DS_FILIAL = DS_REGIONAL_COMERCIAL
    )
    ORDER BY DS_REGIONAL_COMERCIAL
 ;
  GRANT SELECT ON "CORRET"."VW_REGIONAL_COMERCIAL" TO "USUCORRET";
  GRANT SELECT ON "CORRET"."VW_REGIONAL_COMERCIAL" TO "R_USUCORRET";
  GRANT SELECT ON "CORRET"."VW_REGIONAL_COMERCIAL" TO "CD_PORTALDOCORRETOR";
