/*
COR-484:DB - Carga Retroativa / COR-449:Incluir Campos no Relatório PF - Corretora
*/

update TBOD_VENDA vd
set ( QT_VIDAS ) = (
    select tvida.QT_VIDAS from (
        SELECT 
         venda.CD_VENDA 
        ,COUNT(vida.CD_VIDA) QT_VIDAS
        FROM tbod_venda venda 
        INNER JOIN tbod_venda_vida vv ON vv.CD_VENDA = venda.CD_VENDA 
        INNER JOIN tbod_vida vida ON vida.CD_VIDA = vv.cd_vida 
        GROUP BY 
         venda.CD_VENDA 
    ) tvida
    where 
    tvida.CD_VENDA = vd.CD_VENDA
)
;
--1.604 linhas atualizado. --201808011801 --it3

update TBOD_VENDA venda
set ( VALOR_PLANO ) = (
    select VALOR_MENSAL + VALOR_ANUAL
    from TBOD_PLANO plano
    where plano.CD_PLANO = venda.CD_PLANO
)
;
--1.604 linhas atualizado. --201808011833 --it3

update TBOD_VENDA
set VALOR_TOTAL = QT_VIDAS * VALOR_PLANO
;
--1.604 linhas atualizado. --201808011838 --it3

--commit
