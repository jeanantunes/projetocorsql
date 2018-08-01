--------------------------------------------------------
--  DDL for View VWOD_COR_CRITICA_PME
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "CORRET"."VWOD_COR_CRITICA_PME" ("CNPJ", "CORRETORA", "CPF", "FORCA", "CD_EMPRESA", "EMP_DCMS", "NOME_FANTASIA", "CRITICAS") AS 
  SELECT cor.cnpj,
       cor.nome corretora,
       fv.cpf,
       fv.nome  AS forca,
       emp.cd_empresa,
       emp.emp_dcms,
       emp.nome_fantasia,
       Count(1) criticas
FROM   tbod_empresa emp,
       tbod_venda venda,
       tbod_forca_venda fv,
       tbod_corretora cor,
       tbod_txt_importacao txt
WHERE  1 = 1
       AND emp.emp_dcms IS NOT NULL
       AND venda.cd_empresa = emp.cd_empresa
       AND venda.cd_forca_vendas = fv.cd_forca_venda
       AND cor.cd_corretora = fv.cd_corretora
       AND txt.cd_empresa = emp.emp_dcms
       AND txt.cod_odonto IS NOT NULL
GROUP  BY cor.cnpj,
          cor.nome,
          fv.cpf,
          fv.nome,
          emp.cd_empresa,
          emp.emp_dcms,
          emp.nome_fantasia;
