using {
    sap,
    Currency,
    temporal,
    managed
} from '@sap/cds/common';

extend sap.common.Currencies with {
    numcode  : Integer;
    exponent : Integer;
    minor    : String;
}

annotate temporal with {
    validFrom @(title : '{i18n>validFrom}');
    validTo   @(title : '{i18n>validTo}');
};

extend sap.common.Countries with {
    code1       : Integer;
    alpha3      : String(3);
    iso         : String(16);
    region      : String(20);
    sub_region  : String(40);
    region_code : String(3);
    sub_region_code : String(3);
    regions     : Composition of many sap.common_countries.Regions
                      on regions.country = $self.code;
};


annotate sap.common.Countries with {
  code1           @(
    title        : '{i18n>code1}',
    Common.Label : '{i18n>code1}'
  );
  alpha3          @(
    title        : '{i18n>alpha3}',
    Common.Label : '{i18n>alpha3}'
  );
  iso             @(
    title        : '{i18n>iso}',
    Common.Label : '{i18n>iso}'
  );
  region          @(
    title        : '{i18n>region}',
    Common.Label : '{i18n>region}'
  );
  sub_region      @(
    title        : '{i18n>sub_region}',
    Common.Label : '{i18n>sub_region}'
  );
  region_code     @(
    title        : '{i18n>region_code}',
    Common.Label : '{i18n>region_code}'
  );
  sub_region_code @(
    title        : '{i18n>sub_region_code}',
    Common.Label : '{i18n>sub_region_code}'
  );
};

context sap.common_countries {

    entity Regions {
        key country     : String(3);
        key sub_code    : String(5);
            toCountries : Association to one sap.common.Countries
                              on toCountries.code = $self.country;
            name        : String(80);
            type        : String(80);
    }

    annotate Regions with {
        country  @(
            title        : '{i18n>country}',
            Common.Label : '{i18n>Country}'
        );
        sub_code @(
            title        : '{i18n>sub_code}',
            Common.Label : '{i18n>sub_code}'
        );

        name     @(
            title               : '{i18n>name}',
            Common.FieldControl : #Mandatory,
            Search.defaultSearchElement,
            Common.Label        : '{i18n>name}'
        );

        type     @(
            title        : '{i18n>type}',
            Common.Label : '{i18n>type}'
        );

    };
}

context opensap.common {
    abstract entity Ammount {
        currency : Currency;

    }
}