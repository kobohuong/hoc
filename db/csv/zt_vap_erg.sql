set schema BARMER;
drop table "BARMER"."ZTVAP_ERG";
CREATE COLUMN TABLE "ZTVAP_ERG"(
	"MANDT" NVARCHAR(3) DEFAULT '000' NOT NULL,
	"OBJECT" NVARCHAR(10) DEFAULT '' NOT NULL,
	"COUNTER" SMALLINT CS_INT DEFAULT 0 NOT NULL,
	"PARTNER" NVARCHAR(10) DEFAULT '',
	"CLAIM" NVARCHAR(4) DEFAULT '',
	"IDTYPE" NVARCHAR(6) DEFAULT '',
	"IDNUMBER" NVARCHAR(20) DEFAULT '',
	"DATEFROM" NVARCHAR(8) DEFAULT '00000000',
	"DATETO" NVARCHAR(8) DEFAULT '00000000',
	"COVERAGETYPE" NVARCHAR(4) DEFAULT '',
	"COVERAGEHINT" NVARCHAR(4) DEFAULT '',
	"STATUS_SL" NVARCHAR(2) DEFAULT '',
	"STATUS_EL" NVARCHAR(2) DEFAULT '',
	"VART" NVARCHAR(4) DEFAULT '',
	"BNR" NVARCHAR(8) DEFAULT '',
	"STEMIDTYPE" NVARCHAR(6) DEFAULT '',
	"STEMIDNUMBER" NVARCHAR(20) DEFAULT '',
	"STEMPARTNER" NVARCHAR(10) DEFAULT '',
	"FAMIDATE" NVARCHAR(8) DEFAULT '00000000',
	"BGR" NVARCHAR(4) DEFAULT '',
	"PGR" NVARCHAR(3) DEFAULT '',
	"TTS" NVARCHAR(9) DEFAULT '',
	"MELDBESO" NVARCHAR(5) DEFAULT '',
	"PKREIS" SMALLINT CS_INT DEFAULT 0,
	"KV_LEIST_ANSP" NVARCHAR(1) DEFAULT '',
	"KV_VERS" NVARCHAR(4) DEFAULT '',
	"NACHG_LA" NVARCHAR(4) DEFAULT '',
	"MFR_STAT" NVARCHAR(1) DEFAULT '',
	"KV_VVZ_ANRECH" NVARCHAR(4) DEFAULT '',
	"KG_ANSP" NVARCHAR(1) DEFAULT '',
	"MUG_ANSP" NVARCHAR(4) DEFAULT '',
	"PVVERS" NVARCHAR(4) DEFAULT '',
	"PV_LEIST_ANSP" NVARCHAR(1) DEFAULT '',
	"PV_BEITRAGSART" NVARCHAR(1) DEFAULT '',
	"PV_BBEF" NVARCHAR(1) DEFAULT '',
	"ALV" NVARCHAR(4) DEFAULT '',
	"VVART" NVARCHAR(1) DEFAULT '',
	"SGBII_ANSP" NVARCHAR(4) DEFAULT '',
	"GRENZGAENGER" NVARCHAR(4) DEFAULT '',
	"RENTENBEZUG" NVARCHAR(1) DEFAULT '',
	"KV_BEF" NVARCHAR(4) DEFAULT '',
	"PV_BEF" NVARCHAR(4) DEFAULT '',
	"CRDAT" NVARCHAR(8) DEFAULT '00000000',
	"CRTIM" NVARCHAR(6) DEFAULT '000000',
	"CRTIMESTAMP" DECIMAL(21, 7) CS_FIXED DEFAULT 0,
	CONSTRAINT "ZTVAP_ERG~0" PRIMARY KEY (
		"MANDT",
		"OBJECT",
		"COUNTER"
	)
)
UNLOAD PRIORITY 5 AUTO MERGE;
CREATE INDEX "ZTVAP_ERG~2" ON "ZTVAP_ERG" ( "CRTIMESTAMP" ASC );
