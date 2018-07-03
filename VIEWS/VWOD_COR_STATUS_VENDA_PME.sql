--------------------------------------------------------
--  DDL for View VWOD_COR_STATUS_VENDA_PME
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "CORRET"."VWOD_COR_STATUS_VENDA_PME" ("CNPJ_CORRETORA", "CORRETORA", "CPF_FORCA", "FORCA", "CD_EMPRESA", "CNPJ_PME", "RAZAO_SOCIAL", "EMP_DCMS", "NOME_FANTASIA", "STATUS") AS 
  SELECT cor.cnpj cnpj_corretora, 
       cor.nome corretora, 
       fv.cpf   cpf_forca, 
       fv.nome  AS forca, 
       emp.cd_empresa, 
       emp.cnpj cnpj_pme, 
       emp.razao_social, 
       emp.emp_dcms, 
       emp.nome_fantasia, 
       CASE 
         WHEN Count(txt.ds_erro_registro) > 0 THEN 6 
         WHEN Count(txt.cod_odonto) > 0 THEN 5 
         WHEN emp.emp_dcms IS NULL THEN 3 
         ELSE 4 
       END      AS status 
FROM   tbod_empresa emp, 
       tbod_venda venda, 
       tbod_forca_venda fv, 
       tbod_corretora cor, 
       tbod_txt_importacao txt 
WHERE  1 = 1 
       AND venda.cd_empresa = emp.cd_empresa 
       AND venda.cd_forca_vendas = fv.cd_forca_venda 
       AND cor.cd_corretora = fv.cd_corretora 
       AND emp.emp_dcms = txt.cd_empresa (+) 
GROUP  BY cor.cnpj, 
          cor.nome, 
          fv.cpf, 
          fv.nome, 
          emp.cd_empresa, 
          emp.cnpj, 
          emp.razao_social, 
          emp.emp_dcms, 
          emp.nome_fantasia;
