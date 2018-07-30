--------------------------------------------------------
--  DDL for View VWOD_COR_STATUS_FORCA
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "CORRET"."VWOD_COR_STATUS_FORCA" ("CD_CORRETORA", "NOME_CORRETORA", "CD_FORCA_VENDA", "NOME_FORCA_VENDA", "CPF", "CELULAR", "EMAIL", "CD_STATUS_FORCA_VENDAS", "DS_STATUS") AS 
  select cr.cd_corretora,cr.nome as nome_corretora, fv.cd_forca_venda, fv.nome as nome_forca_venda,
fv.cpf,fv.celular,fv.email,fv.CD_STATUS_FORCA_VENDAS, st.descricao as ds_status
from tbod_forca_venda fv, tbod_corretora cr, TBOD_STATUS_FORCA_VENDA st
where 1 = 1
and cr.cd_corretora = fv.cd_corretora
and st.cd_status_forca_vendas = fv.CD_STATUS_FORCA_VENDAS;
