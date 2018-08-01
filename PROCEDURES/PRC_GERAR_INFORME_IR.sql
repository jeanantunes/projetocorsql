--------------------------------------------------------
--  DDL for Procedure PRC_GERAR_INFORME_IR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CORRET"."PRC_GERAR_INFORME_IR" IS
  V_NR_ANO TBOD_COR_CTRL_FEC_INFORME.NR_ANO%TYPE;

  TYPE CURSOR_TYPE IS REF CURSOR;
  V_CURSOR CURSOR_TYPE;

  V_CD_INFORME_IR_CABECALHO TBOD_COR_INFORME_IR_CABECALHO.CD_INFORME_IR_CABECALHO%TYPE;
  V_NR_CPF_CNPJ_FONTE_PAGADORA TBOD_COR_INFORME_IR_CABECALHO.NR_CPF_CNPJ_FONTE_PAGADORA%TYPE;
  V_NR_CNPJ TBOD_COR_CORRETORA.NR_CNPJ%TYPE;

  V_QTD_INFORMES NUMBER;
  V_CNT_INFORMES NUMBER;
  V_MENSAGEM VARCHAR2(2048);

  V_QTD_AFFECTED NUMBER;
  
  --MONITORAMENTO
  CHAVE_OPERACAO_MONIT   VARCHAR2(2000);
  CHAVE_DESCRICAO_MONIT  VARCHAR2(2000);
  ID_ROTINA_MONIT        NUMBER;
  ID_SISTEMA_MONIT       NUMBER;
  V_ERROR_INTERNO        BOOLEAN;
    
