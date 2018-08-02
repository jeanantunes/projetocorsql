--------------------------------------------------------
--  DDL for View VWOD_COR_SUMARIO_VENDA
--------------------------------------------------------
/*
//201808021301 - esert - COR-528
COR-528:Serviço - Alteração View Dash Corretora Home
excluir vinculo forcaVenda x corretora
incluir vinculo venda x corretora
*/

  CREATE OR REPLACE FORCE VIEW "CORRET"."VWOD_COR_SUMARIO_VENDA" 
  (
  "CD_EMPRESA", 
  "EMP_DCMS", 
  "TOT_VIDAS", 
  "VALOR_TOTAL", 
  "CD_FORCA_VENDA", 
  "NOME_FORCA", 
  "CPF", 
  "CD_CORRETORA", 
  "NOME_CORRETORA", 
  "CNPJ", 
  "DT_VENDA", 
  "TIPO_VENDA"
  ) AS 
  SELECT 
       ''                                  AS cd_empresa, 
       ''                                  AS emp_dcms, 
       Count(1)                            AS tot_vidas, 
       SUM(p.valor_anual + p.valor_mensal) valor_total, 
       fv.cd_forca_venda, 
       fv.nome                             AS NOME_FORCA, 
       fv.cpf, 
       fv.cd_corretora, 
       cor.nome                            AS NOME_CORRETORA, 
       cor.cnpj,
       v.dt_venda,
       Decode (v.cd_empresa, NULL, 'PF', 'PME') AS TIPO_VENDA 
FROM   tbod_venda v, 
       tbod_venda_vida vv, 
       tbod_empresa emp, 
       tbod_corretora cor, 
       tbod_forca_venda fv, 
       tbod_plano p 
WHERE  vv.cd_venda = v.cd_venda 
       --and v.cd_forca_vendas is not null 
       AND v.cd_empresa = emp.cd_empresa (+) 
       AND v.cd_forca_vendas = fv.cd_forca_venda
       --AND cor.cd_corretora = fv.cd_corretora --//COR-528 - exc
       AND v.cd_corretora = cor.cd_corretora --//COR-528 - inc
       AND p.cd_plano = v.cd_plano 
GROUP  BY '', 
          '', 
          fv.cd_forca_venda, 
          fv.nome, 
          fv.cpf, 
          fv.cd_corretora, 
          cor.nome, 
          cor.cnpj,
          v.dt_venda,          
          Decode (v.cd_empresa, NULL, 'PF', 
                                'PME')
ORDER  BY nome_forca;
