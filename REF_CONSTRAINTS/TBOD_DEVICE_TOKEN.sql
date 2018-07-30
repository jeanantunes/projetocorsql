--------------------------------------------------------
--  Ref Constraints for Table TBOD_DEVICE_TOKEN
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_DEVICE_TOKEN" ADD CONSTRAINT "FK_DEVICE_LOGIN" FOREIGN KEY ("CD_LOGIN")
	  REFERENCES "CORRET"."TBOD_LOGIN" ("CD_LOGIN") ENABLE;