BEGIN

        /*
        IMPLEMENTAÇÃO DO MONITORAMENTO
        */
        ID_ROTINA_MONIT        := 80;
        ID_SISTEMA_MONIT       := 3;
        V_ERROR_INTERNO        := FALSE;
        CHAVE_DESCRICAO_MONIT  := 'PROCEDURE_PRC_GERAR_INFORME_IR';
        PK_ARQUITETURA.SP_MONITORAMENTO_CHAVE_OPER(CHAVE_DESCRICAO_MONIT, CHAVE_OPERACAO_MONIT);
        PK_ARQUITETURA.SP_MONITORAMENTO_INICIO(ID_ROTINA_MONIT, ID_SISTEMA_MONIT, CHAVE_OPERACAO_MONIT);

          -- Verifica se existe algum informe para processar.
          BEGIN
            SELECT NR_ANO
              INTO V_NR_ANO
              FROM TBOD_COR_CTRL_FEC_INFORME
             WHERE DT_INICIO IS NULL
               AND ROWNUM = 1;
          EXCEPTION
            WHEN NO_DATA_FOUND THEN
            V_ERROR_INTERNO := TRUE;
            /* ----MONITORAMENTO-----
             * FINALIZAR O PROCESSO COMO ERROR, POIS DEVERÁ SER REALIZADA UMA AÇÃO DENTRO DA 
             * TI PARA TRATAR ESTAS SITUAÇÕES
             */
             PK_ARQUITETURA.SP_MONITORAMENTO_ERROR(ID_ROTINA_MONIT, ID_SISTEMA_MONIT, CHAVE_OPERACAO_MONIT);               
              RETURN;
          END;

          -- Início do processamento.
          UPDATE TBOD_COR_CTRL_FEC_INFORME
             SET DT_INICIO = SYSDATE,
                 DS_PROGRESSO = 'Processamento iniciado. Início da exclusão dos dados de detalhe.'
           WHERE NR_ANO = V_NR_ANO;
          COMMIT;

          -- Exclusão dos dados de detalhe.
          BEGIN
            DELETE FROM TBOD_COR_INFORME_IR_DETALHE WHERE CD_INFORME_IR_CABECALHO IN (SELECT CD_INFORME_IR_CABECALHO FROM TBOD_COR_INFORME_IR_CABECALHO WHERE NR_NR_ANO = V_NR_ANO);
          EXCEPTION
            WHEN OTHERS THEN
            V_ERROR_INTERNO := TRUE;
            /* ----MONITORAMENTO-----
             * FINALIZAR O PROCESSO COMO ERROR, POIS DEVERÁ SER REALIZADA UMA AÇÃO DENTRO DA 
             * TI PARA TRATAR ESTAS SITUAÇÕES
             */
             PK_ARQUITETURA.SP_MONITORAMENTO_ERROR(ID_ROTINA_MONIT, ID_SISTEMA_MONIT, CHAVE_OPERACAO_MONIT);               
              UPDATE TBOD_COR_CTRL_FEC_INFORME
                 SET DT_TERMINO = SYSDATE,
                     DS_PROGRESSO = 'Erro ao tentar excluir os dados de detalhe.'
               WHERE NR_ANO = V_NR_ANO;
              COMMIT;

              RETURN;
          END;

          UPDATE TBOD_COR_CTRL_FEC_INFORME
             SET DS_PROGRESSO = 'Término da exclusão dos dados de detalhe. Início da exclusão dos dados de cabeçalho.'
           WHERE NR_ANO = V_NR_ANO;
          COMMIT;

          -- Exclusão dos dados de cabeçalho.
          BEGIN
            DELETE FROM TBOD_COR_INFORME_IR_CABECALHO WHERE NR_NR_ANO = V_NR_ANO;
          EXCEPTION
            WHEN OTHERS THEN
            V_ERROR_INTERNO := TRUE;
            /* ----MONITORAMENTO-----
             * FINALIZAR O PROCESSO COMO ERROR, POIS DEVERÁ SER REALIZADA UMA AÇÃO DENTRO DA 
             * TI PARA TRATAR ESTAS SITUAÇÕES
             */
             PK_ARQUITETURA.SP_MONITORAMENTO_ERROR(ID_ROTINA_MONIT, ID_SISTEMA_MONIT, CHAVE_OPERACAO_MONIT);              
             UPDATE TBOD_COR_CTRL_FEC_INFORME
                 SET DT_TERMINO = SYSDATE,
                     DS_PROGRESSO = 'Erro ao tentar excluir os dados de cabeçalho.'
               WHERE NR_ANO = V_NR_ANO;
              COMMIT;

              RETURN;
          END;

          UPDATE TBOD_COR_CTRL_FEC_INFORME
             SET DS_PROGRESSO = 'Término da exclusão dos dados de cabeçalho. Início da inclusão dos dados de cabeçalho.'
           WHERE NR_ANO = V_NR_ANO;
          COMMIT;

          BEGIN
            INSERT INTO TBOD_COR_INFORME_IR_CABECALHO
            (
              CD_PARCEIRO,
              CD_INFORME_IR_CABECALHO,
              NM_FONTE_PAGADORA,
              NR_CPF_CNPJ_FONTE_PAGADORA,
              DS_INFORMACOES_COMPLEMENTARES,
              DT_RESPONSAVEL,
              NM_RESPONSAVEL,
              NR_NR_ANO
            )
              SELECT
                dados.CD_PARCEIRO,
                SEQ_TBOD_COR_INF_IR_CAB.NEXTVAL,
                dados.FONTE_PAGADORA_RAZAO_SOCIAL,
                dados.FONTE_PAGADORA_CNPJ,
                dados.DESCRICAO_RENDIMENTO,
                dados.VALID_FIS_JUR,
                dados.RESPONSAVEL,
                dados.ANO_COMPETENCIA
              FROM
              (
                SELECT
                  DISTINCT TBOD_COR_CORRETORA.CD_PARCEIRO,
                  VW_INFORME_RENDIMENTOS.FONTE_PAGADORA_RAZAO_SOCIAL,
                  VW_INFORME_RENDIMENTOS.FONTE_PAGADORA_CNPJ,
                  VW_INFORME_RENDIMENTOS.DESCRICAO_RENDIMENTO,
                  VW_INFORME_RENDIMENTOS.VALID_FIS_JUR,
                  VW_INFORME_RENDIMENTOS.RESPONSAVEL,
                  VW_INFORME_RENDIMENTOS.ANO_COMPETENCIA
                FROM
                  VW_INFORME_RENDIMENTOS
                INNER JOIN
                  TBOD_COR_CORRETORA
                ON
                  TBOD_COR_CORRETORA.NR_CNPJ = VW_INFORME_RENDIMENTOS.CPF_CGC
                WHERE
                  VW_INFORME_RENDIMENTOS.ANO_COMPETENCIA = V_NR_ANO
              ) dados;
          EXCEPTION
            WHEN OTHERS THEN
            V_ERROR_INTERNO := TRUE;
            /* ----MONITORAMENTO-----
             * FINALIZAR O PROCESSO COMO ERROR, POIS DEVERÁ SER REALIZADA UMA AÇÃO DENTRO DA 
             * TI PARA TRATAR ESTAS SITUAÇÕES
             */
             PK_ARQUITETURA.SP_MONITORAMENTO_ERROR(ID_ROTINA_MONIT, ID_SISTEMA_MONIT, CHAVE_OPERACAO_MONIT);               
              UPDATE TBOD_COR_CTRL_FEC_INFORME
                 SET DT_TERMINO = SYSDATE,
                     DS_PROGRESSO = 'Erro ao tentar incluir os dados de cabeçalho.'
               WHERE NR_ANO = V_NR_ANO;
              COMMIT;

              RETURN;
          END;

          UPDATE TBOD_COR_CTRL_FEC_INFORME
             SET DS_PROGRESSO = 'Término da inclusão dos dados de cabeçalho. Obtendo dados para a geração do informe de rendimentos.'
           WHERE NR_ANO = V_NR_ANO;
          COMMIT;

          SELECT COUNT(1)
          INTO V_QTD_INFORMES
          FROM (
                SELECT CAB.CD_INFORME_IR_CABECALHO, CAB.NR_CPF_CNPJ_FONTE_PAGADORA, COR.NR_CNPJ
                  FROM TBOD_COR_INFORME_IR_CABECALHO CAB
            INNER JOIN TBOD_COR_CORRETORA COR
                    ON CAB.CD_PARCEIRO = COR.CD_PARCEIRO
                 WHERE CAB.NR_NR_ANO = V_NR_ANO
          );

          V_CNT_INFORMES := 0;

          BEGIN
            OPEN V_CURSOR FOR
              SELECT CAB.CD_INFORME_IR_CABECALHO, CAB.NR_CPF_CNPJ_FONTE_PAGADORA, COR.NR_CNPJ
                FROM TBOD_COR_INFORME_IR_CABECALHO CAB
          INNER JOIN TBOD_COR_CORRETORA COR
                  ON CAB.CD_PARCEIRO = COR.CD_PARCEIRO
               WHERE CAB.NR_NR_ANO = V_NR_ANO;

          EXCEPTION
            WHEN NO_DATA_FOUND THEN
            V_ERROR_INTERNO := TRUE;
            /* ----MONITORAMENTO-----
             * FINALIZAR O PROCESSO COMO ERROR, POIS DEVERÁ SER REALIZADA UMA AÇÃO DENTRO DA 
             * TI PARA TRATAR ESTAS SITUAÇÕES
             */
             PK_ARQUITETURA.SP_MONITORAMENTO_ERROR(ID_ROTINA_MONIT, ID_SISTEMA_MONIT, CHAVE_OPERACAO_MONIT);               
              UPDATE TBOD_COR_CTRL_FEC_INFORME
                 SET DT_TERMINO = SYSDATE,
                     DS_PROGRESSO = 'Não foi encontrado nenhum dado para a geração do informe de rendimento.'
               WHERE NR_ANO = V_NR_ANO;
              COMMIT;
         
              RETURN;
          END;

          UPDATE TBOD_COR_CTRL_FEC_INFORME
             SET DS_PROGRESSO = V_QTD_INFORMES || ' informes obtidos com sucesso.'
           WHERE NR_ANO = V_NR_ANO;
          COMMIT;

          BEGIN
            LOOP
              FETCH V_CURSOR INTO V_CD_INFORME_IR_CABECALHO, V_NR_CPF_CNPJ_FONTE_PAGADORA, V_NR_CNPJ;
                BEGIN

                  V_CNT_INFORMES := V_CNT_INFORMES + 1;

                  UPDATE TBOD_COR_CTRL_FEC_INFORME
                     SET DS_PROGRESSO = 'Processando informe de rendimento ' || V_CNT_INFORMES || ' de ' || V_QTD_INFORMES || '. FONTE = ' || V_NR_CPF_CNPJ_FONTE_PAGADORA || ' CNPJ = ' || V_NR_CNPJ || '.'
                   WHERE NR_ANO = V_NR_ANO;

                  V_QTD_AFFECTED := SQL%ROWCOUNT;

                  COMMIT;

                  IF V_QTD_AFFECTED = 0 THEN
                    RETURN;
                  END IF;

                  INSERT INTO TBOD_COR_INFORME_IR_DETALHE
                  (
                    CD_INFORME_IR_DETALHE,
                    CD_INFORME_IR_CABECALHO,
                    NR_NR_MES,
                    CD_RETENCAO,
                    DS_RENDIMENTO,
                    VL_RENDIMENTO,
                    VL_IMPOSTO_RETIDO
                  )
                    SELECT
                      SEQ_TBOD_COR_INF_IR_DET.NEXTVAL,
                      V_CD_INFORME_IR_CABECALHO,
                      dados.MES_COMPETENCIA,
                      dados.CODIGO_RETENCAO,
                      dados.DESCRICAO_RENDIMENTO,
                      dados.VLR_BRUTO,
                      dados.VLR_IR_RETIDO
                    FROM
                    (
                      SELECT
                        VW.MES_COMPETENCIA,
                        VW.CODIGO_RETENCAO,
                        VW.DESCRICAO_RENDIMENTO,
                        SUM(VW.VLR_BRUTO) VLR_BRUTO,
                        SUM(VW.VLR_IR_RETIDO) VLR_IR_RETIDO
                      FROM
                        VW_INFORME_RENDIMENTOS VW
                      WHERE
                        VW.FONTE_PAGADORA_CNPJ = V_NR_CPF_CNPJ_FONTE_PAGADORA AND
                        VW.CPF_CGC = V_NR_CNPJ AND 
                        VW.ANO_COMPETENCIA = V_NR_ANO
                      GROUP BY
                        VW.MES_COMPETENCIA,
                        VW.CODIGO_RETENCAO,
                        VW.DESCRICAO_RENDIMENTO
                    ) dados;
          
                    COMMIT;
          
                EXCEPTION
                  WHEN OTHERS THEN
                    V_ERROR_INTERNO := TRUE;
                    /* ----MONITORAMENTO-----
                     * FINALIZAR O PROCESSO COMO ERROR, POIS DEVERÁ SER REALIZADA UMA AÇÃO DENTRO DA 
                     * TI PARA TRATAR ESTAS SITUAÇÕES
                     */
                     PK_ARQUITETURA.SP_MONITORAMENTO_ERROR(ID_ROTINA_MONIT, ID_SISTEMA_MONIT, CHAVE_OPERACAO_MONIT);                     
                    UPDATE TBOD_COR_CTRL_FEC_INFORME
                       SET DT_TERMINO = SYSDATE,
                           DS_PROGRESSO = 'Erro ao tentar processar informe de rendimento ' || V_CNT_INFORMES || ' de ' || V_QTD_INFORMES || '. FONTE = ' || V_NR_CPF_CNPJ_FONTE_PAGADORA || ' CNPJ = ' || V_NR_CNPJ || '.'
                     WHERE NR_ANO = V_NR_ANO;
                    COMMIT;
          
                    RETURN;
                END;
          
              EXIT WHEN V_CURSOR%NOTFOUND;
            END LOOP;
          
            CLOSE V_CURSOR;
          
          EXCEPTION
            WHEN OTHERS THEN
            V_ERROR_INTERNO := TRUE;
            /* ----MONITORAMENTO-----
             * FINALIZAR O PROCESSO COMO ERROR, POIS DEVERÁ SER REALIZADA UMA AÇÃO DENTRO DA 
             * TI PARA TRATAR ESTAS SITUAÇÕES
             */
             PK_ARQUITETURA.SP_MONITORAMENTO_ERROR(ID_ROTINA_MONIT, ID_SISTEMA_MONIT, CHAVE_OPERACAO_MONIT);               
              V_MENSAGEM := 'Erro ao tentar processar informe de rendimento. CODE=' || SQLCODE || ' -MSG- ' || SUBSTR(SQLERRM, 1, 1800) || '. ' || V_CNT_INFORMES || ' de ' || V_QTD_INFORMES || '. FONTE = ' || V_NR_CPF_CNPJ_FONTE_PAGADORA || ' CNPJ = ' || V_NR_CNPJ || '.';
              UPDATE TBOD_COR_CTRL_FEC_INFORME
                 SET DT_TERMINO = SYSDATE,
                     DS_PROGRESSO = V_MENSAGEM
               WHERE NR_ANO = V_NR_ANO;
              COMMIT;
          
              RETURN;
          END;

          -- Término do processamento.
          UPDATE TBOD_COR_CTRL_FEC_INFORME
             SET DT_TERMINO = SYSDATE,
                 DS_PROGRESSO = 'Processamento concluído. ' || V_QTD_INFORMES || ' informes processados.'
           WHERE NR_ANO = V_NR_ANO;
          COMMIT;

         /* ----MONITORAMENTO-----
         * FINALIZAR O PROCESSO COM SUCESSO
         */
         IF (NOT V_ERROR_INTERNO) THEN
            PK_ARQUITETURA.SP_MONITORAMENTO_FIM(ID_ROTINA_MONIT, ID_SISTEMA_MONIT, CHAVE_OPERACAO_MONIT);
         END IF;
  
    EXCEPTION
      WHEN OTHERS THEN
        V_ERROR_INTERNO := TRUE;
        /* ----MONITORAMENTO-----
         * FINALIZAR O PROCESSO COMO ERROR, POIS DEVERÁ SER REALIZADA UMA AÇÃO DENTRO DA 
         * TI PARA TRATAR ESTAS SITUAÇÕES
         */
         PK_ARQUITETURA.SP_MONITORAMENTO_ERROR(ID_ROTINA_MONIT, ID_SISTEMA_MONIT, CHAVE_OPERACAO_MONIT); 


END PRC_GERAR_INFORME_IR;

/
