--------------------------------------------------------
--  Ref Constraints for Table TBOD_PERFIL_USUARIO
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_PERFIL_USUARIO" ADD CONSTRAINT "FK_CD_PERFIL" FOREIGN KEY ("CD_PERFIL")
	  REFERENCES "CORRET"."TBOD_PERFIL" ("CD_PERFIL") ENABLE;
