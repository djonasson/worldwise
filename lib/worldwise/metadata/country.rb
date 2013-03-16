# encoding: UTF-8

module Worldwise
  module Metadata
    module Country

      def metadata
        {
          iso_3166_alpha2:       %Q{ISO 3166-1 alpha-2 country code},
          iso_3166_alpha3:       %Q{ISO 3166-1 alpha-3 country code},
          iso_3166_numeric3:     %Q{ISO 3166-1 numeric country code},
          iso_3166_en_name:      %Q{The ISO 3166-1 official English short name of the country (Gazetteer order).\n\nCountry names are spelled in English only character set (UTF-7 w/o diacritics), spelled according to Gazetteer order.\nEx. Bolivia, Plurinational State of},
          iso_3166_en_proper:    %Q{The ISO 3166-1 official English short name of the country (proper reading order).\n\nCountry names are spelled in English only character set (UTF-7 w/o diacritics), spelled according to the proper reading order.\nEx. Plurinational State of Bolivia},
          iso_3166_en_ro_name:   %Q{The ISO 3166-1 official English romanized short name of the country (Gazetteer order).\n\nCountry names are spelled in romanized format (UTF-8 w/diacritics), spelled according to Gazetteer order.\nEx. Åland Islands},
          iso_3166_en_ro_proper: %Q{The ISO 3166-1 official English romanized short name of the country (proper reading order).\n\nCountry names are spelled in romanized format (UTF-8 w/diacritics), spelled according to the proper reading order.\nEx. Åland Islands},
          iso_3166_fr_name:      %Q{The ISO 3166-1 official French short name of the country (Gazetteer order).\n\nCountry names are spelled in French only character set (UTF-8) and grammatical form, spelled according to Gazetteer order. By French grammatical convention, adjectives are lowercased.\nEx. Syrienne, République arabe},
          iso_3166_fr_proper:    %Q{The ISO 3166-1 official French short name of the country (proper reading order).\n\nCountry names are spelled in French only character set (UTF-8) and grammatical form, spelled according to the proper reading order. By French grammatical convention, adjectives are lowercased.\nEx. République arabe syrienne,},
          iso_3166_es_name:      %Q{The ISO 3166-1 official Spanish short name of the country (Gazetteer order).\n\nCountry names are spelled in Spanish only character set (UTF-8 w/diacritics) and grammatical form, spelled according to gazetteer order.\nEx. República Checa},
          iso_3166_region:       %Q{ISO 3166-1 region (continental) code.},
          iso_3166_subregion:    %Q{ISO 3166-1 subregion (sub-continental) code.},
          fips_104:              %Q{FIPS 10-4 country code.},
          #ungegn_en_name:        %Q{United Nations Group of Experts on Geographic Names (UNGEGN) English short name of the country (Gazetteer order).\n\nCountry names are spelled in English only character set (UTF-7 w/o diacritics) and grammatical form, spelled according to the gazetteer order.\nEx. Czech Republic (the)},
          #ungegn_en_longname:    %Q{United Nations Group of Experts on Geographic Names (UNGEGN) English formal (long) name of the country (proper reading order).\n\nCountry names are spelled in English only character set (UTF-7 w/o diacritics) and grammatical form, spelled according to the proper reading order.\nEx. the Czech Republic},
          #ungegn_fr_name:        %Q{United Nations Group of Experts on Geographic Names (UNGEGN) French short name of the country (Gazetteer order).\n\nCountry names are spelled in French only character set (UTF-8 w/diacritics) and grammatical form, spelled according to the gazetteer order. By French grammatical convention, adjectives are lowercased.\nEx. République tchéque (la)},
          #ungegn_fr_longname:    %Q{United Nations Group of Experts on Geographic Names (UNGEGN) French formal (long) name of the country (proper reading order).\n\nCountry names are spelled in French only character set (UTF-8 w/diacritics) and grammatical form, spelled according to the proper reading order. By French grammatical convention, adjectives are lowercased.\nEx. la République tchéque},
          #ungegn_es_name:        %Q{United Nations Group of Experts on Geographic Names (UNGEGN) Spanish short name of the country (Gazetteer order).\n\nCountry names are spelled in Spanish only character set (UTF-8 w/diacritics) and grammatical form, spelled according to the gazetteer order.\nEx. República Checa},
          #ungegn_es_longname:    %Q{United Nations Group of Experts on Geographic Names (UNGEGN) Spanish formal (long) name of the country (proper reading order).\n\nCountry names are spelled in Spanish only character set (UTF-8 w/diacritics) and grammatical form, spelled according to the proper reading order.\nEx. la República Checa (la)},
          #ungegn_ru_name:        %Q{United Nations Group of Experts on Geographic Names (UNGEGN) Russian cyrillic short name of the country (proper reading order).\n\nCountry names are spelled in Russian only character set (UTF-8 cyrillic) and grammatical form, spelled according to the gazetteer order.\nEx. Австрия},
          #ungegn_ru_longname:    %Q{United Nations Group of Experts on Geographic Names (UNGEGN) Russian cyrillic formal (long) name of the country (proper reading order).\n\nCountry names are spelled in Russian only character set (UTF-8 cyrillic) and grammatical form, spelled according to the proper reading order.\nEx. Австрийская Республика},
          #ungegn_lc_ro_name:     %Q{United Nations Group of Experts on Geographic Names (UNGEGN) local romanized short name of the country (proper reading order).\n\nCountry names are spelled are spelled in romanized character set (UTF-8 w/diacritics) of the local language, spelled according to the proper reading order. By French grammatical convention, adjectives are lowercased.\nEx. Österreich},
          #ungegn_lc_ro_longname: %Q{United Nations Group of Experts on Geographic Names (UNGEGN) local romanized formal (long) name of the country (proper reading order).\n\nCountry names are spelled are spelled in romanized character set (UTF-8 w/diacritics) of the local language, spelled according to the proper reading order. By French grammatical convention, adjectives are lowercased.\nEx. la République centrafricaine(fr)
          #},
          #bgn_name:              %Q{US Board on Geographic Names (BGN) English short name of the country (Gazetteer order).\n\nCountry names are spelled in English only character set (UTF-7 w/o diacritics), spelled according to Gazetteer order.\nEx. Syria},
          #bgn_proper:            %Q{US Board on Geographic Names (BGN) English short name of the country (proper reading order).\n\nCountry names are spelled in English only character set (UTF-7 w/o diacritics), spelled according to the proper reading order.\nEx. The Bahamas},
          #bgn_longname:          %Q{US Board on Geographic Names (BGN) English long name of the country (proper reading order).\n\nCountry names are spelled in English only character set (UTF-7 w/o diacritics), spelled according to the proper reading order.\nEx. Syrian Arab Republic},
          #bgn_lc_longname:       %Q{US Board on Geographic Names (BGN) local long name of the country (proper reading order).\n\nCountry names are spelled are spelled in English only character set (UTF-7 w/o diacritics), spelled according to the proper reading order. The convention of lowercasing adjectives for the French language is not followed.\nEx. Jamhuri ya Muungano wa Republique Centrafricaine(fr).},
          #bgn_lc_name:           %Q{US Board on Geographic Names (BGN) local short name of the country (proper reading order).\n\nCountry names are spelled are spelled in English only character set (UTF-7 w/o diacritics), spelled according to the proper reading order. The convention of lowercasing adjectives for the French language is not followed.\nEx. Oesterreich(at)},
          #pcgn_name:             %Q{UK Permanent Committee on Geographic Names approved English short name (Gazetter order, w/o diacritics).\n\nEx. Korea, North},
          #pcgn_proper:           %Q{UK Permanent Committee on Geographic Names approved English short name (proper reading order, w/o diacritics).\n\nEx. North Korea},
          #pcgn_longname:         %Q{UK Permanent Committee on Geographic Names approved English long name (proper reading order, w/o diacritics).\n\nEx. Democratic People's Republic of Korea},
          #fao_it_name:           %Q{Food and Agriculture Organization of the United Nations Italian short name (Gazetteer order, w/diacritics).\n\nEx. Perù},
          #fao_it_proper:         %Q{Food and Agriculture Organization of the United Nations Italian short name (proper reading order, w/diacritics).\n\nEx. Perù},
          #fao_it_longname:       %Q{Food and Agriculture Organization of the United Nations Italian official name (proper reading order).\n\nEx. Repubblica del Perù},
          #eki_name:              %Q{Institute of Estonian Language Estonian short name (Gazetteer order, w/diacritics).\n\nEx. Peruu},
          #eki_longname:          %Q{Institute of Estonian Language Estonian official name (proper reading order).\n\nEx. Peruu Vabariik},
          #conv_abbr:             %Q{Conventonal abbreviation for the country name.\n\nEx. BIOT for British Indian Ocean Territory},
          #has_capital:           %Q{boolean whether the country has a designated capital city.},
          #bgn_capital:           %Q{BGN approved English capital name.},
          #ungegn_lc_capital:     %Q{UNGEGN approved local capital name.},
          #un_en_capital:         %Q{United Nations terms English capital name.},
          #un_fr_capital:         %Q{United Nations terms French capital name.},
          #un_es_capital:         %Q{United Nations terms Spanish capital name.},
          #un_eu_capital:         %Q{United Nations terms Russian cyrillic capital name.},
          #eki_capital:           %Q{EKI Estonian capital name.},
          #bgn_c_latitude:        %Q{BGN centroid decimal latitude coordinate of the capital city.},
          #bgn_c_longitude:       %Q{BGN centroid decimal longitude coordinate of the capital city.},
          #ungegn_c_latitude:     %Q{UNGEGN centroid decimal latitude coordinate of the capital city.},
          #ungegn_c_longitude:    %Q{UNGEGN centroid decimal longitude coordinate of the capital city.},
          #continent:             %Q{Geographic continental 2-letter code.},
          #subcontinent:          %Q{Geopolitical sub-continental 2-letter code.},
          #language:              %Q{The ISO 639-1 alpha-2, or ISO 639-2 alpha-3 or 639-3 alpha-3 language codes of the official languages of the country (comma separated list).\n\nEx. en,fr,es for English, French and Spanish},
          #population:            %Q{estimated population.},
          #year:                  %Q{population statistical year.},
          #bgn_demonym:           %Q{BGN English noun form for nationality (denonym).},
          #bgn_demonym_adj:       %Q{BGN English adjective form for nationality (denonym).},
          #itu:                   %Q{ITU international dialing code.},
          #ivc:                   %Q{UN international vehicle code sign.},
          #land_area:             %Q{total land area in square kilometers of the country.},
          #water_area:            %Q{total water mass in square kilometers of the country.},
          #land_mass:             %Q{total land mass (land and water) in square kilometers of the country.},
          #latitude:              %Q{average decimal latitude coordinate of the country.},
          #longitude:             %Q{average decimal longitude coordinate of the country.},
          #max_latitude:          %Q{maximum decimal latitude coordinate of the country.},
          #max_latitude:          %Q{minimum decimal latitude coordinate of the country.},
          #max_longitude:         %Q{maximum decimal latitude coordinate of the country.},
          #max_longitude:         %Q{minimum decimal latitude coordinate of the country.},
          #url_gov:               %Q{web Site for the country's government portal.},
          #url_stats:             %Q{web Site for the country's national statistics (census).},
          #url_gis:               %Q{web Site for the country's national geographic information system.},
          #url_post:              %Q{web Site for the country's national postal service.},
        }
      end

    end
  end
end

