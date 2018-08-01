--------------------------------------------------------
--  DDL for Package PK_ATUALIZA_CORRETORA
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "CORRET"."PK_ATUALIZA_CORRETORA" AS
   FUNCTION atualizar_optante_simples (var_nr_cpf_cnpj NUMBER, var_id_optante_simples VARCHAR2)
            RETURN NUMBER;
END pk_atualiza_corretora;

/

  GRANT EXECUTE ON "CORRET"."PK_ATUALIZA_CORRETORA" TO "USUCORRET";
  GRANT EXECUTE ON "CORRET"."PK_ATUALIZA_CORRETORA" TO "USUPROD";
  GRANT DEBUG ON "CORRET"."PK_ATUALIZA_CORRETORA" TO "USUPROD";
  GRANT DEBUG ON "CORRET"."PK_ATUALIZA_CORRETORA" TO "ANLPROD";
  GRANT EXECUTE ON "CORRET"."PK_ATUALIZA_CORRETORA" TO "ANLPROD";
