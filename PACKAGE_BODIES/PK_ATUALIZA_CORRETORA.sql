--------------------------------------------------------
--  DDL for Package Body PK_ATUALIZA_CORRETORA
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "CORRET"."PK_ATUALIZA_CORRETORA" AS
   FUNCTION atualizar_optante_simples (
            var_nr_cpf_cnpj NUMBER,
            var_id_optante_simples VARCHAR2
   )
      RETURN NUMBER IS
   BEGIN
   
      UPDATE CORRET.TBOD_COR_CORRETORA SET ID_OPTANTE_SIMPLES = var_id_optante_simples WHERE NR_CNPJ = var_nr_cpf_cnpj;
      
      IF SQL%ROWCOUNT > 0 THEN
          RETURN 0; --atualizado com sucesso
      END IF;
      
      RETURN 1; --registro nao encontrado para o cpf/cnpj informado
      
      EXCEPTION
             WHEN OTHERS THEN
             DBMS_OUTPUT.PUT_LINE('Ocorreu um erro na atualização do registro. Código do erro: '||SQLERRM);
             RETURN 2; --ocorreu um erro
   END;
END pk_atualiza_corretora;

/

  GRANT EXECUTE ON "CORRET"."PK_ATUALIZA_CORRETORA" TO "USUCORRET";
  GRANT EXECUTE ON "CORRET"."PK_ATUALIZA_CORRETORA" TO "USUPROD";
  GRANT DEBUG ON "CORRET"."PK_ATUALIZA_CORRETORA" TO "USUPROD";
  GRANT DEBUG ON "CORRET"."PK_ATUALIZA_CORRETORA" TO "ANLPROD";
  GRANT EXECUTE ON "CORRET"."PK_ATUALIZA_CORRETORA" TO "ANLPROD";
