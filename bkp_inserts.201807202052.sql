REM INSERTING into TBOD_MAT_CATEG
SET DEFINE OFF;
Insert into TBOD_MAT_CATEG (CD_MAT_CATEG,NOME,DESCRICAO,ATIVO) values ('1','DIFERENCIAIS ODONTOPREV','A única área que eu acho, que vai exigir muita atenção nossa, e aí eu já aventei a hipótese de até criar um ministério. É na área de... Na área... Eu diria assim, como uma espécie de analogia com o agrícola.','S');
Insert into TBOD_MAT_CATEG (CD_MAT_CATEG,NOME,DESCRICAO,ATIVO) values ('2','PLANOS','A população ela precisa da Zona Franca de Manaus, porque na Zona franca de Manaus, não é uma zona de exportação, é uma zona para o Brasil. Portanto ela tem um objetivo, ela evita o desmatamento, que é lucravito. Derrubar arvores é lucrativo!','S');

REM INSERTING into TBOD_MAT_SUBCATEG
SET DEFINE OFF;
Insert into TBOD_MAT_SUBCATEG (CD_MAT_SUBCATEG,NOME,DESCRICAO,ATIVO,APP,WEB,CD_MAT_CATEG) values ('1','Posts para Whatsapp e Facebook',null,'S','S','S','1');
Insert into TBOD_MAT_SUBCATEG (CD_MAT_SUBCATEG,NOME,DESCRICAO,ATIVO,APP,WEB,CD_MAT_CATEG) values ('2','Email Marketing',null,'S','N','S','1');
Insert into TBOD_MAT_SUBCATEG (CD_MAT_SUBCATEG,NOME,DESCRICAO,ATIVO,APP,WEB,CD_MAT_CATEG) values ('3','Foto de perfil para o Facebook',null,'S','N','S','1');
Insert into TBOD_MAT_SUBCATEG (CD_MAT_SUBCATEG,NOME,DESCRICAO,ATIVO,APP,WEB,CD_MAT_CATEG) values ('4','Capa para Facebook',null,'S','N','S','1');
Insert into TBOD_MAT_SUBCATEG (CD_MAT_SUBCATEG,NOME,DESCRICAO,ATIVO,APP,WEB,CD_MAT_CATEG) values ('5','Pessoa Física',null,'S','S','S','2');
Insert into TBOD_MAT_SUBCATEG (CD_MAT_SUBCATEG,NOME,DESCRICAO,ATIVO,APP,WEB,CD_MAT_CATEG) values ('6','PME',null,'S','S','S','2');
Insert into TBOD_MAT_SUBCATEG (CD_MAT_SUBCATEG,NOME,DESCRICAO,ATIVO,APP,WEB,CD_MAT_CATEG) values ('7','Posts para Whatsapp e Facebook',null,'S','N','S','2');
Insert into TBOD_MAT_SUBCATEG (CD_MAT_SUBCATEG,NOME,DESCRICAO,ATIVO,APP,WEB,CD_MAT_CATEG) values ('8','Email Marketing',null,'S','N','S','2');


