/*201810221857 - esert - COR-932:API - Novo GET /planoinfo*/
/*
update TBOD_PLANO_INFO set CD_ARQUIVO_GERAL = (
    select CD_ARQUIVO from TBOD_ARQUIVO where NOME_ARQUIVO = 'arduino-uno-schematic.pdf'
) where NOME_PLANO_INFO = 'Dente de Leite';

update TBOD_PLANO_INFO set CD_ARQUIVO_CARENCIA = (
    select CD_ARQUIVO from TBOD_ARQUIVO where NOME_ARQUIVO = 'Arduino_Nano-Rev3.2-SCH.pdf'
) where NOME_PLANO_INFO = 'Dente de Leite';

update TBOD_PLANO_INFO set CD_ARQUIVO_ICONE = (
    select CD_ARQUIVO from TBOD_ARQUIVO where NOME_ARQUIVO = '2000px-Arduino_Logo.svg.png'
) where NOME_PLANO_INFO = 'Dente de Leite';
*/

/*
update TBOD_PLANO_INFO set CD_ARQUIVO_GERAL = (
    select CD_ARQUIVO from TBOD_ARQUIVO where NOME_ARQUIVO = 'Raspberry-Pi-Model-Bplus-Product-Brief.pdf'
) where TIPO_SEGMENTO = 'PME';
--2 linhas atualizado. --201810231553

update TBOD_PLANO_INFO set CD_ARQUIVO_CARENCIA = (
    select CD_ARQUIVO from TBOD_ARQUIVO where NOME_ARQUIVO = 'MagPi68.pdf'
) where TIPO_SEGMENTO = 'PME';
--2 linhas atualizado. --201810231553

update TBOD_PLANO_INFO set CD_ARQUIVO_ICONE = (
    select CD_ARQUIVO from TBOD_ARQUIVO where NOME_ARQUIVO = 'raspilogo800x800.png'
) where TIPO_SEGMENTO = 'PME';
--2 linhas atualizado. --201810231553
*/

--commit; --201810231553
