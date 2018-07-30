--------------------------------------------------------
--  DDL for View VWOD_COR_PF_OK
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "CORRET"."VWOD_COR_PF_OK" ("NR_ATENDIMENTO", "DS_ERRO_REGISTRO", "COD_ODONTO", "NOME", "NR_IMPORTACAO", "FORCA", "CPF", "CORRETORA", "CNPJ") AS 
  SELECT DISTINCT( i.nr_atendimento ), 
                 i.ds_erro_registro, 
                 i.cod_odonto, 
                 i.nome, 
                 nr_importacao, 
                 fv.nome forca, 
                 fv.cpf, 
                 c.nome  AS corretora, 
                 c.cnpj 
  FROM   tbod_venda v, 
         tbod_txt_importacao i, 
         tbod_forca_venda fv, 
         tbod_corretora c 
  WHERE  1 = 1 
         AND v.proposta_dcms = i.nr_atendimento 
         AND v.cd_forca_vendas = fv.cd_forca_venda 
         AND fv.cd_corretora = c.cd_corretora 
         AND cod_odonto IS not NULL;
