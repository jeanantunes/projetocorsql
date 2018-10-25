/*201810251557 - esert - COR-974:CARGA HOM e PRD - DB carga TBOD_ARQUIVO + TBOD_PLANO_INFO + TBOD_PLANO(update)*/
--"Dental Jún"	2
--Dental Júnior
update TBOD_PLANO 
set CD_PLANO_INFO = (
    select CD_PLANO_INFO from TBOD_PLANO_INFO where NOME_PLANO_INFO = 'Dental Júnior'
)
where NOME_PLANO like 'Dental Jún%'
;

--"DentalBemE"	3
--Dental Bem-Estar
update TBOD_PLANO 
set CD_PLANO_INFO = (
    select CD_PLANO_INFO from TBOD_PLANO_INFO where NOME_PLANO_INFO = 'Dental Bem-Estar'
)
where NOME_PLANO like 'DentalBemE%'
;

--"DentalEsté"	3
--Dental Estética
update TBOD_PLANO 
set CD_PLANO_INFO = (
    select CD_PLANO_INFO from TBOD_PLANO_INFO where NOME_PLANO_INFO = 'Dental Estética'
)
where NOME_PLANO like 'DentalEsté%'
;

--"DentalOrto"	3
--Dental Orto
update TBOD_PLANO 
set CD_PLANO_INFO = (
    select CD_PLANO_INFO from TBOD_PLANO_INFO where NOME_PLANO_INFO = 'Dental Orto'
)
where NOME_PLANO like 'DentalOrto%'
;

--"DentalVIP "	3
--Dental VIP
update TBOD_PLANO 
set CD_PLANO_INFO = (
    select CD_PLANO_INFO from TBOD_PLANO_INFO where NOME_PLANO_INFO = 'Dental VIP'
)
where NOME_PLANO like 'DentalVIP%'
;

--"Dente de L"	2
--Dental Dente de Leite
update TBOD_PLANO 
set CD_PLANO_INFO = (
    select CD_PLANO_INFO from TBOD_PLANO_INFO where NOME_PLANO_INFO = 'Dental Dente de Leite'
)
where NOME_PLANO like 'Dente de L%'
;

--"IntegralDO"	2
--Dental Integral DOC LE
update TBOD_PLANO 
set CD_PLANO_INFO = (
    select CD_PLANO_INFO from TBOD_PLANO_INFO where NOME_PLANO_INFO = 'Dental Integral DOC LE'
)
where NOME_PLANO like 'IntegralDO%'
;

--"MasterPME "	2
--Dental Master LE
update TBOD_PLANO 
set CD_PLANO_INFO = (
    select CD_PLANO_INFO from TBOD_PLANO_INFO where NOME_PLANO_INFO = 'Dental Master LE'
)
where NOME_PLANO like 'MasterPME%'
;

--commit;

/*201810251733
2 linhas atualizado.


3 linhas atualizado.


3 linhas atualizado.


3 linhas atualizado.


3 linhas atualizado.


2 linhas atualizado.


2 linhas atualizado.


2 linhas atualizado.

Commit concluído.
*/


/*
select substr( NOME_PLANO, 1, 10) NOME_PLANO_1_10, count(1) count_ from TBOD_PLANO group by substr( NOME_PLANO, 1, 10) order by 1;
*//*
"NOME_PLANO_1_10"	"COUNT_"
"Dental Jún"	2
"DentalBemE"	3
"DentalEsté"	3
"DentalOrto"	3
"DentalVIP "	3
"Dente de L"	2
"IntegralDO"	2
"MasterPME "	2
*/
