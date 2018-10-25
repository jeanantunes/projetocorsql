/*201810251557 - esert - COR-974:CARGA HOM e PRD - DB carga TBOD_ARQUIVO + TBOD_PLANO_INFO + TBOD_PLANO(update)*/

/*
update TBOD_PLANO set CD_PLANO_INFO = null;

delete TBOD_PLANO_INFO;
*/
--commit;

Insert into TBOD_PLANO_INFO 
(
 CD_PLANO_INFO
,NOME_PLANO_INFO
,DESCRICAO
,CD_ARQUIVO_GERAL
,CD_ARQUIVO_CARENCIA
,CD_ARQUIVO_ICONE
,TIPO_SEGMENTO
,ATIVO
) values (
 SEQ_TBOD_ARQUIVO.NEXTVAL  --'1'
,'Dental Dente de Leite'
,'Aplica��o de Fl�or e Selantes
Cirurgia e Radiografias
Consultas com Especialistas em Odontopediatria
Emerg�ncia e Urg�ncia
Extra��o de Dentes do Siso
Limpezas Peri�dicas
Orienta��o de Higiene Bucal
Pr�teses Simples (unit�ria)
Restaura��es
Tratamento de Canal e Gengiva'
,(select CD_ARQUIVO from TBOD_ARQUIVO where NOME_ARQUIVO = 'plano_dente_de_leite.pdf') --'24'
,(select CD_ARQUIVO from TBOD_ARQUIVO where NOME_ARQUIVO = 'carencia_dente_de_leite.pdf') --'23'
,(select CD_ARQUIVO from TBOD_ARQUIVO where NOME_ARQUIVO = 'iconeDente-de-Leite.jpg') --'14'
,'PF'
,'S'
);


Insert into TBOD_PLANO_INFO (
 CD_PLANO_INFO
,NOME_PLANO_INFO
,DESCRICAO
,CD_ARQUIVO_GERAL
,CD_ARQUIVO_CARENCIA
,CD_ARQUIVO_ICONE
,TIPO_SEGMENTO
,ATIVO
) values (
 SEQ_TBOD_ARQUIVO.NEXTVAL --'2'
,'Dental J�nior'
,'Aplica��o de Fl�or e Selantes
Cirurgia e Radiografias
Consultas com Especialistas em Odontopediatria
Emerg�ncia e Urg�ncia
Extra��o de Dentes do Siso
Limpezas Peri�dicas
Orienta��o de Higiene Bucal
Pr�teses Simples (unit�ria)
Restaura��es
Tratamento de Canal e Gengiva'
,(select CD_ARQUIVO from TBOD_ARQUIVO where NOME_ARQUIVO = 'plano_dental_junior.pdf') --'25'
,(select CD_ARQUIVO from TBOD_ARQUIVO where NOME_ARQUIVO = 'carencia_plano_dental_junior.pdf') --'28'
,(select CD_ARQUIVO from TBOD_ARQUIVO where NOME_ARQUIVO = 'iconeJunior.jpg') --'15'
,'PF'
,'S'
);

Insert into TBOD_PLANO_INFO (
 CD_PLANO_INFO
,NOME_PLANO_INFO
,DESCRICAO
,CD_ARQUIVO_GERAL
,CD_ARQUIVO_CARENCIA
,CD_ARQUIVO_ICONE
,TIPO_SEGMENTO
,ATIVO
) values (
 SEQ_TBOD_ARQUIVO.NEXTVAL --'3'
,'Dental Bem-Estar'
,'Aplica��o de Fl�or e Selantes
Cirurgia e Radiografias
Consultas com Especialistas em Odontopediatria
Emerg�ncia e Urg�ncia
Extra��o de Dentes do Siso
Limpezas Peri�dicas
Orienta��o de Higiene Bucal
Pr�teses Simples (unit�ria)
Restaura��es
Tratamento de Canal e Gengiva'
,(select CD_ARQUIVO from TBOD_ARQUIVO where NOME_ARQUIVO = 'plano_dental_bem_estar.pdf') --'27'
,(select CD_ARQUIVO from TBOD_ARQUIVO where NOME_ARQUIVO = 'carencia_dental_bem_estar.pdf') --'26'
,(select CD_ARQUIVO from TBOD_ARQUIVO where NOME_ARQUIVO = 'iconeBem-Estar.jpg') --'8'
,'PF'
,'S'
);

Insert into TBOD_PLANO_INFO (
 CD_PLANO_INFO
,NOME_PLANO_INFO
,DESCRICAO
,CD_ARQUIVO_GERAL
,CD_ARQUIVO_CARENCIA
,CD_ARQUIVO_ICONE
,TIPO_SEGMENTO
,ATIVO
) values (
 SEQ_TBOD_ARQUIVO.NEXTVAL --'4'
,'Dental Est�tica'
,'Aplica��o de Fl�or e Selantes
Cirurgia e Radiografias
Consultas com Especialistas em Odontopediatria
Emerg�ncia e Urg�ncia
Extra��o de Dentes do Siso
Limpezas Peri�dicas
Orienta��o de Higiene Bucal
Placa de Clareamento + Gel
Pr�teses Simples (unit�ria)
Restaura��es
Tratamento de Canal e Gengiva'
,(select CD_ARQUIVO from TBOD_ARQUIVO where NOME_ARQUIVO = 'plano_dental_estetica.pdf') --'33'
,(select CD_ARQUIVO from TBOD_ARQUIVO where NOME_ARQUIVO = 'carencia_dental_estetica.pdf') --'31'
,(select CD_ARQUIVO from TBOD_ARQUIVO where NOME_ARQUIVO = 'iconeEstetica.jpg') --'12'
,'PF'
,'S'
);