REM INSERTING into TBOD_MAT_DIVULGA
SET DEFINE OFF;
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('28','2','7','arduino_esplora200x196.png','desc do material arduino_esplora200x196.png','image/png','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('29','1','4','capa-fb-1280x555-1.jpg','capa-fb-1280x555-1.jpg','image/jpg','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('30','1','4','capa-fb-1280x555-2.jpg','capa-fb-1280x555-2.jpg','image/jpg','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('31','1','4','capa-fb-1280x555-3.jpg','capa-fb-1280x555-3.jpg','image/jpg','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('32','1','4','capa-fb-1280x555-4.jpg','capa-fb-1280x555-4.jpg','image/jpg','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('33','1','4','capa-fb-1280x555-5.jpg','capa-fb-1280x555-5.jpg','image/jpg','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('34','1','4','capa-fb-1280x555-6.jpg','capa-fb-1280x555-6.jpg','image/jpg','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('35','1','4','capa-fb-1280x555-7.jpg','capa-fb-1280x555-7.jpg','image/jpg','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('36','1','4','capa-fb-1280x555-8.jpg','capa-fb-1280x555-8.jpg','image/jpg','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('37','1','4','capa-fb-1280x555-9.jpg','capa-fb-1280x555-9.jpg','image/jpg','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('38','1','4','capa-fb-1280x555-10.jpg','capa-fb-1280x555-10.jpg','image/jpg','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('39','1','4','capa-fb-1280x555-11.jpg','capa-fb-1280x555-11.jpg','image/jpg','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('40','1','4','capa-fb-1280x555-12.jpg','capa-fb-1280x555-12.jpg','image/jpg','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('41','1','4','capa-fb-1280x555-13.jpg','capa-fb-1280x555-13.jpg','image/jpg','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('42','1','4','capa-fb-1280x555-14.jpg','capa-fb-1280x555-14.jpg','image/jpg','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('43','1','3','foto-perfil-fb-500x500-1.jpg','foto-perfil-fb-500x500-1.jpg','image/jpg','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('44','1','3','foto-perfil-fb-500x500-2.jpg','foto-perfil-fb-500x500-2.jpg','image/jpg','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('45','1','3','foto-perfil-fb-500x500-3.jpg','foto-perfil-fb-500x500-3.jpg','image/jpg','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('46','1','3','foto-perfil-fb-500x500-4.jpg','foto-perfil-fb-500x500-4.jpg','image/jpg','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('47','2','5','pf-dental-bem-estar-fb-wapp-1000x1000.jpg','pf-dental-bem-estar-fb-wapp-1000x1000.jpg','image/jpg','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('48','2','5','pf-dental-estetica-fb-wapp-1000x1000.jpg','pf-dental-estetica-fb-wapp-1000x1000.jpg','image/jpg','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('49','2','5','pf-dental-junior-fb-wapp-1000x1000.jpg','pf-dental-junior-fb-wapp-1000x1000.jpg','image/jpg','N');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('50','2','5','pf-dental-orto-fb-wapp-1000x1000.jpg','pf-dental-orto-fb-wapp-1000x1000.jpg','image/jpg','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('51','2','5','pf-dental-vip-fb-wapp-1000x1000.jpg','pf-dental-vip-fb-wapp-1000x1000.jpg','image/jpg','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('52','2','5','pf-dente-de-leite-fb-wapp-1000x1000.jpg','pf-dente-de-leite-fb-wapp-1000x1000.jpg','image/jpg','N');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('53','2','6','pme-integral-doc-le-fb-wapp-1000x1000.jpg','pme-integral-doc-le-fb-wapp-1000x1000.jpg','image/jpg','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('54','2','6','pme-master-le-fb-wapp-1000x1000.jpg','pme-master-le-fb-wapp-1000x1000.jpg','image/jpg','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('60','1','1','diferenciais-odpv-facebook-whatsapp-1000x1000-1.jpg','diferenciais-odpv-facebook-whatsapp-1000x1000-1.jpg','image/jpg','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('61','1','1','diferenciais-odpv-facebook-whatsapp-1000x1000-2.jpg','diferenciais-odpv-facebook-whatsapp-1000x1000-2.jpg','image/jpg','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('62','1','1','diferenciais-odpv-facebook-whatsapp-1000x1000-3.jpg','diferenciais-odpv-facebook-whatsapp-1000x1000-3.jpg','image/jpg','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('63','1','1','diferenciais-odpv-facebook-whatsapp-1000x1000-4.jpg','diferenciais-odpv-facebook-whatsapp-1000x1000-4.jpg','image/jpg','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('64','1','1','diferenciais-odpv-facebook-whatsapp-1000x1000-5.jpg','diferenciais-odpv-facebook-whatsapp-1000x1000-5.jpg','image/jpg','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('65','1','2','emkt-pf-790x1755.jpg','emkt-pf-790x1755.jpg','image/jpg','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('66','1','2','emkt-pme-790x1210.jpg','emkt-pme-790x1210.jpg','image/jpg','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('1','2','7','papainoelvelo23_200x98.jpg','desc do material papainoelvelo23_200x98.jpg','image/png','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('2','2','7','emktForcaAprovado200x296.jpg','desc do material emktForcaAprovado200x296.jpg','image/png','N');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('3','2','7','emktForcaAprovado200x296.jpg','desc do material emktForcaAprovado200x296.jpg','image/png','N');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('4','2','7','arduino_uno270x187.jpg','desc do material arduino_uno270x187.jpg','image/png','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('5','2','7','arduino_leonardo200x126.jpg','desc do material arduino_leonardo200x126.jpg','image/png','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('6','2','7','arduino_101_200x126.jpg','desc do material arduino_101_200x126.jpg','image/png','S');
Insert into TBOD_MAT_DIVULGA (CD_MAT_DIVULGA,CD_CATEGORIA,CD_SUB_CATEGORIA,NOME,DESCRICAO,TIPO_CONTEUDO,ATIVO) values ('9','2','7','Raspberry-Pi-Model-A-1-462x322.jpg','desc Raspberry-Pi-Model-A-1-462x322.jpg','image/jpg','S');


REM INSERTING into TBOD_REL_MAT_SUBCATEG
SET DEFINE OFF;
Insert into TBOD_REL_MAT_SUBCATEG (CD_MAT_SUBCATEG,CD_MAT_DIVULGA) values ('1','1');
Insert into TBOD_REL_MAT_SUBCATEG (CD_MAT_SUBCATEG,CD_MAT_DIVULGA) values ('1','2');
Insert into TBOD_REL_MAT_SUBCATEG (CD_MAT_SUBCATEG,CD_MAT_DIVULGA) values ('1','3');
Insert into TBOD_REL_MAT_SUBCATEG (CD_MAT_SUBCATEG,CD_MAT_DIVULGA) values ('1','4');
Insert into TBOD_REL_MAT_SUBCATEG (CD_MAT_SUBCATEG,CD_MAT_DIVULGA) values ('1','5');
Insert into TBOD_REL_MAT_SUBCATEG (CD_MAT_SUBCATEG,CD_MAT_DIVULGA) values ('1','6');
Insert into TBOD_REL_MAT_SUBCATEG (CD_MAT_SUBCATEG,CD_MAT_DIVULGA) values ('2','9');
Insert into TBOD_REL_MAT_SUBCATEG (CD_MAT_SUBCATEG,CD_MAT_DIVULGA) values ('1','28');
Insert into TBOD_REL_MAT_SUBCATEG (CD_MAT_SUBCATEG,CD_MAT_DIVULGA) values ('4','29');
Insert into TBOD_REL_MAT_SUBCATEG (CD_MAT_SUBCATEG,CD_MAT_DIVULGA) values ('4','30');
Insert into TBOD_REL_MAT_SUBCATEG (CD_MAT_SUBCATEG,CD_MAT_DIVULGA) values ('4','31');
Insert into TBOD_REL_MAT_SUBCATEG (CD_MAT_SUBCATEG,CD_MAT_DIVULGA) values ('4','32');
Insert into TBOD_REL_MAT_SUBCATEG (CD_MAT_SUBCATEG,CD_MAT_DIVULGA) values ('4','33');
Insert into TBOD_REL_MAT_SUBCATEG (CD_MAT_SUBCATEG,CD_MAT_DIVULGA) values ('4','34');
Insert into TBOD_REL_MAT_SUBCATEG (CD_MAT_SUBCATEG,CD_MAT_DIVULGA) values ('4','35');
Insert into TBOD_REL_MAT_SUBCATEG (CD_MAT_SUBCATEG,CD_MAT_DIVULGA) values ('4','36');
Insert into TBOD_REL_MAT_SUBCATEG (CD_MAT_SUBCATEG,CD_MAT_DIVULGA) values ('4','37');
Insert into TBOD_REL_MAT_SUBCATEG (CD_MAT_SUBCATEG,CD_MAT_DIVULGA) values ('4','38');
Insert into TBOD_REL_MAT_SUBCATEG (CD_MAT_SUBCATEG,CD_MAT_DIVULGA) values ('4','39');
Insert into TBOD_REL_MAT_SUBCATEG (CD_MAT_SUBCATEG,CD_MAT_DIVULGA) values ('4','40');
Insert into TBOD_REL_MAT_SUBCATEG (CD_MAT_SUBCATEG,CD_MAT_DIVULGA) values ('4','41');
Insert into TBOD_REL_MAT_SUBCATEG (CD_MAT_SUBCATEG,CD_MAT_DIVULGA) values ('4','42');
Insert into TBOD_REL_MAT_SUBCATEG (CD_MAT_SUBCATEG,CD_MAT_DIVULGA) values ('3','43');
Insert into TBOD_REL_MAT_SUBCATEG (CD_MAT_SUBCATEG,CD_MAT_DIVULGA) values ('3','44');
Insert into TBOD_REL_MAT_SUBCATEG (CD_MAT_SUBCATEG,CD_MAT_DIVULGA) values ('3','45');
Insert into TBOD_REL_MAT_SUBCATEG (CD_MAT_SUBCATEG,CD_MAT_DIVULGA) values ('3','46');
Insert into TBOD_REL_MAT_SUBCATEG (CD_MAT_SUBCATEG,CD_MAT_DIVULGA) values ('5','47');
Insert into TBOD_REL_MAT_SUBCATEG (CD_MAT_SUBCATEG,CD_MAT_DIVULGA) values ('5','48');
Insert into TBOD_REL_MAT_SUBCATEG (CD_MAT_SUBCATEG,CD_MAT_DIVULGA) values ('5','49');
Insert into TBOD_REL_MAT_SUBCATEG (CD_MAT_SUBCATEG,CD_MAT_DIVULGA) values ('5','50');
Insert into TBOD_REL_MAT_SUBCATEG (CD_MAT_SUBCATEG,CD_MAT_DIVULGA) values ('5','51');
Insert into TBOD_REL_MAT_SUBCATEG (CD_MAT_SUBCATEG,CD_MAT_DIVULGA) values ('5','52');
Insert into TBOD_REL_MAT_SUBCATEG (CD_MAT_SUBCATEG,CD_MAT_DIVULGA) values ('6','53');
Insert into TBOD_REL_MAT_SUBCATEG (CD_MAT_SUBCATEG,CD_MAT_DIVULGA) values ('6','54');

