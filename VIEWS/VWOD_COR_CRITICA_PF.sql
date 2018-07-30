--------------------------------------------------------
--  DDL for View VWOD_COR_CRITICA_PF
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "CORRET"."VWOD_COR_CRITICA_PF" ("NR_ATENDIMENTO", "DS_ERRO_REGISTRO", "COD_ODONTO", "NOME", "NR_IMPORTACAO", "FORCA", "CPF", "CORRETORA", "CNPJ") AS 
  select distinct(i.nr_atendimento), i.ds_erro_registro,i.cod_odonto,i.nome,nr_importacao, fv.nome forca,fv.cpf, c.nome as corretora,c.cnpj
from
tbod_venda v,
tbod_txt_importacao i,
tbod_forca_venda fv,
tbod_corretora c
where 1= 1
and v.PROPOSTA_DCMS = i.nr_atendimento
and v.cd_forca_vendas = fv.cd_forca_venda
and fv.CD_CORRETORA = c.cd_corretora
and cod_odonto is null;
