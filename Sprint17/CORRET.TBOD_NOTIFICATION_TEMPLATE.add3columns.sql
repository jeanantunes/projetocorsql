/*2018103011470 - esert/yalm - COR-979:DB - Novas Colunas na Tabela TBOD_NOTIFICATION_TEMPLATE*/

ALTER TABLE TBOD_NOTIFICATION_TEMPLATE
ADD (
  TIPO_INTENCAO NVARCHAR2(255) NULL,
  NOME_VIEW NVARCHAR2(255) NULL,
  PARAMETRO NVARCHAR2(2000) NULL
);
