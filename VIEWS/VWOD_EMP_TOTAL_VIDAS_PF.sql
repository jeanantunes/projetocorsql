--------------------------------------------------------
--  DDL for View VWOD_EMP_TOTAL_VIDAS_PF
--------------------------------------------------------
/*201808021818 - esert - COR-529: excluir forcaVenda x corretora, incluir venda x corretora */

  CREATE OR REPLACE FORCE VIEW "CORRET"."VWOD_EMP_TOTAL_VIDAS_PF" (
  "NUM_PROPOSTA", 
  "DT_VENDA", 
  "PRIMEIRO_VENCIMENTO", 
  "CORRETORA", 
  "CNPJ_CORRETORA", 
  "NOME_FORCA", 
  "CPF_FORCA", 
  "PLANO_PF", 
  "TIPO_PLANO", 
  "VIDAS", 
  "VALOR_VENDA", 
  "STATUS_PROPOSTA", 
  "CPF_TITULAR", 
  "NOME_TITULAR", 
  "LOGRADOURO", 
  "NUMERO", 
  "COMPLEMENTO", 
  "BAIRRO", 
  "CIDADE", 
  "UF", 
  "CEP", 
  "EMAIL"
  ) AS 
  SELECT
    v.proposta_dcms       NUM_PROPOSTA,
    v.dt_venda,
    imp.dt_inicio_cobranca PRIMEIRO_VENCIMENTO,
    cor.nome              CORRETORA,
    cor.cnpj              CNPJ_CORRETORA,
    forca.nome            NOME_FORCA,
    forca.cpf             CPF_FORCA,
    p.titulo              PLANO_PF,
    CASE p.cd_tipo_plano
    WHEN 1
      THEN 'MENSAL'
    WHEN 2
      THEN 'ANUAL' END AS tipo_plano,
    Count(1)              VIDAS,
    v.VALOR_TOTAL         VALOR_VENDA,
    status.DESCRICAO STATUS_PROPOSTA,
    vida.cpf              CPF_TITULAR,
    vida.nome             NOME_TITULAR,
    ende.logradouro,
    ende.numero,
    ende.complemento,
    ende.bairro,
    ende.cidade,
    ende.uf,
    ende.cep,
    vida.email
  FROM tbod_venda v,
    tbod_venda_vida vv,
    tbod_vida vida,
    admprod.tbod_txt_importacao imp,
    tbod_plano p,
    tbod_forca_venda forca,
    tbod_corretora cor,
    tbod_endereco ende,
    TBOD_STATUS_VENDA status --
  WHERE 1 = 1
        AND v.proposta_dcms = imp.nr_atendimento
        AND v.cd_plano = p.cd_plano
        AND v.cd_venda = vv.cd_venda
        AND vv.cd_vida = vida.cd_vida
        AND vida.cd_titular IS NULL
        AND v.cd_forca_vendas = forca.cd_forca_venda
        AND v.cd_corretora = cor.cd_corretora /*201808021818 - esert - COR-529 - inc*/
        /*AND forca.cd_corretora = cor.cd_corretora*//*201808021818 - esert - COR-529 - exc*/
        AND vida.cd_endereco = ende.cd_endereco
        AND v.CD_STATUS_VENDA = status.CD_STATUS_VENDA
  GROUP BY v.proposta_dcms,
    v.dt_venda,
    imp.dt_inicio_cobranca,
    cor.nome,
    cor.cnpj,
    forca.nome,
    forca.cpf,
    p.titulo,
    CASE p.cd_tipo_plano
    WHEN 1
      THEN 'MENSAL'
    WHEN 2
      THEN 'ANUAL' END,
    status.DESCRICAO,
    v.VALOR_TOTAL,
    vida.cpf,
    vida.nome,
    ende.logradouro,
    ende.numero,
    ende.complemento,
    ende.bairro,
    ende.cidade,
    ende.uf,
    ende.cep,
    vida.email
  ORDER BY
    cor.cnpj,
    v.dt_venda;