/*201810221634 - esert - COR-932:API - Novo GET /planoinfo*/

/*
update TBOD_PLANO set CD_PLANO_INFO = 1 where CD_PLANO in ( 63, 64 );
*/
--2 linhas atualizado. --201810221634

/*
update TBOD_PLANO set CD_PLANO_INFO = 2 where CD_PLANO in ( 66, 67, 68 );
*/
--3 linhas atualizado. --201810221634

/*
update TBOD_PLANO 
set CD_PLANO_INFO = (
    select CD_PLANO_INFO from TBOD_PLANO_INFO where NOME_PLANO_INFO = 'Integral' --3
) 
where CD_PLANO in ( 
    select CD_PLANO from TBOD_PLANO where NOME_PLANO like 'IntegralDOCPME%'
);
*/
--2 linhas atualizado. --201810231459

/*
update TBOD_PLANO 
set CD_PLANO_INFO = (
    select CD_PLANO_INFO from TBOD_PLANO_INFO where NOME_PLANO_INFO = 'Master' --4 
)
where CD_PLANO in ( 
    select CD_PLANO from TBOD_PLANO where NOME_PLANO like 'MasterPME%'
);
*/
--2 linhas atualizado. --201810231501

--commit;