Insert into TBOD_PLANO_INFO (
 CD_PLANO_INFO
,NOME_PLANO_INFO
,DESCRICAO
,CD_ARQUIVO_GERAL
,CD_ARQUIVO_CARENCIA
,CD_ARQUIVO_ICONE
,TIPO_SEGMENTO
,ATIVO
) values (
 SEQ_TBOD_ARQUIVO.NEXTVAL --'5'
,'Dental Orto'
,'Aplica��o de Fl�or e Selantes
Cirurgia e Radiografias
Coloca��o + Manuten��o de Aparelho
Consultas com Especialistas em Odontopediatria
Documenta��o e Radiografias Ortod�nticas
Emerg�ncia e Urg�ncia
Extra��o de Dentes do Siso
Limpezas Peri�dicas
Orienta��o de Higiene Bucal
Pr�teses Simples (unit�ria)
Restaura��es
Tratamento de Canal e Gengiva'
,(select CD_ARQUIVO from TBOD_ARQUIVO where NOME_ARQUIVO = 'plano_dental_orto.pdf') --'34'
,(select CD_ARQUIVO from TBOD_ARQUIVO where NOME_ARQUIVO = 'carencia_dental_orto.pdf') --'35'
,(select CD_ARQUIVO from TBOD_ARQUIVO where NOME_ARQUIVO = 'iconeOrto.jpg') --'13'
,'PF'
,'S'
);

Insert into TBOD_PLANO_INFO (
 CD_PLANO_INFO
,NOME_PLANO_INFO
,DESCRICAO
,CD_ARQUIVO_GERAL
,CD_ARQUIVO_CARENCIA
,CD_ARQUIVO_ICONE
,TIPO_SEGMENTO
,ATIVO
) values (
 SEQ_TBOD_ARQUIVO.NEXTVAL --'6'
,'Dental VIP'
,'Aplica��o de Fl�or e Selantes
Cirurgia e Radiografias
Coloca��o + Manuten��o de Aparelho
Consultas com Especialistas em Odontopediatria
Documenta��o e Radiografias Ortod�nticas
Emerg�ncia e Urg�ncia
Extra��o de Dentes do Siso
Limpezas Peri�dicas
Orienta��o de Higiene Bucal
Placa de Clareamento + Gel
Pr�teses (Completa)
Pr�teses Simples (unit�ria)
Restaura��es
Tratamento de Canal e Gengiva'
,(select CD_ARQUIVO from TBOD_ARQUIVO where NOME_ARQUIVO = 'plano_dental_vip.pdf') --'39'
,(select CD_ARQUIVO from TBOD_ARQUIVO where NOME_ARQUIVO = 'carencia_dental_vip.pdf') --'40'
,(select CD_ARQUIVO from TBOD_ARQUIVO where NOME_ARQUIVO = 'iconeVIP.jpg') --'16'
,'PF'
,'S'
);

Insert into TBOD_PLANO_INFO (
 CD_PLANO_INFO
,NOME_PLANO_INFO
,DESCRICAO
,CD_ARQUIVO_GERAL
,CD_ARQUIVO_CARENCIA
,CD_ARQUIVO_ICONE
,TIPO_SEGMENTO
,ATIVO
) values (
 SEQ_TBOD_ARQUIVO.NEXTVAL --'7'
,'Dental Integral DOC LE'
,'Documenta��o e radiografias ortod�nticas
Pr�tese unit�ria (Coroa)
Cirurgia
Radiografias
Recupera��o de dente quebrado por queda
Extra��o do dente do ciso
Tratamento de canal e gengiva
Tratamento de mau h�lito
Consultas e limpezas peri�dicas
Emerg�ncia 24H'
,(select CD_ARQUIVO from TBOD_ARQUIVO where NOME_ARQUIVO = 'contrato_condicoes_gerais_pme.pdf') --'30'
,(select CD_ARQUIVO from TBOD_ARQUIVO where NOME_ARQUIVO = 'contrato_condicoes_gerais_pme.pdf') --'30'
,(select CD_ARQUIVO from TBOD_ARQUIVO where NOME_ARQUIVO = 'iconeBem-Estar.jpg') --'8'
,'PME'
,'S'
);

Insert into TBOD_PLANO_INFO (
 CD_PLANO_INFO
,NOME_PLANO_INFO
,DESCRICAO
,CD_ARQUIVO_GERAL
,CD_ARQUIVO_CARENCIA
,CD_ARQUIVO_ICONE
,TIPO_SEGMENTO
,ATIVO
) values (
 SEQ_TBOD_ARQUIVO.NEXTVAL --'8'
,'Dental Master LE'
,'Todas as coberturas do plano INTEGRAL DOC LE
+ Pr�tese (Inclusive porcelana e cer�mica)
+ Consulta com especialista em ortondontia
+ Documenta��o e radiografias ortod�nticas
+ Coloca��o e manuten��o de aparelho'
,(select CD_ARQUIVO from TBOD_ARQUIVO where NOME_ARQUIVO = 'contrato_condicoes_gerais_pme.pdf') --'30'
,(select CD_ARQUIVO from TBOD_ARQUIVO where NOME_ARQUIVO = 'contrato_condicoes_gerais_pme.pdf') --'30'
,(select CD_ARQUIVO from TBOD_ARQUIVO where NOME_ARQUIVO = 'iconeVIP.jpg') --'16'
,'PME'
,'S'
);

--commit;


