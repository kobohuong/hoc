@cds.persistence.exists 
Entity ![ZTVAP_ERG] {
 key    ![MANDT]: String(3)  @title: 'MANDT' ; 
key     ![OBJECT]: String(10)  @title: 'OBJECT' ; 
key     ![COUNTER]: Integer  @title: 'COUNTER' ; 
        ![PARTNER]: String(10)  @title: 'PARTNER' ; 
        ![CLAIM]: String(4)  @title: 'CLAIM' ; 
        ![IDTYPE]: String(6)  @title: 'IDTYPE' ; 
        ![IDNUMBER]: String(20)  @title: 'IDNUMBER' ; 
        ![DATEFROM]: String(8)  @title: 'DATEFROM' ; 
        ![DATETO]: String(8)  @title: 'DATETO' ; 
        ![COVERAGETYPE]: String(4)  @title: 'COVERAGETYPE' ; 
        ![COVERAGEHINT]: String(4)  @title: 'COVERAGEHINT' ; 
        ![STATUS_SL]: String(2)  @title: 'STATUS_SL' ; 
        ![STATUS_EL]: String(2)  @title: 'STATUS_EL' ; 
        ![VART]: String(4)  @title: 'VART' ; 
        ![BNR]: String(8)  @title: 'BNR' ; 
        ![STEMIDTYPE]: String(6)  @title: 'STEMIDTYPE' ; 
        ![STEMIDNUMBER]: String(20)  @title: 'STEMIDNUMBER' ; 
        ![STEMPARTNER]: String(10)  @title: 'STEMPARTNER' ; 
        ![FAMIDATE]: String(8)  @title: 'FAMIDATE' ; 
        ![BGR]: String(4)  @title: 'BGR' ; 
        ![PGR]: String(3)  @title: 'PGR' ; 
        ![TTS]: String(9)  @title: 'TTS' ; 
        ![MELDBESO]: String(5)  @title: 'MELDBESO' ; 
        ![PKREIS]: Integer  @title: 'PKREIS' ; 
        ![KV_LEIST_ANSP]: String(1)  @title: 'KV_LEIST_ANSP' ; 
        ![KV_VERS]: String(4)  @title: 'KV_VERS' ; 
        ![NACHG_LA]: String(4)  @title: 'NACHG_LA' ; 
        ![MFR_STAT]: String(1)  @title: 'MFR_STAT' ; 
        ![KV_VVZ_ANRECH]: String(4)  @title: 'KV_VVZ_ANRECH' ; 
        ![KG_ANSP]: String(1)  @title: 'KG_ANSP' ; 
        ![MUG_ANSP]: String(4)  @title: 'MUG_ANSP' ; 
        ![PVVERS]: String(4)  @title: 'PVVERS' ; 
        ![PV_LEIST_ANSP]: String(1)  @title: 'PV_LEIST_ANSP' ; 
        ![PV_BEITRAGSART]: String(1)  @title: 'PV_BEITRAGSART' ; 
        ![PV_BBEF]: String(1)  @title: 'PV_BBEF' ; 
        ![ALV]: String(4)  @title: 'ALV' ; 
        ![VVART]: String(1)  @title: 'VVART' ; 
        ![SGBII_ANSP]: String(4)  @title: 'SGBII_ANSP' ; 
        ![GRENZGAENGER]: String(4)  @title: 'GRENZGAENGER' ; 
        ![RENTENBEZUG]: String(1)  @title: 'RENTENBEZUG' ; 
        ![KV_BEF]: String(4)  @title: 'KV_BEF' ; 
        ![PV_BEF]: String(4)  @title: 'PV_BEF' ; 
        ![CRDAT]: String(8)  @title: 'CRDAT' ; 
        ![CRTIM]: String(6)  @title: 'CRTIM' ; 
        ![CRTIMESTAMP]: Decimal(21, 7)  @title: 'CRTIMESTAMP' ; 
};

using ZTVAP_ERG as ZTVAP;

define view VAPView as
    select from ZTVAP
    ;
    