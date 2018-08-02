--------------------------------------------------------
--  DDL for View VWOD_EMP_TOTAL_VIDAS_PME
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "CORRET"."VWOD_EMP_TOTAL_VIDAS_PME" ("DT_VENDA", "CNPJ_CORRETORA", "CORRETORA", "CPF", "VENDEDOR", "CNPJ_CLIENTE", "RAZAO_SOCIAL_CLIENTE", "LOGIN_DCMS", "LOGRADOURO", "NUMERO", "COMPLEMENTO", "BAIRRO", "CIDADE", "UF", "CEP", "REPRESENTANTE_LEGAL", "CELULAR", "EMAIL", "PLANO", "TOTAL_VIDAS", "DIA_FATURA", "VALOR_VENDA") AS 
  SELECT
  venda.dt_venda,
  cor.cnpj                cnpj_corretora,
  cor.nome                corretora,
  forca.cpf,
  forca.nome              vendedor,
  empc.cnpj               CNPJ_CLIENTE,
  empc.razao_social       RAZAO_SOCIAL_CLIENTE,
  emp.cd_empresa          LOGIN_DCMS,
  ende.logradouro,
  ende.numero,
  ende.complemento,
  ende.bairro,
  ende.cidade,
  ende.UF,
  ende.cep,
  empc.representante_legal,
  empc.celular,
  empc.email,
  plano.titulo            PLANO,
  Count(vida.cd_vida)     TOTAL_VIDAS,
  venda.fatura_vencimento DIA_FATURA,
  venda.VALOR_TOTAL       VALOR_VENDA
FROM tbod_empresa empc,
  tbod_empresa@lk_dcms emp,
  tbod_venda venda,
  tbod_forca_venda forca,
  tbod_corretora cor,
  tbod_vida vida,
  tbod_venda_vida vv,
  tbod_endereco ende,
  tbod_plano plano
WHERE 1 = 1
      AND vida.cd_vida = vv.cd_vida
      AND venda.cd_venda = vv.cd_venda
      AND empc.cd_empresa = venda.cd_empresa
      AND empc.cd_endereco = ende.cd_endereco
      AND empc.cnpj = emp.nr_cgc (+)
      AND venda.cd_forca_vendas = forca.cd_forca_venda
      AND cor.cd_corretora = forca.cd_corretora
      AND plano.cd_plano = vv.cd_plano
GROUP BY
  cor.nome, cor.cnpj,
  forca.nome, forca.cpf,
  empc.cnpj,
  forca.email,
  empc.cd_empresa,
  empc.razao_social,
  forca.celular,
  empc.emp_dcms,
  emp.cd_empresa,
  venda.dt_venda,
  ende.logradouro,
  venda.cd_plano,
  ende.numero,
  Trunc(emp.dt_alteracao),
  emp.dt_alteracao,
  emp.dt_alteracao,
  ende.complemento,
  empc.representante_legal,
  emp.dt_alteracao,
  empc.celular,
  ende.bairro,
  empc.email,
  plano.titulo,
  ende.cidade,
  ende.UF,
  emp.dt_alteracao,
  ende.cep,
  emp.dt_alteracao,
  emp.dt_alteracao,
  emp.dt_alteracao,
  venda.fatura_vencimento,
  venda.VALOR_TOTAL
ORDER BY
  venda.dt_venda,
  empc.cnpj;