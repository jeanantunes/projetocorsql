/**/
--destravar o update antes de executar sempre na presenca de um adulto
--update TBOD_VENDA vd
set ( CD_CORRETORA ) = (
    select cr.CD_CORRETORA
    from TBOD_CORRETORA cr
    inner join TBOD_FORCA_VENDA fv on ( fv.CD_CORRETORA = cr.CD_CORRETORA )
    where fv.CD_FORCA_VENDA = vd.CD_FORCA_VENDAS
)
where 
exists (
    select 1
    from TBOD_CORRETORA cr
    inner join TBOD_FORCA_VENDA fv on ( fv.CD_CORRETORA = cr.CD_CORRETORA )
    where fv.CD_FORCA_VENDA = vd.CD_FORCA_VENDAS
)
--1.568 linhas atualizado. --201807301803
--and
--vd.CD_EMPRESA = 1659 --2 linhas atualizado.
;
--commit
/**/

/*
select
 cr.CD_CORRETORA ,substr( cr.NOME, 1, 10) cr_NOME, substr( cr.CNPJ, 1, 14) cr_CNPJ
,fv.CD_FORCA_VENDA ,substr( fv.NOME, 1, 10) fv_NOME, fv.CPF
,vd.CD_VENDA ,vd.CD_CORRETORA
,pl.CD_PLANO ,substr( pl.TITULO, 1, 10) pl_TITULO
,vv.CD_VENDA_VIDA
,vi.CD_VIDA ,vi.CD_TITULAR ,substr( vi.NOME, 1, 10) vi_NOME
from TBOD_CORRETORA cr
inner join TBOD_FORCA_VENDA fv on ( fv.CD_CORRETORA = cr.CD_CORRETORA )
inner join TBOD_VENDA vd on ( vd.CD_FORCA_VENDAS = fv.CD_FORCA_VENDA )
inner join TBOD_PLANO pl on ( pl.CD_PLANO = vd.CD_PLANO)
inner join TBOD_VENDA_VIDA vv on ( vv.CD_VENDA = vd.CD_VENDA )
inner join TBOD_VIDA vi on ( vi.CD_VIDA = vv.CD_VIDA )
where
--vd.CD_EMPRESA = 1659
--cr.CNPJ = 64154543000146
fv.CPF = '50323393500'
;
*/
