CREATE SCHEMA IF NOT EXISTS agi_oereb_annex;
CREATE SEQUENCE agi_oereb_annex.t_ili2db_seq;;
-- Localisation_V1.LocalisedText
CREATE TABLE agi_oereb_annex.localisation_v1_localisedtext (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_oereb_annex.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
  ,alanguage varchar(255) NULL
  ,atext text NOT NULL
  ,loclstn_v1_mltlngltext_localisedtext bigint NULL
)
;
CREATE INDEX localisation_v1_loclsdtext_t_basket_idx ON agi_oereb_annex.localisation_v1_localisedtext ( t_basket );
CREATE INDEX localisation_v1_loclsdtext_loclstn_v1_mltxt_lclsdtext_idx ON agi_oereb_annex.localisation_v1_localisedtext ( loclstn_v1_mltlngltext_localisedtext );
-- Localisation_V1.LocalisedMText
CREATE TABLE agi_oereb_annex.localisation_v1_localisedmtext (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_oereb_annex.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
  ,alanguage varchar(255) NULL
  ,atext text NOT NULL
  ,loclstn_v1_ltlnglmtext_localisedtext bigint NULL
)
;
CREATE INDEX localisation_v1_lclsdmtext_t_basket_idx ON agi_oereb_annex.localisation_v1_localisedmtext ( t_basket );
CREATE INDEX localisation_v1_lclsdmtext_loclstn_v1_lttxt_lclsdtext_idx ON agi_oereb_annex.localisation_v1_localisedmtext ( loclstn_v1_ltlnglmtext_localisedtext );
-- Localisation_V1.MultilingualText
CREATE TABLE agi_oereb_annex.localisation_v1_multilingualtext (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_oereb_annex.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
)
;
CREATE INDEX localisatin_v1_mltlngltext_t_basket_idx ON agi_oereb_annex.localisation_v1_multilingualtext ( t_basket );
-- Localisation_V1.MultilingualMText
CREATE TABLE agi_oereb_annex.localisation_v1_multilingualmtext (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_oereb_annex.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
)
;
CREATE INDEX localisatn_v1_mltlnglmtext_t_basket_idx ON agi_oereb_annex.localisation_v1_multilingualmtext ( t_basket );
-- OeREB_ExtractAnnex_V1_0.Code_
CREATE TABLE agi_oereb_annex.oereb_extractannex_v1_0_code_ (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_oereb_annex.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
  ,avalue varchar(60) NOT NULL
  ,oerb_xtnx_vpltywthplrc_themes bigint NULL
)
;
CREATE INDEX oereb_extractnnx_v1_0_cde__t_basket_idx ON agi_oereb_annex.oereb_extractannex_v1_0_code_ ( t_basket );
CREATE INDEX oereb_extractnnx_v1_0_cde__oerb_xtnx_vplwthplrc_thmes_idx ON agi_oereb_annex.oereb_extractannex_v1_0_code_ ( oerb_xtnx_vpltywthplrc_themes );
COMMENT ON COLUMN agi_oereb_annex.oereb_extractannex_v1_0_code_.oerb_xtnx_vpltywthplrc_themes IS 'Thema / SubThema
Bundesthema:
value=Nutzungsplanung
Kantonales Subthema zu einem Bundesthema:
value=ch.SO.CantonalBuildingLines
Kantonales Thema (kein Subthema zu einem Bundesthema):
value=ch.SO.Einzelschutz';
-- OeREB_ExtractAnnex_V1_0.Annex.ThemaTxt
CREATE TABLE agi_oereb_annex.oerb_xtnx_v1_0annex_thematxt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_oereb_annex.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,acode varchar(255) NOT NULL
  ,titel text NULL
  ,titel_de text NULL
  ,titel_fr text NULL
  ,titel_rm text NULL
  ,titel_it text NULL
  ,titel_en text NULL
  ,othercode varchar(60) NULL
)
;
CREATE INDEX oerb_xtnx_v1_0annex_thmtxt_t_basket_idx ON agi_oereb_annex.oerb_xtnx_v1_0annex_thematxt ( t_basket );
COMMENT ON COLUMN agi_oereb_annex.oerb_xtnx_v1_0annex_thematxt.othercode IS 'Kantonales Subthema zu einem Bundesthema:
Code=Nutzungsplanung
otherCode=ch.SO.CantonalBuildingLines
In der Transferstruktur:
Eigentumsbeschraenkung/Thema=Nutzungsplanung
Eigentumsbeschraenkung/SubThema=ch.SO.CantonalBuildingLines
Kantonales Thema (kein Subthema zu einem Bundesthema):
Code=WeiteresThema
otherCode=ch.SO.Einzelschutz
In der Transferstruktur:
Eigentumsbeschraenkung/Thema=WeiteresThema
Eigentumsbeschraenkung/SubThema=ch.SO.Einzelschutz';
-- OeREB_ExtractAnnex_V1_0.Annex.Logo
CREATE TABLE agi_oereb_annex.oerb_xtnx_v1_0annex_logo (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_oereb_annex.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,acode varchar(60) NOT NULL
  ,logo bytea NOT NULL
)
;
CREATE INDEX oerb_xtnx_v1_0annex_logo_t_basket_idx ON agi_oereb_annex.oerb_xtnx_v1_0annex_logo ( t_basket );
COMMENT ON COLUMN agi_oereb_annex.oerb_xtnx_v1_0annex_logo.acode IS 'ch.plr, ch, ch.so oder ch.bfsnr';
-- OeREB_ExtractAnnex_V1_0.Annex.MunicipalityWithPLRC
CREATE TABLE agi_oereb_annex.oerb_xtnx_v1_0annex_municipalitywithplrc (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_oereb_annex.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,municipality integer NOT NULL
  ,basedatadate timestamp NULL
  ,metadataofgeographicalbasedata varchar(1023) NULL
)
;
CREATE INDEX oerb_xtnx_v1_ncpltywthplrc_t_basket_idx ON agi_oereb_annex.oerb_xtnx_v1_0annex_municipalitywithplrc ( t_basket );
COMMENT ON COLUMN agi_oereb_annex.oerb_xtnx_v1_0annex_municipalitywithplrc.municipality IS 'BFS-Nr.';
COMMENT ON COLUMN agi_oereb_annex.oerb_xtnx_v1_0annex_municipalitywithplrc.basedatadate IS 'Stand der Grundlagedaten z.B. der AV';
-- OeREB_ExtractAnnex_V1_0.Annex.MapLayering
CREATE TABLE agi_oereb_annex.oerb_xtnx_v1_0annex_maplayering (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_oereb_annex.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,webservice varchar(1023) NOT NULL
  ,layerindex integer NOT NULL
  ,layeropacity decimal(4,3) NOT NULL
)
;
CREATE INDEX oerb_xtnx_v1_0nnx_mplyring_t_basket_idx ON agi_oereb_annex.oerb_xtnx_v1_0annex_maplayering ( t_basket );
-- OeREB_ExtractAnnex_V1_0.Annex.Office
CREATE TABLE agi_oereb_annex.oerb_xtnx_v1_0annex_office (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_oereb_annex.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,aname text NULL
  ,aname_de text NULL
  ,aname_fr text NULL
  ,aname_rm text NULL
  ,aname_it text NULL
  ,aname_en text NULL
  ,officeatweb varchar(1023) NOT NULL
  ,auid varchar(12) NULL
  ,line1 varchar(80) NULL
  ,line2 varchar(80) NULL
  ,street varchar(100) NULL
  ,anumber varchar(7) NULL
  ,postalcode varchar(4) NULL
  ,city varchar(60) NULL
)
;
CREATE INDEX oerb_xtnx_v1_0annex_office_t_basket_idx ON agi_oereb_annex.oerb_xtnx_v1_0annex_office ( t_basket );
COMMENT ON COLUMN agi_oereb_annex.oerb_xtnx_v1_0annex_office.officeatweb IS 'OfficeAtWeb wird für die Referenzierung verwendet!
solange UID nicht generell zugeordnet.';
COMMENT ON COLUMN agi_oereb_annex.oerb_xtnx_v1_0annex_office.line1 IS 'Falls im statischen Auszug mehr Informationen angezeigt
werden sollen als im Rahmenmodell möglich ist zu erfassen.
Im Rahmenmodell können nur die Attribute Name, AmtImWeb, UID erfasst werden.';
-- OeREB_ExtractAnnex_V1_0.Annex.Glossary
CREATE TABLE agi_oereb_annex.oerb_xtnx_v1_0annex_glossary (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_oereb_annex.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,title text NULL
  ,title_de text NULL
  ,title_fr text NULL
  ,title_rm text NULL
  ,title_it text NULL
  ,title_en text NULL
  ,content text NULL
  ,content_de text NULL
  ,content_fr text NULL
  ,content_rm text NULL
  ,content_it text NULL
  ,content_en text NULL
)
;
CREATE INDEX oerb_xtnx_v1_0annx_glssary_t_basket_idx ON agi_oereb_annex.oerb_xtnx_v1_0annex_glossary ( t_basket );
-- OeREB_ExtractAnnex_V1_0.Annex.ExclusionOfLiability
CREATE TABLE agi_oereb_annex.oerb_xtnx_v1_0annex_exclusionofliability (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_oereb_annex.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,title text NULL
  ,title_de text NULL
  ,title_fr text NULL
  ,title_rm text NULL
  ,title_it text NULL
  ,title_en text NULL
  ,content text NULL
  ,content_de text NULL
  ,content_fr text NULL
  ,content_rm text NULL
  ,content_it text NULL
  ,content_en text NULL
)
;
CREATE INDEX oerb_xtnx_v1__xclsnflblity_t_basket_idx ON agi_oereb_annex.oerb_xtnx_v1_0annex_exclusionofliability ( t_basket );
-- OeREB_ExtractAnnex_V1_0.Annex.GeneralInformation
CREATE TABLE agi_oereb_annex.oerb_xtnx_v1_0annex_generalinformation (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_oereb_annex.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,content text NULL
  ,content_de text NULL
  ,content_fr text NULL
  ,content_rm text NULL
  ,content_it text NULL
  ,content_en text NULL
)
;
CREATE INDEX oerb_xtnx_v1__gnrlnfrmtion_t_basket_idx ON agi_oereb_annex.oerb_xtnx_v1_0annex_generalinformation ( t_basket );
-- OeREB_ExtractAnnex_V1_0.Annex.BaseData
CREATE TABLE agi_oereb_annex.oerb_xtnx_v1_0annex_basedata (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_oereb_annex.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,content text NULL
  ,content_de text NULL
  ,content_fr text NULL
  ,content_rm text NULL
  ,content_it text NULL
  ,content_en text NULL
)
;
CREATE INDEX oerb_xtnx_v1_0annex_bsdata_t_basket_idx ON agi_oereb_annex.oerb_xtnx_v1_0annex_basedata ( t_basket );
CREATE TABLE agi_oereb_annex.T_ILI2DB_BASKET (
  T_Id bigint PRIMARY KEY
  ,dataset bigint NULL
  ,topic varchar(200) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,attachmentKey varchar(200) NOT NULL
  ,domains varchar(1024) NULL
)
;
CREATE INDEX T_ILI2DB_BASKET_dataset_idx ON agi_oereb_annex.t_ili2db_basket ( dataset );
CREATE TABLE agi_oereb_annex.T_ILI2DB_DATASET (
  T_Id bigint PRIMARY KEY
  ,datasetName varchar(200) NULL
)
;
CREATE TABLE agi_oereb_annex.T_ILI2DB_IMPORT (
  T_Id bigint PRIMARY KEY
  ,dataset bigint NOT NULL
  ,importDate timestamp NOT NULL
  ,importUser varchar(40) NOT NULL
  ,importFile varchar(200) NULL
)
;
CREATE INDEX T_ILI2DB_IMPORT_dataset_idx ON agi_oereb_annex.t_ili2db_import ( dataset );
CREATE TABLE agi_oereb_annex.T_ILI2DB_IMPORT_BASKET (
  T_Id bigint PRIMARY KEY
  ,importrun bigint NOT NULL
  ,basket bigint NOT NULL
  ,objectCount integer NULL
)
;
CREATE INDEX T_ILI2DB_IMPORT_BASKET_importrun_idx ON agi_oereb_annex.t_ili2db_import_basket ( importrun );
CREATE INDEX T_ILI2DB_IMPORT_BASKET_basket_idx ON agi_oereb_annex.t_ili2db_import_basket ( basket );
CREATE TABLE agi_oereb_annex.T_ILI2DB_INHERITANCE (
  thisClass varchar(1024) PRIMARY KEY
  ,baseClass varchar(1024) NULL
)
;
CREATE TABLE agi_oereb_annex.T_ILI2DB_SETTINGS (
  tag varchar(60) PRIMARY KEY
  ,setting varchar(1024) NULL
)
;
CREATE TABLE agi_oereb_annex.T_ILI2DB_TRAFO (
  iliname varchar(1024) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE agi_oereb_annex.T_ILI2DB_MODEL (
  filename varchar(250) NOT NULL
  ,iliversion varchar(3) NOT NULL
  ,modelName text NOT NULL
  ,content text NOT NULL
  ,importDate timestamp NOT NULL
  ,PRIMARY KEY (iliversion,modelName)
)
;
CREATE TABLE agi_oereb_annex.T_ILI2DB_CLASSNAME (
  IliName varchar(1024) PRIMARY KEY
  ,SqlName varchar(1024) NOT NULL
)
;
CREATE TABLE agi_oereb_annex.T_ILI2DB_ATTRNAME (
  IliName varchar(1024) NOT NULL
  ,SqlName varchar(1024) NOT NULL
  ,ColOwner varchar(1024) NOT NULL
  ,Target varchar(1024) NULL
  ,PRIMARY KEY (SqlName,ColOwner)
)
;
CREATE TABLE agi_oereb_annex.T_ILI2DB_COLUMN_PROP (
  tablename varchar(255) NOT NULL
  ,subtype varchar(255) NULL
  ,columnname varchar(255) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE agi_oereb_annex.T_ILI2DB_TABLE_PROP (
  tablename varchar(255) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE agi_oereb_annex.T_ILI2DB_META_ATTRS (
  ilielement varchar(255) NOT NULL
  ,attr_name varchar(1024) NOT NULL
  ,attr_value varchar(1024) NOT NULL
)
;
ALTER TABLE agi_oereb_annex.localisation_v1_localisedtext ADD CONSTRAINT localisation_v1_loclsdtext_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES agi_oereb_annex.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE agi_oereb_annex.localisation_v1_localisedtext ADD CONSTRAINT localisation_v1_loclsdtext_loclstn_v1_mltxt_lclsdtext_fkey FOREIGN KEY ( loclstn_v1_mltlngltext_localisedtext ) REFERENCES agi_oereb_annex.localisation_v1_multilingualtext DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE agi_oereb_annex.localisation_v1_localisedmtext ADD CONSTRAINT localisation_v1_lclsdmtext_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES agi_oereb_annex.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE agi_oereb_annex.localisation_v1_localisedmtext ADD CONSTRAINT localisation_v1_lclsdmtext_loclstn_v1_lttxt_lclsdtext_fkey FOREIGN KEY ( loclstn_v1_ltlnglmtext_localisedtext ) REFERENCES agi_oereb_annex.localisation_v1_multilingualmtext DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE agi_oereb_annex.localisation_v1_multilingualtext ADD CONSTRAINT localisatin_v1_mltlngltext_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES agi_oereb_annex.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE agi_oereb_annex.localisation_v1_multilingualmtext ADD CONSTRAINT localisatn_v1_mltlnglmtext_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES agi_oereb_annex.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE agi_oereb_annex.oereb_extractannex_v1_0_code_ ADD CONSTRAINT oereb_extractnnx_v1_0_cde__T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES agi_oereb_annex.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE agi_oereb_annex.oereb_extractannex_v1_0_code_ ADD CONSTRAINT oereb_extractnnx_v1_0_cde__oerb_xtnx_vplwthplrc_thmes_fkey FOREIGN KEY ( oerb_xtnx_vpltywthplrc_themes ) REFERENCES agi_oereb_annex.oerb_xtnx_v1_0annex_municipalitywithplrc DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE agi_oereb_annex.oerb_xtnx_v1_0annex_thematxt ADD CONSTRAINT oerb_xtnx_v1_0annex_thmtxt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES agi_oereb_annex.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE agi_oereb_annex.oerb_xtnx_v1_0annex_logo ADD CONSTRAINT oerb_xtnx_v1_0annex_logo_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES agi_oereb_annex.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE agi_oereb_annex.oerb_xtnx_v1_0annex_municipalitywithplrc ADD CONSTRAINT oerb_xtnx_v1_ncpltywthplrc_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES agi_oereb_annex.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE agi_oereb_annex.oerb_xtnx_v1_0annex_municipalitywithplrc ADD CONSTRAINT oerb_xtnx_v1ncpltywthplrc_municipality_check CHECK( municipality BETWEEN 1 AND 9999);
ALTER TABLE agi_oereb_annex.oerb_xtnx_v1_0annex_maplayering ADD CONSTRAINT oerb_xtnx_v1_0nnx_mplyring_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES agi_oereb_annex.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE agi_oereb_annex.oerb_xtnx_v1_0annex_maplayering ADD CONSTRAINT oerb_xtnx_v10nnx_mplyring_layerindex_check CHECK( layerindex BETWEEN -1000 AND 1000);
ALTER TABLE agi_oereb_annex.oerb_xtnx_v1_0annex_maplayering ADD CONSTRAINT oerb_xtnx_v10nnx_mplyring_layeropacity_check CHECK( layeropacity BETWEEN 0.0 AND 1.0);
ALTER TABLE agi_oereb_annex.oerb_xtnx_v1_0annex_office ADD CONSTRAINT oerb_xtnx_v1_0annex_office_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES agi_oereb_annex.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE agi_oereb_annex.oerb_xtnx_v1_0annex_glossary ADD CONSTRAINT oerb_xtnx_v1_0annx_glssary_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES agi_oereb_annex.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE agi_oereb_annex.oerb_xtnx_v1_0annex_exclusionofliability ADD CONSTRAINT oerb_xtnx_v1__xclsnflblity_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES agi_oereb_annex.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE agi_oereb_annex.oerb_xtnx_v1_0annex_generalinformation ADD CONSTRAINT oerb_xtnx_v1__gnrlnfrmtion_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES agi_oereb_annex.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE agi_oereb_annex.oerb_xtnx_v1_0annex_basedata ADD CONSTRAINT oerb_xtnx_v1_0annex_bsdata_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES agi_oereb_annex.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE agi_oereb_annex.T_ILI2DB_BASKET ADD CONSTRAINT T_ILI2DB_BASKET_dataset_fkey FOREIGN KEY ( dataset ) REFERENCES agi_oereb_annex.T_ILI2DB_DATASET DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX T_ILI2DB_DATASET_datasetName_key ON agi_oereb_annex.T_ILI2DB_DATASET (datasetName)
;
ALTER TABLE agi_oereb_annex.T_ILI2DB_IMPORT_BASKET ADD CONSTRAINT T_ILI2DB_IMPORT_BASKET_importrun_fkey FOREIGN KEY ( importrun ) REFERENCES agi_oereb_annex.T_ILI2DB_IMPORT DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE agi_oereb_annex.T_ILI2DB_IMPORT_BASKET ADD CONSTRAINT T_ILI2DB_IMPORT_BASKET_basket_fkey FOREIGN KEY ( basket ) REFERENCES agi_oereb_annex.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX T_ILI2DB_MODEL_iliversion_modelName_key ON agi_oereb_annex.T_ILI2DB_MODEL (iliversion,modelName)
;
CREATE UNIQUE INDEX T_ILI2DB_ATTRNAME_SqlName_ColOwner_key ON agi_oereb_annex.T_ILI2DB_ATTRNAME (SqlName,ColOwner)
;
INSERT INTO agi_oereb_annex.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('Localisation_V1.MultilingualText','localisation_v1_multilingualtext');
INSERT INTO agi_oereb_annex.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRM_V1_1.ArtikelInhaltMehrsprachig','oerebkrm_v1_1_artikelinhaltmehrsprachig');
INSERT INTO agi_oereb_annex.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.BaseData','oerb_xtnx_v1_0annex_basedata');
INSERT INTO agi_oereb_annex.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Logo','oerb_xtnx_v1_0annex_logo');
INSERT INTO agi_oereb_annex.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.MunicipalityWithPLRC','oerb_xtnx_v1_0annex_municipalitywithplrc');
INSERT INTO agi_oereb_annex.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LocalisationCH_V1.MultilingualMText','localisationch_v1_multilingualmtext');
INSERT INTO agi_oereb_annex.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Office','oerb_xtnx_v1_0annex_office');
INSERT INTO agi_oereb_annex.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.GeneralInformation','oerb_xtnx_v1_0annex_generalinformation');
INSERT INTO agi_oereb_annex.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.MapLayering','oerb_xtnx_v1_0annex_maplayering');
INSERT INTO agi_oereb_annex.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LocalisationCH_V1.LocalisedMText','localisationch_v1_localisedmtext');
INSERT INTO agi_oereb_annex.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.ThemaTxt','oerb_xtnx_v1_0annex_thematxt');
INSERT INTO agi_oereb_annex.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('Localisation_V1.LocalisedText','localisation_v1_localisedtext');
INSERT INTO agi_oereb_annex.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('Localisation_V1.LocalisedMText','localisation_v1_localisedmtext');
INSERT INTO agi_oereb_annex.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Glossary','oerb_xtnx_v1_0annex_glossary');
INSERT INTO agi_oereb_annex.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LocalisationCH_V1.MultilingualText','localisationch_v1_multilingualtext');
INSERT INTO agi_oereb_annex.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LocalisationCH_V1.LocalisedText','localisationch_v1_localisedtext');
INSERT INTO agi_oereb_annex.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('Localisation_V1.MultilingualMText','localisation_v1_multilingualmtext');
INSERT INTO agi_oereb_annex.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('CatalogueObjects_V1.Catalogues.Item','catalgbjcts_v1catalogues_item');
INSERT INTO agi_oereb_annex.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.ExclusionOfLiability','oerb_xtnx_v1_0annex_exclusionofliability');
INSERT INTO agi_oereb_annex.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREB_ExtractAnnex_V1_0.Code_','oereb_extractannex_v1_0_code_');
INSERT INTO agi_oereb_annex.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.GeneralInformation.Content','content','oerb_xtnx_v1_0annex_generalinformation',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Logo.logo','logo','oerb_xtnx_v1_0annex_logo',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.MapLayering.layerIndex','layerindex','oerb_xtnx_v1_0annex_maplayering',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.BaseData.Content','content','oerb_xtnx_v1_0annex_basedata',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Office.Street','street','oerb_xtnx_v1_0annex_office',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Glossary.Content','content','oerb_xtnx_v1_0annex_glossary',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('Localisation_V1.MultilingualText.LocalisedText','loclstn_v1_mltlngltext_localisedtext','localisation_v1_localisedtext','localisation_v1_multilingualtext');
INSERT INTO agi_oereb_annex.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Office.Name','aname','oerb_xtnx_v1_0annex_office',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.MunicipalityWithPLRC.municipality','municipality','oerb_xtnx_v1_0annex_municipalitywithplrc',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.ThemaTxt.otherCode','othercode','oerb_xtnx_v1_0annex_thematxt',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Office.PostalCode','postalcode','oerb_xtnx_v1_0annex_office',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.MunicipalityWithPLRC.themes','oerb_xtnx_vpltywthplrc_themes','oereb_extractannex_v1_0_code_','oerb_xtnx_v1_0annex_municipalitywithplrc');
INSERT INTO agi_oereb_annex.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Code_.value','avalue','oereb_extractannex_v1_0_code_',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.ExclusionOfLiability.Title','title','oerb_xtnx_v1_0annex_exclusionofliability',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.MapLayering.webservice','webservice','oerb_xtnx_v1_0annex_maplayering',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Office.Number','anumber','oerb_xtnx_v1_0annex_office',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.MunicipalityWithPLRC.metadataOfGeographicalBaseData','metadataofgeographicalbasedata','oerb_xtnx_v1_0annex_municipalitywithplrc',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Office.OfficeAtWeb','officeatweb','oerb_xtnx_v1_0annex_office',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.MapLayering.layerOpacity','layeropacity','oerb_xtnx_v1_0annex_maplayering',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Logo.code','acode','oerb_xtnx_v1_0annex_logo',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.ExclusionOfLiability.Content','content','oerb_xtnx_v1_0annex_exclusionofliability',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('Localisation_V1.LocalisedMText.Text','atext','localisation_v1_localisedmtext',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('Localisation_V1.LocalisedText.Language','alanguage','localisation_v1_localisedtext',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.ThemaTxt.Code','acode','oerb_xtnx_v1_0annex_thematxt',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Glossary.Title','title','oerb_xtnx_v1_0annex_glossary',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Office.Line2','line2','oerb_xtnx_v1_0annex_office',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.ThemaTxt.Titel','titel','oerb_xtnx_v1_0annex_thematxt',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Office.Line1','line1','oerb_xtnx_v1_0annex_office',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.MunicipalityWithPLRC.baseDataDate','basedatadate','oerb_xtnx_v1_0annex_municipalitywithplrc',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Office.City','city','oerb_xtnx_v1_0annex_office',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('Localisation_V1.LocalisedText.Text','atext','localisation_v1_localisedtext',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('Localisation_V1.MultilingualMText.LocalisedText','loclstn_v1_ltlnglmtext_localisedtext','localisation_v1_localisedmtext','localisation_v1_multilingualmtext');
INSERT INTO agi_oereb_annex.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('Localisation_V1.LocalisedMText.Language','alanguage','localisation_v1_localisedmtext',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Office.UID','auid','oerb_xtnx_v1_0annex_office',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('Localisation_V1.MultilingualText','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_oereb_annex.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Logo','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_oereb_annex.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.MunicipalityWithPLRC','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_oereb_annex.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LocalisationCH_V1.MultilingualMText','ch.ehi.ili2db.inheritance','superClass');
INSERT INTO agi_oereb_annex.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.GeneralInformation','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_oereb_annex.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.MapLayering','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_oereb_annex.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.ExclusionOfLiability.Title','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO agi_oereb_annex.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.ThemaTxt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_oereb_annex.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('Localisation_V1.LocalisedText','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_oereb_annex.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.ThemaTxt.Titel','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO agi_oereb_annex.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('Localisation_V1.LocalisedMText','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_oereb_annex.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Glossary','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_oereb_annex.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Glossary.Title','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO agi_oereb_annex.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('CatalogueObjects_V1.Catalogues.Item','ch.ehi.ili2db.inheritance','subClass');
INSERT INTO agi_oereb_annex.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.ExclusionOfLiability.Content','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO agi_oereb_annex.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.BaseData','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_oereb_annex.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Office','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_oereb_annex.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LocalisationCH_V1.LocalisedMText','ch.ehi.ili2db.inheritance','superClass');
INSERT INTO agi_oereb_annex.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.BaseData.Content','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO agi_oereb_annex.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.GeneralInformation.Content','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO agi_oereb_annex.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LocalisationCH_V1.MultilingualText','ch.ehi.ili2db.inheritance','superClass');
INSERT INTO agi_oereb_annex.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LocalisationCH_V1.LocalisedText','ch.ehi.ili2db.inheritance','superClass');
INSERT INTO agi_oereb_annex.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Office.Name','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO agi_oereb_annex.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('Localisation_V1.MultilingualMText','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_oereb_annex.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.ExclusionOfLiability','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_oereb_annex.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Code_','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_oereb_annex.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Glossary.Content','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO agi_oereb_annex.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.ExclusionOfLiability',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.BaseData',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.MapLayering',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LocalisationCH_V1.LocalisedMText','Localisation_V1.LocalisedMText');
INSERT INTO agi_oereb_annex.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Office',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('Localisation_V1.MultilingualMText',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LocalisationCH_V1.MultilingualText','Localisation_V1.MultilingualText');
INSERT INTO agi_oereb_annex.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Logo',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('CatalogueObjects_V1.Catalogues.Item',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREB_ExtractAnnex_V1_0.Code_',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Glossary',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.ThemaTxt','CatalogueObjects_V1.Catalogues.Item');
INSERT INTO agi_oereb_annex.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('Localisation_V1.MultilingualText',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LocalisationCH_V1.MultilingualMText','Localisation_V1.MultilingualMText');
INSERT INTO agi_oereb_annex.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LocalisationCH_V1.LocalisedText','Localisation_V1.LocalisedText');
INSERT INTO agi_oereb_annex.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('Localisation_V1.LocalisedText',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.MunicipalityWithPLRC',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.GeneralInformation',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('Localisation_V1.LocalisedMText',NULL);
INSERT INTO agi_oereb_annex.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('localisation_v1_localisedmtext',NULL,'loclstn_v1_ltlnglmtext_localisedtext','ch.ehi.ili2db.foreignKey','localisation_v1_multilingualmtext');
INSERT INTO agi_oereb_annex.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oereb_extractannex_v1_0_code_',NULL,'oerb_xtnx_vpltywthplrc_themes','ch.ehi.ili2db.foreignKey','oerb_xtnx_v1_0annex_municipalitywithplrc');
INSERT INTO agi_oereb_annex.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('localisation_v1_localisedmtext',NULL,'T_Type','ch.ehi.ili2db.types','["localisation_v1_localisedmtext","localisationch_v1_localisedmtext"]');
INSERT INTO agi_oereb_annex.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('localisation_v1_localisedmtext',NULL,'atext','ch.ehi.ili2db.textKind','MTEXT');
INSERT INTO agi_oereb_annex.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerb_xtnx_v1_0annex_exclusionofliability',NULL,'T_Type','ch.ehi.ili2db.types','["oerb_xtnx_v1_0annex_exclusionofliability"]');
INSERT INTO agi_oereb_annex.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('localisation_v1_localisedtext',NULL,'T_Type','ch.ehi.ili2db.types','["localisation_v1_localisedtext","localisationch_v1_localisedtext"]');
INSERT INTO agi_oereb_annex.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerb_xtnx_v1_0annex_basedata',NULL,'T_Type','ch.ehi.ili2db.types','["oerb_xtnx_v1_0annex_basedata"]');
INSERT INTO agi_oereb_annex.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerb_xtnx_v1_0annex_generalinformation',NULL,'T_Type','ch.ehi.ili2db.types','["oerb_xtnx_v1_0annex_generalinformation"]');
INSERT INTO agi_oereb_annex.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('localisation_v1_multilingualmtext',NULL,'T_Type','ch.ehi.ili2db.types','["localisation_v1_multilingualmtext","localisationch_v1_multilingualmtext","oerebkrm_v1_1_artikelinhaltmehrsprachig"]');
INSERT INTO agi_oereb_annex.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oereb_extractannex_v1_0_code_',NULL,'T_Type','ch.ehi.ili2db.types','["oereb_extractannex_v1_0_code_"]');
INSERT INTO agi_oereb_annex.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerb_xtnx_v1_0annex_glossary',NULL,'T_Type','ch.ehi.ili2db.types','["oerb_xtnx_v1_0annex_glossary"]');
INSERT INTO agi_oereb_annex.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerb_xtnx_v1_0annex_office',NULL,'T_Type','ch.ehi.ili2db.types','["oerb_xtnx_v1_0annex_office"]');
INSERT INTO agi_oereb_annex.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerb_xtnx_v1_0annex_maplayering',NULL,'T_Type','ch.ehi.ili2db.types','["oerb_xtnx_v1_0annex_maplayering"]');
INSERT INTO agi_oereb_annex.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerb_xtnx_v1_0annex_logo',NULL,'T_Type','ch.ehi.ili2db.types','["oerb_xtnx_v1_0annex_logo"]');
INSERT INTO agi_oereb_annex.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('localisation_v1_localisedtext',NULL,'loclstn_v1_mltlngltext_localisedtext','ch.ehi.ili2db.foreignKey','localisation_v1_multilingualtext');
INSERT INTO agi_oereb_annex.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('localisation_v1_multilingualtext',NULL,'T_Type','ch.ehi.ili2db.types','["localisation_v1_multilingualtext","localisationch_v1_multilingualtext"]');
INSERT INTO agi_oereb_annex.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerb_xtnx_v1_0annex_thematxt',NULL,'T_Type','ch.ehi.ili2db.types','["oerb_xtnx_v1_0annex_thematxt"]');
INSERT INTO agi_oereb_annex.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerb_xtnx_v1_0annex_municipalitywithplrc',NULL,'T_Type','ch.ehi.ili2db.types','["oerb_xtnx_v1_0annex_municipalitywithplrc"]');
INSERT INTO agi_oereb_annex.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('localisation_v1_localisedtext','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO agi_oereb_annex.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerb_xtnx_v1_0annex_office','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_oereb_annex.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerb_xtnx_v1_0annex_exclusionofliability','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_oereb_annex.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerb_xtnx_v1_0annex_generalinformation','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_oereb_annex.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerb_xtnx_v1_0annex_municipalitywithplrc','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_oereb_annex.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('localisation_v1_localisedmtext','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO agi_oereb_annex.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerb_xtnx_v1_0annex_logo','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_oereb_annex.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerb_xtnx_v1_0annex_maplayering','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_oereb_annex.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerb_xtnx_v1_0annex_thematxt','ch.ehi.ili2db.tableKind','CATALOGUE');
INSERT INTO agi_oereb_annex.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('localisation_v1_multilingualtext','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO agi_oereb_annex.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerb_xtnx_v1_0annex_glossary','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_oereb_annex.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerb_xtnx_v1_0annex_basedata','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_oereb_annex.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('localisation_v1_multilingualmtext','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO agi_oereb_annex.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oereb_extractannex_v1_0_code_','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO agi_oereb_annex.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CHBase_Part3_CATALOGUEOBJECTS_V1.ili','2.3','CatalogueObjects_V1{ INTERLIS} CatalogueObjectTrees_V1{ INTERLIS CatalogueObjects_V1}','/* ########################################################################
   CHBASE - BASE MODULES OF THE SWISS FEDERATION FOR MINIMAL GEODATA MODELS
   ======
   BASISMODULE DES BUNDES           MODULES DE BASE DE LA CONFEDERATION
   FÜR MINIMALE GEODATENMODELLE     POUR LES MODELES DE GEODONNEES MINIMAUX
   
   PROVIDER: GKG/KOGIS - GCS/COSIG             CONTACT: models@geo.admin.ch
   PUBLISHED: 2011-08-30
   ########################################################################
*/

INTERLIS 2.3;

/* ########################################################################
   ########################################################################
   PART III -- CATALOGUE OBJECTS
   - Package CatalogueObjects
   - Package CatalogueObjectTrees
*/

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
MODEL CatalogueObjects_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED INTERLIS;

  TOPIC Catalogues (ABSTRACT) =

    CLASS Item (ABSTRACT) =
    END Item;

    STRUCTURE CatalogueReference (ABSTRACT) =
      Reference: REFERENCE TO (EXTERNAL) Item;
    END CatalogueReference;
 
    STRUCTURE MandatoryCatalogueReference (ABSTRACT) =
      Reference: MANDATORY REFERENCE TO (EXTERNAL) Item;
    END MandatoryCatalogueReference;

  END Catalogues;

END CatalogueObjects_V1.

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
MODEL CatalogueObjectTrees_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED INTERLIS;
  IMPORTS CatalogueObjects_V1;

  TOPIC Catalogues (ABSTRACT) EXTENDS CatalogueObjects_V1.Catalogues =

    CLASS Item (ABSTRACT,EXTENDED) = 
      IsSuperItem: MANDATORY BOOLEAN;
      IsUseable: MANDATORY BOOLEAN;
    MANDATORY CONSTRAINT
      IsSuperItem OR IsUseable;
    END Item;

    ASSOCIATION EntriesTree =
      Parent -<#> Item;
      Child -- Item;
    MANDATORY CONSTRAINT
      Parent->IsSuperItem;
    END EntriesTree;

    STRUCTURE CatalogueReference (ABSTRACT,EXTENDED) =
      Reference(EXTENDED): REFERENCE TO (EXTERNAL) Item;
    MANDATORY CONSTRAINT
      Reference->IsUseable;
    END CatalogueReference;
 
    STRUCTURE MandatoryCatalogueReference (ABSTRACT,EXTENDED) =
      Reference(EXTENDED): MANDATORY REFERENCE TO (EXTERNAL) Item;
    MANDATORY CONSTRAINT
      Reference->IsUseable;
    END MandatoryCatalogueReference;

  END Catalogues;

END CatalogueObjectTrees_V1.

!! ########################################################################
','2021-02-26 17:19:13.073');
INSERT INTO agi_oereb_annex.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('OeREB_ExtractAnnex_V1_0.ili','2.3','OeREB_ExtractAnnex_V1_0{ CHAdminCodes_V1 LocalisationCH_V1 OeREBKRM_V1_1 CatalogueObjects_V1}','INTERLIS 2.3;

/** Zusatzdaten für statischen OEREB-Auszug
 */
MODEL OeREB_ExtractAnnex_V1_0 (de)
AT "mailto:ce@eisenhutinformatik.ch"
VERSION "2019-09-02"  =
  IMPORTS OeREBKRM_V1_1,CHAdminCodes_V1,LocalisationCH_V1,CatalogueObjects_V1;

    DOMAIN
      Code = TEXT*60; 
      STRUCTURE Code_ = value : MANDATORY Code; END Code_;
    TOPIC Annex =
        
        CLASS ThemaTxt
        	EXTENDS CatalogueObjects_V1.Catalogues.Item =
		  Code : MANDATORY OeREBKRM_V1_1.Thema;
		  Titel : MANDATORY LocalisationCH_V1.MultilingualText;
          /** 
           * Kantonales Subthema zu einem Bundesthema:
           *   Code=Nutzungsplanung
           *   otherCode=ch.SO.CantonalBuildingLines
           *   In der Transferstruktur:
           *     Eigentumsbeschraenkung/Thema=Nutzungsplanung
           *     Eigentumsbeschraenkung/SubThema=ch.SO.CantonalBuildingLines
           * Kantonales Thema (kein Subthema zu einem Bundesthema): 
           *   Code=WeiteresThema
           *   otherCode=ch.SO.Einzelschutz
           *   In der Transferstruktur:
           *     Eigentumsbeschraenkung/Thema=WeiteresThema
           *     Eigentumsbeschraenkung/SubThema=ch.SO.Einzelschutz
           */
          otherCode : Code;
          MANDATORY CONSTRAINT Code!=#WeiteresThema OR DEFINED(otherCode);
          UNIQUE otherCode;
        END ThemaTxt;
        
		CLASS Logo =
		  /** ch.plr, ch, ch.so oder ch.bfsnr
		   */
		  code : MANDATORY Code;
		  logo : MANDATORY BLACKBOX BINARY;
		  UNIQUE code;
		END Logo;
		
		CLASS MunicipalityWithPLRC =
		  /** BFS-Nr.
		   */
		  municipality : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
		  /** Thema / SubThema 
		   * Bundesthema:
           *   value=Nutzungsplanung
           * Kantonales Subthema zu einem Bundesthema:
           *   value=ch.SO.CantonalBuildingLines
           * Kantonales Thema (kein Subthema zu einem Bundesthema): 
           *   value=ch.SO.Einzelschutz
		   */
		  themes : BAG OF Code_;
		  /** Stand der Grundlagedaten z.B. der AV
		   */
		  baseDataDate : INTERLIS.XMLDateTime;
		  metadataOfGeographicalBaseData : URI;
		  UNIQUE municipality;
		END MunicipalityWithPLRC;

		CLASS MapLayering =
		  webservice : MANDATORY URI;
          layerIndex : MANDATORY -1000 .. 1000;
          layerOpacity : MANDATORY 0.000 .. 1.000;
		END MapLayering;
		
		CLASS Office =
		  Name : MANDATORY LocalisationCH_V1.MultilingualText;
		  /** OfficeAtWeb wird für die Referenzierung verwendet!
		   *  solange UID nicht generell zugeordnet.
		   */
		  OfficeAtWeb : MANDATORY OeREBKRM_V1_1.WebReferenz;
		  UID : OeREBKRM_V1_1.UID;
		  /** Falls im statischen Auszug mehr Informationen angezeigt 
		   *  werden sollen als im Rahmenmodell möglich ist zu erfassen. 
		   *  Im Rahmenmodell können nur die Attribute Name, AmtImWeb, UID erfasst werden.
		  */
		  Line1 : TEXT*80;
		  Line2 : TEXT*80;
		  Street : TEXT*100;
		  Number : TEXT*7;
		  PostalCode : TEXT*4;
		  City : TEXT*60;
		  UNIQUE UID;
		  UNIQUE OfficeAtWeb;
		END Office;

    CLASS Glossary =
	  /** Abkürzung
	   */
      Title : MANDATORY LocalisationCH_V1.MultilingualText;
	  /** Beschreibung der Abkürzung
	   */	  
      Content : MANDATORY LocalisationCH_V1.MultilingualMText;
    END Glossary;

    CLASS ExclusionOfLiability =
	  /** Haftungsausschuss
	   */
      Title : MANDATORY LocalisationCH_V1.MultilingualText;
	  
      Content : MANDATORY LocalisationCH_V1.MultilingualMText;
    END ExclusionOfLiability;
		
    CLASS  GeneralInformation =
	  /** Allgemeine Informationen
	   */
      Content : MANDATORY LocalisationCH_V1.MultilingualMText;
    END GeneralInformation;

    CLASS  BaseData =
	 /** Grundlagedaten z.B. AV
	  */
      Content : MANDATORY LocalisationCH_V1.MultilingualMText;
	END BaseData;		
		
	END Annex;
    

END OeREB_ExtractAnnex_V1_0.
','2021-02-26 17:19:13.073');
INSERT INTO agi_oereb_annex.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('OeREBKRM_V1_1.ili','2.3','OeREBKRM_V1_1{ InternationalCodes_V1 LocalisationCH_V1 CatalogueObjects_V1}','INTERLIS 2.3;

/** Basisdefinitionen für das OEREB-Katasterrahmenmodell
 */
!!@ furtherInformation=http://www.cadastre.ch/oereb-public
!!@ technicalContact=mailto:infovd@swisstopo.ch
MODEL OeREBKRM_V1_1 (de)
AT "http://models.geo.admin.ch/V_D/OeREB/"
VERSION "2016-08-15"  =
  IMPORTS LocalisationCH_V1,InternationalCodes_V1,CatalogueObjects_V1;

  DOMAIN

    /** Themenspezifische, maschinen-lesbare Art der Eigentumsbeschränkung
     */
    ArtEigentumsbeschraenkung = TEXT*40;

    /** Wertebereich für den Artikeltext einer Rechtsvorschrift oder einer gesetzlichen Grundlage.
     */
    ArtikelInhalt = MTEXT;

    /** Nummer eines Artikels in einer Rechtsvorschrift oder gesetzlichen Grundlage.
     */
    ArtikelNummer = TEXT*20;

    Datum = FORMAT INTERLIS.XMLDate "1848-1-1" .. "2100-12-31";

    /** Wertebereich für Objektidentifikatoren. Der Wert soll mit einem gültigen Internet Domain-Name anfangen, z.B. "ch.admin.sr.720"
     */
    OEREBOID = OID TEXT;

    /** Werteliste zur Unterscheidung ob eine Eigentumsbeschränkung in Kraft ist oder nicht.
     */
    RechtsStatus = (
      /** Die Eigentumsbeschränkung ist in Kraft.
       */
      inKraft,
      /** gem. OeREBKV Art. 12 Abs. 2
       */
      laufendeAenderung
    );

    SubThema = TEXT*60;

    /** Liste der Geobasisdaten die ÖREB-Themen sind (Wird durch den Bundesrat definiert). Die Liste kann durch Kantone erweitert werden.
     */
    Thema = (
      /** GeoIV Datensatz 73
       */
      Nutzungsplanung,
      /** 87
       */
      ProjektierungszonenNationalstrassen,
      /** 88
       */
      BaulinienNationalstrassen,
      /** 96
       */
      ProjektierungszonenEisenbahnanlagen,
      /** 97
       */
      BaulinienEisenbahnanlagen,
      /** 103
       */
      ProjektierungszonenFlughafenanlagen,
      /** 104
       */
      BaulinienFlughafenanlagen,
      /** 108
       */
      SicherheitszonenplanFlughafen,
      /** 116
       */
      BelasteteStandorte,
      /** 117
       */
      BelasteteStandorteMilitaer,
      /** 118
       */
      BelasteteStandorteZivileFlugplaetze,
      /** 119
       */
      BelasteteStandorteOeffentlicherVerkehr,
      /** 131
       */
      Grundwasserschutzzonen,
      /** 132
       */
      Grundwasserschutzareale,
      /** 145
       */
      Laermemfindlichkeitsstufen,
      /** 157
       */
      Waldgrenzen,
      /** 159
       */
      Waldabstandslinien,
      /** Fuer weitere Themen
       */
      WeiteresThema
    );

    /** Unternehmensindentifikation (gemäss. Bundesgesetz über die Unternehmens-Identifikationsnummer SR 431.03) ohne Formatierung z.B. CHE116068369
     */
    UID = TEXT*12;

    /** Verweis auf ein Dokument im Web (z.B. eine HTML Seite oder ein PDF-Dokument)
     */
    WebReferenz = URI;

    /** z.B. kantonale Themen. Der Code wird nach folgendem Muster gebildet: ch.{canton}.{topic}
     * fl.{topic}
     * ch.{bfsnr}.{topic}
     * Wobei {canton} das offizielle zwei-stellige Kürzel des Kantons ist, {to-pic} der Themenname und {bfsnr} die Gemeindenummer gem. BFS.
     */
    WeiteresThema = TEXT*120;
  STRUCTURE ArtikelNummer_ = value : MANDATORY ArtikelNummer; END ArtikelNummer_;
  STRUCTURE Datum_ = value : MANDATORY Datum; END Datum_;
  STRUCTURE Thema_ = value : MANDATORY Thema; END Thema_;
  STRUCTURE WebReferenz_ = value : MANDATORY WebReferenz; END WebReferenz_;

  /** Wertebereich für den Artikeltext einer Rechtsvorschrift oder einer gesetzlichen Grundlage.
   */
  STRUCTURE ArtikelInhaltMehrsprachig
  EXTENDS LocalisationCH_V1.MultilingualMText =
  END ArtikelInhaltMehrsprachig;

  STRUCTURE LocalisedUri =
    Language : InternationalCodes_V1.LanguageCode_ISO639_1;
    Text : MANDATORY URI;
  END LocalisedUri;

  STRUCTURE MultilingualUri =
    LocalisedText : BAG {1..*} OF OeREBKRM_V1_1.LocalisedUri;
    UNIQUE (LOCAL) LocalisedText:Language;
  END MultilingualUri;

  /** Anzeigetexte für Aufzählungen des Rahmenmodells
   */
  TOPIC CodelistenText =

    /** Anzeigetexte für die Aufzählung RechtsStatus
     */
    CLASS RechtsStatusTxt
    EXTENDS CatalogueObjects_V1.Catalogues.Item =
      Code : MANDATORY OeREBKRM_V1_1.RechtsStatus;
      Titel : MANDATORY LocalisationCH_V1.MultilingualText;
      UNIQUE Code;
    END RechtsStatusTxt;

    /** Anzeigetexte für die Aufzählung Thema
     */
    CLASS ThemaTxt
    EXTENDS CatalogueObjects_V1.Catalogues.Item =
      Code : MANDATORY OeREBKRM_V1_1.Thema;
      Titel : MANDATORY LocalisationCH_V1.MultilingualText;
      UNIQUE Code;
    END ThemaTxt;

  END CodelistenText;

END OeREBKRM_V1_1.
','2021-02-26 17:19:13.073');
INSERT INTO agi_oereb_annex.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CHBase_Part2_LOCALISATION_V1.ili','2.3','InternationalCodes_V1 Localisation_V1{ InternationalCodes_V1} LocalisationCH_V1{ InternationalCodes_V1 Localisation_V1} Dictionaries_V1{ InternationalCodes_V1} DictionariesCH_V1{ InternationalCodes_V1 Dictionaries_V1}','/* ########################################################################
   CHBASE - BASE MODULES OF THE SWISS FEDERATION FOR MINIMAL GEODATA MODELS
   ======
   BASISMODULE DES BUNDES           MODULES DE BASE DE LA CONFEDERATION
   FÜR MINIMALE GEODATENMODELLE     POUR LES MODELES DE GEODONNEES MINIMAUX
   
   PROVIDER: GKG/KOGIS - GCS/COSIG             CONTACT: models@geo.admin.ch
   PUBLISHED: 2011-08-30
   ########################################################################
*/

INTERLIS 2.3;

/* ########################################################################
   ########################################################################
   PART II -- LOCALISATION
   - Package InternationalCodes
   - Packages Localisation, LocalisationCH
   - Packages Dictionaries, DictionariesCH
*/

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
TYPE MODEL InternationalCodes_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  DOMAIN
    LanguageCode_ISO639_1 = (de,fr,it,rm,en,
      aa,ab,af,am,ar,as,ay,az,ba,be,bg,bh,bi,bn,bo,br,ca,co,cs,cy,da,dz,el,
      eo,es,et,eu,fa,fi,fj,fo,fy,ga,gd,gl,gn,gu,ha,he,hi,hr,hu,hy,ia,id,ie,
      ik,is,iu,ja,jw,ka,kk,kl,km,kn,ko,ks,ku,ky,la,ln,lo,lt,lv,mg,mi,mk,ml,
      mn,mo,mr,ms,mt,my,na,ne,nl,no,oc,om,or,pa,pl,ps,pt,qu,rn,ro,ru,rw,sa,
      sd,sg,sh,si,sk,sl,sm,sn,so,sq,sr,ss,st,su,sv,sw,ta,te,tg,th,ti,tk,tl,
      tn,to,tr,ts,tt,tw,ug,uk,ur,uz,vi,vo,wo,xh,yi,yo,za,zh,zu);

    CountryCode_ISO3166_1 = (CHE,
      ABW,AFG,AGO,AIA,ALA,ALB,AND_,ANT,ARE,ARG,ARM,ASM,ATA,ATF,ATG,AUS,
      AUT,AZE,BDI,BEL,BEN,BFA,BGD,BGR,BHR,BHS,BIH,BLR,BLZ,BMU,BOL,BRA,
      BRB,BRN,BTN,BVT,BWA,CAF,CAN,CCK,CHL,CHN,CIV,CMR,COD,COG,COK,COL,
      COM,CPV,CRI,CUB,CXR,CYM,CYP,CZE,DEU,DJI,DMA,DNK,DOM,DZA,ECU,EGY,
      ERI,ESH,ESP,EST,ETH,FIN,FJI,FLK,FRA,FRO,FSM,GAB,GBR,GEO,GGY,GHA,
      GIB,GIN,GLP,GMB,GNB,GNQ,GRC,GRD,GRL,GTM,GUF,GUM,GUY,HKG,HMD,HND,
      HRV,HTI,HUN,IDN,IMN,IND,IOT,IRL,IRN,IRQ,ISL,ISR,ITA,JAM,JEY,JOR,
      JPN,KAZ,KEN,KGZ,KHM,KIR,KNA,KOR,KWT,LAO,LBN,LBR,LBY,LCA,LIE,LKA,
      LSO,LTU,LUX,LVA,MAC,MAR,MCO,MDA,MDG,MDV,MEX,MHL,MKD,MLI,MLT,MMR,
      MNE,MNG,MNP,MOZ,MRT,MSR,MTQ,MUS,MWI,MYS,MYT,NAM,NCL,NER,NFK,NGA,
      NIC,NIU,NLD,NOR,NPL,NRU,NZL,OMN,PAK,PAN,PCN,PER,PHL,PLW,PNG,POL,
      PRI,PRK,PRT,PRY,PSE,PYF,QAT,REU,ROU,RUS,RWA,SAU,SDN,SEN,SGP,SGS,
      SHN,SJM,SLB,SLE,SLV,SMR,SOM,SPM,SRB,STP,SUR,SVK,SVN,SWE,SWZ,SYC,
      SYR,TCA,TCD,TGO,THA,TJK,TKL,TKM,TLS,TON,TTO,TUN,TUR,TUV,TWN,TZA,
      UGA,UKR,UMI,URY,USA,UZB,VAT,VCT,VEN,VGB,VIR,VNM,VUT,WLF,WSM,YEM,
      ZAF,ZMB,ZWE);

END InternationalCodes_V1.

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
TYPE MODEL Localisation_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED InternationalCodes_V1;

  STRUCTURE LocalisedText =
    Language: LanguageCode_ISO639_1;
    Text: MANDATORY TEXT;
  END LocalisedText;
  
  STRUCTURE LocalisedMText =
    Language: LanguageCode_ISO639_1;
    Text: MANDATORY MTEXT;
  END LocalisedMText;

  STRUCTURE MultilingualText =
    LocalisedText : BAG {1..*} OF LocalisedText;
    UNIQUE (LOCAL) LocalisedText:Language;
  END MultilingualText;  
  
  STRUCTURE MultilingualMText =
    LocalisedText : BAG {1..*} OF LocalisedMText;
    UNIQUE (LOCAL) LocalisedText:Language;
  END MultilingualMText;

END Localisation_V1.

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
TYPE MODEL LocalisationCH_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED InternationalCodes_V1;
  IMPORTS Localisation_V1;

  STRUCTURE LocalisedText EXTENDS Localisation_V1.LocalisedText =
  MANDATORY CONSTRAINT
    Language == #de OR
    Language == #fr OR
    Language == #it OR
    Language == #rm OR
    Language == #en;
  END LocalisedText;
  
  STRUCTURE LocalisedMText EXTENDS Localisation_V1.LocalisedMText =
  MANDATORY CONSTRAINT
    Language == #de OR
    Language == #fr OR
    Language == #it OR
    Language == #rm OR
    Language == #en;
  END LocalisedMText;

  STRUCTURE MultilingualText EXTENDS Localisation_V1.MultilingualText =
    LocalisedText(EXTENDED) : BAG {1..*} OF LocalisedText;
  END MultilingualText;  
  
  STRUCTURE MultilingualMText EXTENDS Localisation_V1.MultilingualMText =
    LocalisedText(EXTENDED) : BAG {1..*} OF LocalisedMText;
  END MultilingualMText;

END LocalisationCH_V1.

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
MODEL Dictionaries_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED InternationalCodes_V1;

  TOPIC Dictionaries (ABSTRACT) =

    STRUCTURE Entry (ABSTRACT) =
      Text: MANDATORY TEXT;
    END Entry;
      
    CLASS Dictionary =
      Language: MANDATORY LanguageCode_ISO639_1;
      Entries: LIST OF Entry;
    END Dictionary;

  END Dictionaries;

END Dictionaries_V1.

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
MODEL DictionariesCH_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED InternationalCodes_V1;
  IMPORTS Dictionaries_V1;

  TOPIC Dictionaries (ABSTRACT) EXTENDS Dictionaries_V1.Dictionaries =

    CLASS Dictionary (EXTENDED) =
    MANDATORY CONSTRAINT
      Language == #de OR
      Language == #fr OR
      Language == #it OR
      Language == #rm OR
      Language == #en;
    END Dictionary;

  END Dictionaries;

END DictionariesCH_V1.

!! ########################################################################
','2021-02-26 17:19:13.073');
INSERT INTO agi_oereb_annex.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CHBase_Part4_ADMINISTRATIVEUNITS_V1.ili','2.3','CHAdminCodes_V1 AdministrativeUnits_V1{ CHAdminCodes_V1 InternationalCodes_V1 Dictionaries_V1 Localisation_V1 INTERLIS} AdministrativeUnitsCH_V1{ CHAdminCodes_V1 InternationalCodes_V1 LocalisationCH_V1 AdministrativeUnits_V1 INTERLIS}','/* ########################################################################
   CHBASE - BASE MODULES OF THE SWISS FEDERATION FOR MINIMAL GEODATA MODELS
   ======
   BASISMODULE DES BUNDES           MODULES DE BASE DE LA CONFEDERATION
   FÜR MINIMALE GEODATENMODELLE     POUR LES MODELES DE GEODONNEES MINIMAUX
   
   PROVIDER: GKG/KOGIS - GCS/COSIG             CONTACT: models@geo.admin.ch
   PUBLISHED: 2011-08-30
   ########################################################################
*/

INTERLIS 2.3;

/* ########################################################################
   ########################################################################
   PART IV -- ADMINISTRATIVE UNITS
   - Package CHAdminCodes
   - Package AdministrativeUnits
   - Package AdministrativeUnitsCH
*/

!! Version    | Who   | Modification
!!------------------------------------------------------------------------------
!! 2018-02-19 | KOGIS | Enumeration CHCantonCode adapted (FL and CH added)
!! 2020-04-24 | KOGIS | Constraint in Association Hierarchy in Model AdministrativeUnitsCH_V1 corrected (#CHE)
!! 2020-08-25 | KOGIS | Classes AdministrativeUnit and AdministrativeUnion declared as not abstract.

!! ########################################################################
!!@technicalContact=mailto:models@geo.admin.ch
!!@furtherInformation=https://www.geo.admin.ch/de/geoinformation-schweiz/geobasisdaten/geodata-models.html
TYPE MODEL CHAdminCodes_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2018-02-19" =

  DOMAIN
    CHCantonCode = (ZH,BE,LU,UR,SZ,OW,NW,GL,ZG,FR,SO,BS,BL,SH,AR,AI,SG,
                    GR,AG,TG,TI,VD,VS,NE,GE,JU,FL,CH);

    CHMunicipalityCode = 1..9999;  !! BFS-Nr

END CHAdminCodes_V1.

!! ########################################################################
!!@technicalContact=mailto:models@geo.admin.ch
!!@furtherInformation=https://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
MODEL AdministrativeUnits_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2020-08-25" =

  IMPORTS UNQUALIFIED INTERLIS;
  IMPORTS UNQUALIFIED CHAdminCodes_V1;
  IMPORTS UNQUALIFIED InternationalCodes_V1;
  IMPORTS Localisation_V1;
  IMPORTS Dictionaries_V1;

  TOPIC AdministrativeUnits (ABSTRACT) =

    CLASS AdministrativeElement (ABSTRACT) =
    END AdministrativeElement;

    CLASS AdministrativeUnit EXTENDS AdministrativeElement =
    END AdministrativeUnit;

    ASSOCIATION Hierarchy =
      UpperLevelUnit (EXTERNAL) -<> {0..1} AdministrativeUnit;
      LowerLevelUnit -- AdministrativeUnit;
    END Hierarchy;

    CLASS AdministrativeUnion EXTENDS AdministrativeElement =
    END AdministrativeUnion;

    ASSOCIATION UnionMembers =
      Union -<> AdministrativeUnion;
      Member -- AdministrativeElement; 
    END UnionMembers;

  END AdministrativeUnits;

  TOPIC Countries EXTENDS AdministrativeUnits =

    CLASS Country EXTENDS AdministrativeUnit =
      Code: MANDATORY CountryCode_ISO3166_1;
    UNIQUE Code;
    END Country;

  END Countries;

  TOPIC CountryNames EXTENDS Dictionaries_V1.Dictionaries =
    DEPENDS ON AdministrativeUnits_V1.Countries;

    STRUCTURE CountryName EXTENDS Entry =
      Code: MANDATORY CountryCode_ISO3166_1;
    END CountryName;
      
    CLASS CountryNamesTranslation EXTENDS Dictionary  =
      Entries(EXTENDED): LIST OF CountryName;
    UNIQUE Entries->Code;
    EXISTENCE CONSTRAINT
      Entries->Code REQUIRED IN AdministrativeUnits_V1.Countries.Country: Code;
    END CountryNamesTranslation;

  END CountryNames;

  TOPIC Agencies (ABSTRACT) =
    DEPENDS ON AdministrativeUnits_V1.AdministrativeUnits;

    CLASS Agency (ABSTRACT) =
    END Agency;

    ASSOCIATION Authority =
      Supervisor (EXTERNAL) -<> {1..1} Agency OR AdministrativeUnits_V1.AdministrativeUnits.AdministrativeElement;
      Agency -- Agency;
    END Authority;

    ASSOCIATION Organisation =
      Orderer (EXTERNAL) -- Agency OR AdministrativeUnits_V1.AdministrativeUnits.AdministrativeElement;
      Executor -- Agency;
    END Organisation;

  END Agencies;

END AdministrativeUnits_V1.

!! ########################################################################
!!@technicalContact=mailto:models@geo.admin.ch
!!@furtherInformation=https://www.geo.admin.ch/de/geoinformation-schweiz/geobasisdaten/geodata-models.html
MODEL AdministrativeUnitsCH_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2020-04-24" =

  IMPORTS UNQUALIFIED INTERLIS;
  IMPORTS UNQUALIFIED CHAdminCodes_V1;
  IMPORTS UNQUALIFIED InternationalCodes_V1;
  IMPORTS LocalisationCH_V1;
  IMPORTS AdministrativeUnits_V1;

  TOPIC CHCantons EXTENDS AdministrativeUnits_V1.AdministrativeUnits =
    DEPENDS ON AdministrativeUnits_V1.Countries;

    CLASS CHCanton EXTENDS AdministrativeUnit =
      Code: MANDATORY CHCantonCode;
      Name: LocalisationCH_V1.MultilingualText;
      Web: URI;
    UNIQUE Code;
    END CHCanton;

    ASSOCIATION Hierarchy (EXTENDED) =
      UpperLevelUnit (EXTENDED, EXTERNAL) -<> {1..1} AdministrativeUnits_V1.Countries.Country;
      LowerLevelUnit (EXTENDED) -- CHCanton;
    MANDATORY CONSTRAINT
      UpperLevelUnit->Code == #CHE;
    END Hierarchy;

  END CHCantons;

  TOPIC CHDistricts EXTENDS AdministrativeUnits_V1.AdministrativeUnits =
    DEPENDS ON AdministrativeUnitsCH_V1.CHCantons;

    CLASS CHDistrict EXTENDS AdministrativeUnit =
      ShortName: MANDATORY TEXT*20;
      Name: LocalisationCH_V1.MultilingualText;
      Web: MANDATORY URI;
    END CHDistrict;

    ASSOCIATION Hierarchy (EXTENDED) =
      UpperLevelUnit (EXTENDED, EXTERNAL) -<> {1..1} AdministrativeUnitsCH_V1.CHCantons.CHCanton;
      LowerLevelUnit (EXTENDED) -- CHDistrict;
    UNIQUE UpperLevelUnit->Code, LowerLevelUnit->ShortName;
    END Hierarchy;

  END CHDistricts;

  TOPIC CHMunicipalities EXTENDS AdministrativeUnits_V1.AdministrativeUnits =
    DEPENDS ON AdministrativeUnitsCH_V1.CHCantons;
    DEPENDS ON AdministrativeUnitsCH_V1.CHDistricts;

    CLASS CHMunicipality EXTENDS AdministrativeUnit =
      Code: MANDATORY CHMunicipalityCode;
      Name: LocalisationCH_V1.MultilingualText;
      Web: URI;
    UNIQUE Code;
    END CHMunicipality;

    ASSOCIATION Hierarchy (EXTENDED) =
      UpperLevelUnit (EXTENDED, EXTERNAL) -<> {1..1} AdministrativeUnitsCH_V1.CHCantons.CHCanton
      OR AdministrativeUnitsCH_V1.CHDistricts.CHDistrict;
      LowerLevelUnit (EXTENDED) -- CHMunicipality;
    END Hierarchy;

  END CHMunicipalities;

  TOPIC CHAdministrativeUnions EXTENDS AdministrativeUnits_V1.AdministrativeUnits =
    DEPENDS ON AdministrativeUnits_V1.Countries;
    DEPENDS ON AdministrativeUnitsCH_V1.CHCantons;
    DEPENDS ON AdministrativeUnitsCH_V1.CHDistricts;
    DEPENDS ON AdministrativeUnitsCH_V1.CHMunicipalities;

    CLASS AdministrativeUnion (EXTENDED) =
    OID AS UUIDOID;
      Name: LocalisationCH_V1.MultilingualText;
      Web: URI;
      Description: LocalisationCH_V1.MultilingualMText;
    END AdministrativeUnion;

  END CHAdministrativeUnions;

  TOPIC CHAgencies EXTENDS AdministrativeUnits_V1.Agencies =
    DEPENDS ON AdministrativeUnits_V1.Countries;
    DEPENDS ON AdministrativeUnitsCH_V1.CHCantons;
    DEPENDS ON AdministrativeUnitsCH_V1.CHDistricts;
    DEPENDS ON AdministrativeUnitsCH_V1.CHMunicipalities;

    CLASS Agency (EXTENDED) =
    OID AS UUIDOID;
      Name: LocalisationCH_V1.MultilingualText;
      Web: URI;
      Description: LocalisationCH_V1.MultilingualMText;
    END Agency;

  END CHAgencies;

END AdministrativeUnitsCH_V1.

!! ########################################################################
','2021-02-26 17:19:13.073');
INSERT INTO agi_oereb_annex.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createMetaInfo','True');
INSERT INTO agi_oereb_annex.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.arrayTrafo','coalesce');
INSERT INTO agi_oereb_annex.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.nameOptimization','disable');
INSERT INTO agi_oereb_annex.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.localisedTrafo','expand');
INSERT INTO agi_oereb_annex.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.numericCheckConstraints','create');
INSERT INTO agi_oereb_annex.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.sender','ili2pg-4.3.1-23b1f79e8ad644414773bb9bd1a97c8c265c5082');
INSERT INTO agi_oereb_annex.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createForeignKey','yes');
INSERT INTO agi_oereb_annex.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.sqlgen.createGeomIndex','True');
INSERT INTO agi_oereb_annex.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.defaultSrsAuthority','EPSG');
INSERT INTO agi_oereb_annex.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.defaultSrsCode','2056');
INSERT INTO agi_oereb_annex.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.uuidDefaultValue','uuid_generate_v4()');
INSERT INTO agi_oereb_annex.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.StrokeArcs','enable');
INSERT INTO agi_oereb_annex.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiLineTrafo','coalesce');
INSERT INTO agi_oereb_annex.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.interlis.ili2c.ilidirs','%ILI_FROM_DB;%XTF_DIR;http://models.interlis.ch/;%JAR_DIR');
INSERT INTO agi_oereb_annex.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.TidHandling','property');
INSERT INTO agi_oereb_annex.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.typeDiscriminator','always');
INSERT INTO agi_oereb_annex.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createForeignKeyIndex','yes');
INSERT INTO agi_oereb_annex.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.importTabs','simple');
INSERT INTO agi_oereb_annex.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.jsonTrafo','coalesce');
INSERT INTO agi_oereb_annex.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.BasketHandling','readWrite');
INSERT INTO agi_oereb_annex.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.uniqueConstraints','create');
INSERT INTO agi_oereb_annex.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.maxSqlNameLength','60');
INSERT INTO agi_oereb_annex.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.inheritanceTrafo','smart1');
INSERT INTO agi_oereb_annex.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.catalogueRefTrafo','coalesce');
INSERT INTO agi_oereb_annex.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiPointTrafo','coalesce');
INSERT INTO agi_oereb_annex.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiSurfaceTrafo','coalesce');
INSERT INTO agi_oereb_annex.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO agi_oereb_annex.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('DictionariesCH_V1','furtherInformation','http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO agi_oereb_annex.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('DictionariesCH_V1','technicalContact','models@geo.admin.ch');
INSERT INTO agi_oereb_annex.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('Dictionaries_V1','furtherInformation','http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO agi_oereb_annex.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('Dictionaries_V1','technicalContact','models@geo.admin.ch');
INSERT INTO agi_oereb_annex.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('OeREBKRM_V1_1','furtherInformation','http://www.cadastre.ch/oereb-public');
INSERT INTO agi_oereb_annex.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('OeREBKRM_V1_1','technicalContact','mailto:infovd@swisstopo.ch');
INSERT INTO agi_oereb_annex.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('AdministrativeUnits_V1','furtherInformation','https://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO agi_oereb_annex.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('AdministrativeUnits_V1','technicalContact','mailto:models@geo.admin.ch');
INSERT INTO agi_oereb_annex.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('CatalogueObjectTrees_V1','furtherInformation','http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO agi_oereb_annex.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('CatalogueObjectTrees_V1','technicalContact','models@geo.admin.ch');
INSERT INTO agi_oereb_annex.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('AdministrativeUnitsCH_V1','furtherInformation','https://www.geo.admin.ch/de/geoinformation-schweiz/geobasisdaten/geodata-models.html');
INSERT INTO agi_oereb_annex.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('AdministrativeUnitsCH_V1','technicalContact','mailto:models@geo.admin.ch');
INSERT INTO agi_oereb_annex.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('CatalogueObjects_V1','furtherInformation','http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO agi_oereb_annex.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('CatalogueObjects_V1','technicalContact','models@geo.admin.ch');
