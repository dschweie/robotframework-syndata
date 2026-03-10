# Diese Datei wurde erzeugt durch LF-ET 2.4.1 (260304a) und Kommandozeile:
# -GenTest "./lfet/ItemBuilderEngineFaker.lfet" -Group "gherkin" -Config "unit tests" -GtdDirectory "./testdata/gherkin" -GtdFileNamePattern "*_common.csv" -NonExecutableRules "50" -RecommendedTestCases -OutGherkin "ItemBuilderEngineFaker.testcases.feature"
# 
# Aktueller Benutzer: dschweie
# Aktuelles Verzeichnis (user.dir): "E:\data\schweier\rbtfrmwrk\robotframework-syndata"
# Benötigte Zeit: 00:00:01.249 (10.03.2026 16:01:00.371 - 10.03.2026 16:01:01.620)
# 
# Entscheidungstabelle: E:\data\schweier\rbtfrmwrk\robotframework-syndata\.\lfet\ItemBuilderEngineFaker.lfet
# 
# Regelauswahl und Regelsortierung: Alle Regeln, Standardsortierung
# 
# TestValueGroups: gherkin, *ti.att.gherkin, *ti.gtd.gherkin
# Config: unit tests
# 
# Testfälle mit Fehlern: 0
# 
# Testfälle mit Warnungen: 0
# 
# Informationen: 1
# 
#     1. E:\data\schweier\rbtfrmwrk\robotframework-syndata\lfet\testdata\gherkin\items_common.csv
#            Erfolgreich eingelesen: GherkinItems_com, 108 Sätze, Encoding UTF-8

# language: en

Feature: Generating test data for other localizations

  @recommended
  Scenario: 0001 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R01 : B01 Context is = None ; B02 Requestes item code = address.address
    Given SynData is in "default" mode and the localization is "de_AT"
    *     that no logging for SynData should be done
    *     in SynData no context is set
    When  the builder engine is called:
      | item            | item_data | keyword     |
      | address.address | {}        | Get Address |
    Then  the result for "address.address" should match "^(.+((\r\n?|\n))?)+$"
    *     rule "1" of "39" from decision table "ItemBuilderEngineFaker" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0002 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R02 : B01 Context is = None ; B02 Requestes item code = address.address_country
    Given SynData is in "default" mode and the localization is "en_AU"
    *     that no logging for SynData should be done
    *     in SynData no context is set
    When  the builder engine is called:
      | item                    | item_data | keyword                 |
      | address.address_country | {}        | Get Address And Country |
    Then  the result for "address.address_country" should match "^(.+((\r\n?|\n))?)+$"
    *     rule "2" of "39" from decision table "ItemBuilderEngineFaker" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0003 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R03 : B01 Context is = None ; B02 Requestes item code = address.street_address
    Given SynData is in "default" mode and the localization is "cs_CZ"
    *     that no logging for SynData should be done
    *     in SynData no context is set
    When  the builder engine is called:
      | item                   | item_data | keyword                     |
      | address.street_address | {}        | Get Street And House Number |
    Then  the result for "address.street_address" should match "^(.+((\r\n?|\n))?)+$"
    *     rule "3" of "39" from decision table "ItemBuilderEngineFaker" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0004 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R04 : B01 Context is = None ; B02 Requestes item code = address.street
    Given SynData is in "default" mode and the localization is "pt_PT"
    *     that no logging for SynData should be done
    *     in SynData no context is set
    When  the builder engine is called:
      | item           | item_data | keyword    |
      | address.street | {}        | Get Street |
    Then  the result for "address.street" should match "^(.+((\r\n?|\n))?)+$"
    *     rule "4" of "39" from decision table "ItemBuilderEngineFaker" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0005 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R05 : B01 Context is = None ; B02 Requestes item code = address.house_number
    Given SynData is in "default" mode and the localization is "en_IE"
    *     that no logging for SynData should be done
    *     in SynData no context is set
    When  the builder engine is called:
      | item                 | item_data | keyword          |
      | address.house_number | {}        | Get House Number |
    Then  the result for "address.house_number" should match "^(.+((\r\n?|\n))?)+$"
    *     rule "5" of "39" from decision table "ItemBuilderEngineFaker" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0006 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R06 : B01 Context is = None ; B02 Requestes item code = address.postcode_city
    Given SynData is in "default" mode and the localization is "en_GB"
    *     that no logging for SynData should be done
    *     in SynData no context is set
    When  the builder engine is called:
      | item                  | item_data | keyword               |
      | address.postcode_city | {}        | Get Postcode And City |
    Then  the result for "address.postcode_city" should match "^(.+((\r\n?|\n))?)+$"
    *     rule "6" of "39" from decision table "ItemBuilderEngineFaker" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0007 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R07 : B01 Context is = None ; B02 Requestes item code = address.postcode
    Given SynData is in "default" mode and the localization is "et_EE"
    *     that no logging for SynData should be done
    *     in SynData no context is set
    When  the builder engine is called:
      | item             | item_data | keyword      |
      | address.postcode | {}        | Get Postcode |
    Then  the result for "address.postcode" should match "^(.+((\r\n?|\n))?)+$"
    *     rule "7" of "39" from decision table "ItemBuilderEngineFaker" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0008 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R08 : B01 Context is = None ; B02 Requestes item code = address.city
    Given SynData is in "default" mode and the localization is "fi_FI"
    *     that no logging for SynData should be done
    *     in SynData no context is set
    When  the builder engine is called:
      | item         | item_data | keyword  |
      | address.city | {}        | Get City |
    Then  the result for "address.city" should match "^(.+((\r\n?|\n))?)+$"
    *     rule "8" of "39" from decision table "ItemBuilderEngineFaker" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0009 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R09 : B01 Context is = None ; B02 Requestes item code = address.state
    Given SynData is in "default" mode and the localization is "pt_PT"
    *     that no logging for SynData should be done
    *     in SynData no context is set
    When  the builder engine is called:
      | item          | item_data | keyword   |
      | address.state | {}        | Get State |
    Then  the internal log should contain "info" message "not_supported"
    *     the result for "address.state" should match "^(.*((\r\n?|\n))?)+$"
    *     rule "9" of "39" from decision table "ItemBuilderEngineFaker" has been executed

  @recommended
  Scenario: 0010 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R10 : B01 Context is = None ; B02 Requestes item code = address.country
    Given SynData is in "default" mode and the localization is "no_NO"
    *     that no logging for SynData should be done
    *     in SynData no context is set
    When  the builder engine is called:
      | item            | item_data | keyword     |
      | address.country | {}        | Get Country |
    Then  the result for "address.country" should match "^\S.+$"
    *     rule "10" of "39" from decision table "ItemBuilderEngineFaker" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0011 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R11 : B01 Context is = None ; B02 Requestes item code = address.country_code
    Given SynData is in "default" mode and the localization is "fi_FI"
    *     that no logging for SynData should be done
    *     in SynData no context is set
    When  the builder engine is called:
      | item                 | item_data | keyword          |
      | address.country_code | {}        | Get Country Code |
    Then  the result for "address.country_code" should match "^(A[DEFGLMORTUZ])|(B[ABDEFGHIJNORSTWYZ])|(C[ADFGHILMNORUVYZ])|(D[EJKMOZ])|(E[CEGRST])|(F[IJMR])|(G[ABDEHMNQRTWY])|(H[NRTU])|(I[DELNQRST])|(J[MOP])|(K[EGHIMNPRWZ])|(L[ABCIKRSTUVY])|(M[ACDEGHKLMNRTUVWXYZ])|(N[AEGILOPRZ])|(OM)|(P[AEGHKLTWY])|(QA)|(R[OSUW])|(S[ABCDEGIKLMNORSTVYZ])|(T[DGHJLMNORTVZ])|(U[AGSYZ])|(V[CENU])|(WS)|(YE)|(Z[AMW])$"
    *     rule "11" of "39" from decision table "ItemBuilderEngineFaker" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0012 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R12 : B01 Context is = None ; B02 Requestes item code = person.name
    Given SynData is in "default" mode and the localization is "en_GB"
    *     that no logging for SynData should be done
    *     in SynData no context is set
    When  the builder engine is called:
      | item        | item_data | keyword  |
      | person.name | {}        | Get Name |
    Then  the result for "person.name" should match "^\S[^\d]+\s[^\d]+$"
    *     rule "12" of "39" from decision table "ItemBuilderEngineFaker" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0013 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R13 : B01 Context is = None ; B02 Requestes item code = person.first_name
    Given SynData is in "default" mode and the localization is "en_AU"
    *     that no logging for SynData should be done
    *     in SynData no context is set
    When  the builder engine is called:
      | item              | item_data | keyword        |
      | person.first_name | {}        | Get First Name |
    Then  the result for "person.first_name" should match "^\S[^\d]+$"
    *     rule "13" of "39" from decision table "ItemBuilderEngineFaker" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0014 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R14 : B01 Context is = None ; B02 Requestes item code = person.last_name
    Given SynData is in "default" mode and the localization is "en_US"
    *     that no logging for SynData should be done
    *     in SynData no context is set
    When  the builder engine is called:
      | item             | item_data | keyword       |
      | person.last_name | {}        | Get Last Name |
    Then  the result for "person.last_name" should match "^\S[^\d]+$"
    *     rule "14" of "39" from decision table "ItemBuilderEngineFaker" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0015 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R15 : B01 Context is = None ; B02 Requestes item code = traffic.license_plate
    Given SynData is in "default" mode and the localization is "en_AU"
    *     that no logging for SynData should be done
    *     in SynData no context is set
    When  the builder engine is called:
      | item                  | item_data | keyword           |
      | traffic.license_plate | {}        | Get License Plate |
    Then  the result for "traffic.license_plate" should match "^.+$"
    *     rule "15" of "39" from decision table "ItemBuilderEngineFaker" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0016 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R16 : B01 Context is = None ; B02 Requestes item code = finance.bank_name
    Given SynData is in "default" mode and the localization is "nl_NL"
    *     that no logging for SynData should be done
    *     in SynData no context is set
    When  the builder engine is called:
      | item              | item_data | keyword  |
      | finance.bank_name | {}        | Get Bank |
    Then  the result for "finance.bank_name" should match "^.*$"
    *     rule "16" of "39" from decision table "ItemBuilderEngineFaker" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0017 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R17 : B01 Context is = None ; B02 Requestes item code = finance.bank_bic
    Given SynData is in "default" mode and the localization is "en_AU"
    *     that no logging for SynData should be done
    *     in SynData no context is set
    When  the builder engine is called:
      | item             | item_data | keyword |
      | finance.bank_bic | {}        | Get Bic |
    Then  the result for "finance.bank_bic" should match "^[A-Z0-9]{4}[A-Z]{2}([01][A-NP-Z]|[A-Z2-9][A-NP-Z0-9])([X]{3}|[A-WYZ0-9][A-Z0-9]{2})?$"
    *     rule "17" of "39" from decision table "ItemBuilderEngineFaker" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0018 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R18 : B01 Context is = None ; B02 Requestes item code = finance.bank_iban
    Given SynData is in "default" mode and the localization is "et_EE"
    *     that no logging for SynData should be done
    *     in SynData no context is set
    When  the builder engine is called:
      | item              | item_data | keyword  |
      | finance.bank_iban | {}        | Get Iban |
    Then  the result for "finance.bank_iban" should match "^[A-Z]{2}[0-9]{2}[A-Z0-9]{1,30}$"
    *     rule "18" of "39" from decision table "ItemBuilderEngineFaker" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0019 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R19 : B01 Context is = Set ; B02 Requestes item code = address.address
    Given SynData is in "default" mode and the localization is "nl_NL"
    *     that no logging for SynData should be done
    *     in SynData the context "ItemBuilderEngineFakerR19" with focus "test" and localization "nl_NL" is set
    *     in SynData items are stored
      | data_json |
      | {}        |
    When  the builder engine is called:
      | item            | item_data | keyword     |
      | address.address | {}        | Get Address |
    Then  the internal log should contain "info" message "not_consistent"
    *     the result for "address.address" should match "^(.+((\r\n?|\n))?)+$"
    *     the internal storage for the following items should be checked:
      | data_json                     |
      | {"address.address":"#retval"} |
    *     rule "19" of "39" from decision table "ItemBuilderEngineFaker" has been executed

  @recommended
  Scenario: 0020 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R20 : B01 Context is = Set ; B02 Requestes item code = address.address_country
    Given SynData is in "default" mode and the localization is "pt_PT"
    *     that no logging for SynData should be done
    *     in SynData the context "ItemBuilderEngineFakerR20" with focus "test" and localization "pt_PT" is set
    *     in SynData items are stored
      | data_json |
      | {}        |
    When  the builder engine is called:
      | item                    | item_data | keyword                 |
      | address.address_country | {}        | Get Address And Country |
    Then  the internal log should contain "info" message "not_consistent"
    *     the result for "address.address_country" should match "^(.+((\r\n?|\n))?)+$"
    *     the internal storage for the following items should be checked:
      | data_json                             |
      | {"address.address_country":"#retval"} |
    *     rule "20" of "39" from decision table "ItemBuilderEngineFaker" has been executed

  @recommended
  Scenario: 0021 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R21 : B01 Context is = Set ; B02 Requestes item code = address.street_address
    Given SynData is in "default" mode and the localization is "et_EE"
    *     that no logging for SynData should be done
    *     in SynData the context "ItemBuilderEngineFakerR21" with focus "test" and localization "et_EE" is set
    *     in SynData items are stored
      | data_json |
      | {}        |
    When  the builder engine is called:
      | item                   | item_data | keyword                     |
      | address.street_address | {}        | Get Street And House Number |
    Then  the internal log should contain "info" message "not_consistent"
    *     the result for "address.street_address" should match "^(.+((\r\n?|\n))?)+$"
    *     the internal storage for the following items should be checked:
      | data_json                            |
      | {"address.street_address":"#retval"} |
    *     rule "21" of "39" from decision table "ItemBuilderEngineFaker" has been executed

  @recommended
  Scenario: 0022 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R22 : B01 Context is = Set ; B02 Requestes item code = address.street
    Given SynData is in "default" mode and the localization is "en_CA"
    *     that no logging for SynData should be done
    *     in SynData the context "ItemBuilderEngineFakerR22" with focus "test" and localization "en_CA" is set
    *     in SynData items are stored
      | data_json |
      | {}        |
    When  the builder engine is called:
      | item           | item_data | keyword    |
      | address.street | {}        | Get Street |
    Then  the internal log should contain "info" message "not_consistent"
    *     the result for "address.street" should match "^(.+((\r\n?|\n))?)+$"
    *     the internal storage for the following items should be checked:
      | data_json                    |
      | {"address.street":"#retval"} |
    *     rule "22" of "39" from decision table "ItemBuilderEngineFaker" has been executed

  @recommended
  Scenario: 0023 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R23 : B01 Context is = Set ; B02 Requestes item code = address.house_number
    Given SynData is in "default" mode and the localization is "pt_PT"
    *     that no logging for SynData should be done
    *     in SynData the context "ItemBuilderEngineFakerR23" with focus "test" and localization "pt_PT" is set
    *     in SynData items are stored
      | data_json |
      | {}        |
    When  the builder engine is called:
      | item                 | item_data | keyword          |
      | address.house_number | {}        | Get House Number |
    Then  the internal log should contain "info" message "not_consistent"
    *     the result for "address.house_number" should match "^(.+((\r\n?|\n))?)+$"
    *     the internal storage for the following items should be checked:
      | data_json                          |
      | {"address.house_number":"#retval"} |
    *     rule "23" of "39" from decision table "ItemBuilderEngineFaker" has been executed

  @recommended
  Scenario: 0024 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R24 : B01 Context is = Set ; B02 Requestes item code = address.postcode_city
    Given SynData is in "default" mode and the localization is "de_CH"
    *     that no logging for SynData should be done
    *     in SynData the context "ItemBuilderEngineFakerR24" with focus "test" and localization "de_CH" is set
    *     in SynData items are stored
      | data_json |
      | {}        |
    When  the builder engine is called:
      | item                  | item_data | keyword               |
      | address.postcode_city | {}        | Get Postcode And City |
    Then  the internal log should contain "info" message "not_consistent"
    *     the result for "address.postcode_city" should match "^(.+((\r\n?|\n))?)+$"
    *     the internal storage for the following items should be checked:
      | data_json                           |
      | {"address.postcode_city":"#retval"} |
    *     rule "24" of "39" from decision table "ItemBuilderEngineFaker" has been executed

  @recommended
  Scenario: 0025 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R25 : B01 Context is = Set ; B02 Requestes item code = address.postcode
    Given SynData is in "default" mode and the localization is "cs_CZ"
    *     that no logging for SynData should be done
    *     in SynData the context "ItemBuilderEngineFakerR25" with focus "test" and localization "cs_CZ" is set
    *     in SynData items are stored
      | data_json |
      | {}        |
    When  the builder engine is called:
      | item             | item_data | keyword      |
      | address.postcode | {}        | Get Postcode |
    Then  the internal log should contain "info" message "not_consistent"
    *     the result for "address.postcode" should match "^(.+((\r\n?|\n))?)+$"
    *     the internal storage for the following items should be checked:
      | data_json                      |
      | {"address.postcode":"#retval"} |
    *     rule "25" of "39" from decision table "ItemBuilderEngineFaker" has been executed

  @recommended
  Scenario: 0026 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R26 : B01 Context is = Set ; B02 Requestes item code = address.city
    Given SynData is in "default" mode and the localization is "et_EE"
    *     that no logging for SynData should be done
    *     in SynData the context "ItemBuilderEngineFakerR26" with focus "test" and localization "et_EE" is set
    *     in SynData items are stored
      | data_json |
      | {}        |
    When  the builder engine is called:
      | item         | item_data | keyword  |
      | address.city | {}        | Get City |
    Then  the internal log should contain "info" message "not_consistent"
    *     the result for "address.city" should match "^(.+((\r\n?|\n))?)+$"
    *     the internal storage for the following items should be checked:
      | data_json                  |
      | {"address.city":"#retval"} |
    *     rule "26" of "39" from decision table "ItemBuilderEngineFaker" has been executed

  @recommended
  Scenario: 0027 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R27 : B01 Context is = Set ; B02 Requestes item code = address.state
    Given SynData is in "default" mode and the localization is "de_CH"
    *     that no logging for SynData should be done
    *     in SynData the context "ItemBuilderEngineFakerR27" with focus "test" and localization "de_CH" is set
    *     in SynData items are stored
      | data_json |
      | {}        |
    When  the builder engine is called:
      | item          | item_data | keyword   |
      | address.state | {}        | Get State |
    Then  the internal log should contain "info" message "not_supported"
    *     the result for "address.state" should match "^(.*((\r\n?|\n))?)+$"
    *     the internal storage for the following items should be checked:
      | data_json                   |
      | {"address.state":"#retval"} |
    *     rule "27" of "39" from decision table "ItemBuilderEngineFaker" has been executed

  @recommended
  Scenario: 0028 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R28 : B01 Context is = Set ; B02 Requestes item code = address.country
    Given SynData is in "default" mode and the localization is "fi_FI"
    *     that no logging for SynData should be done
    *     in SynData the context "ItemBuilderEngineFakerR28" with focus "test" and localization "fi_FI" is set
    *     in SynData items are stored
      | data_json |
      | {}        |
    When  the builder engine is called:
      | item            | item_data | keyword     |
      | address.country | {}        | Get Country |
    Then  the internal log should contain "info" message "not_consistent"
    *     the result for "address.country" should match "^\S.+$"
    *     the internal storage for the following items should be checked:
      | data_json                     |
      | {"address.country":"#retval"} |
    *     rule "28" of "39" from decision table "ItemBuilderEngineFaker" has been executed

  @recommended
  Scenario: 0029 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R29 : B01 Context is = Set ; B02 Requestes item code = address.country_code
    Given SynData is in "default" mode and the localization is "es_MX"
    *     that no logging for SynData should be done
    *     in SynData the context "ItemBuilderEngineFakerR29" with focus "test" and localization "es_MX" is set
    *     in SynData items are stored
      | data_json |
      | {}        |
    When  the builder engine is called:
      | item                 | item_data | keyword          |
      | address.country_code | {}        | Get Country Code |
    Then  the internal log should contain "info" message "not_consistent"
    *     the result for "address.country_code" should match "^(A[DEFGLMORTUZ])|(B[ABDEFGHIJNORSTWYZ])|(C[ADFGHILMNORUVYZ])|(D[EJKMOZ])|(E[CEGRST])|(F[IJMR])|(G[ABDEHMNQRTWY])|(H[NRTU])|(I[DELNQRST])|(J[MOP])|(K[EGHIMNPRWZ])|(L[ABCIKRSTUVY])|(M[ACDEGHKLMNRTUVWXYZ])|(N[AEGILOPRZ])|(OM)|(P[AEGHKLTWY])|(QA)|(R[OSUW])|(S[ABCDEGIKLMNORSTVYZ])|(T[DGHJLMNORTVZ])|(U[AGSYZ])|(V[CENU])|(WS)|(YE)|(Z[AMW])$"
    *     the internal storage for the following items should be checked:
      | data_json                          |
      | {"address.country_code":"#retval"} |
    *     rule "29" of "39" from decision table "ItemBuilderEngineFaker" has been executed

  @recommended
  Scenario: 0030 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R30 : B01 Context is = Set ; B02 Requestes item code = person.name ; B03 Item person.first_name is = unknown ; B04 Item person.last_name is = unknown
    Given SynData is in "default" mode and the localization is "en_GB"
    *     that no logging for SynData should be done
    *     in SynData the context "ItemBuilderEngineFakerR30" with focus "test" and localization "en_GB" is set
    *     in SynData items are stored
      | data_json |
      | {}        |
    When  the builder engine is called:
      | item        | item_data | keyword  |
      | person.name | {}        | Get Name |
    Then  the result for "person.name" should match "^\S[^\d]+\s[^\d]+$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                              |
      | {"person.first_name":"#stored", "person.last_name":"#stored", "person.name":"#retval"} |
    *     rule "30" of "39" from decision table "ItemBuilderEngineFaker" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0031 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R31 : B01 Context is = Set ; B02 Requestes item code = person.name ; B03 Item person.first_name is = unknown ; B04 Item person.last_name is = known
    Given SynData is in "default" mode and the localization is "pl_PL"
    *     that no logging for SynData should be done
    *     in SynData the context "ItemBuilderEngineFakerR31" with focus "test" and localization "pl_PL" is set
    *     in SynData items are stored
      | data_json                           |
      | {"person.last_name":"Koronkiewicz"} |
    When  the builder engine is called:
      | item        | item_data | keyword  |
      | person.name | {}        | Get Name |
    Then  the result for "person.name" should match "^\S[^\d]+\sKoronkiewicz$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                                   |
      | {"person.first_name":"#stored", "person.last_name":"Koronkiewicz", "person.name":"#retval"} |
    *     rule "31" of "39" from decision table "ItemBuilderEngineFaker" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0032 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R32 : B01 Context is = Set ; B02 Requestes item code = person.name ; B03 Item person.first_name is = known ; B04 Item person.last_name is = unknown
    Given SynData is in "default" mode and the localization is "en_IE"
    *     that no logging for SynData should be done
    *     in SynData the context "ItemBuilderEngineFakerR32" with focus "test" and localization "en_IE" is set
    *     in SynData items are stored
      | data_json                        |
      | {"person.first_name":"Caoimhin"} |
    When  the builder engine is called:
      | item        | item_data | keyword  |
      | person.name | {}        | Get Name |
    Then  the result for "person.name" should match "^Caoimhin\s[^\d]+$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                               |
      | {"person.first_name":"Caoimhin", "person.last_name":"#stored", "person.name":"#retval"} |
    *     rule "32" of "39" from decision table "ItemBuilderEngineFaker" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0033 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R33 : B01 Context is = Set ; B02 Requestes item code = person.name ; B03 Item person.first_name is = known ; B04 Item person.last_name is = known
    Given SynData is in "default" mode and the localization is "de_AT"
    *     that no logging for SynData should be done
    *     in SynData the context "ItemBuilderEngineFakerR33" with focus "test" and localization "de_AT" is set
    *     in SynData items are stored
      | data_json                                                      |
      | {"person.first_name":"Jamie", "person.last_name":"Schöffmann"} |
    When  the builder engine is called:
      | item        | item_data | keyword  |
      | person.name | {}        | Get Name |
    Then  the result for "person.name" should match "^Jamie Schöffmann$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                               |
      | {"person.first_name":"Jamie", "person.last_name":"Schöffmann", "person.name":"#retval"} |
    *     rule "33" of "39" from decision table "ItemBuilderEngineFaker" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0034 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R34 : B01 Context is = Set ; B02 Requestes item code = person.first_name
    Given SynData is in "default" mode and the localization is "en_IE"
    *     that no logging for SynData should be done
    *     in SynData the context "ItemBuilderEngineFakerR34" with focus "test" and localization "en_IE" is set
    *     in SynData items are stored
      | data_json |
      | {}        |
    When  the builder engine is called:
      | item              | item_data | keyword        |
      | person.first_name | {}        | Get First Name |
    Then  the result for "person.first_name" should match "^\S[^\d]+$"
    *     the internal storage for the following items should be checked:
      | data_json                       |
      | {"person.first_name":"#retval"} |
    *     rule "34" of "39" from decision table "ItemBuilderEngineFaker" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0035 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R35 : B01 Context is = Set ; B02 Requestes item code = person.last_name
    Given SynData is in "default" mode and the localization is "hr_HR"
    *     that no logging for SynData should be done
    *     in SynData the context "ItemBuilderEngineFakerR35" with focus "test" and localization "hr_HR" is set
    *     in SynData items are stored
      | data_json |
      | {}        |
    When  the builder engine is called:
      | item             | item_data | keyword       |
      | person.last_name | {}        | Get Last Name |
    Then  the result for "person.last_name" should match "^\S[^\d]+$"
    *     the internal storage for the following items should be checked:
      | data_json                      |
      | {"person.last_name":"#retval"} |
    *     rule "35" of "39" from decision table "ItemBuilderEngineFaker" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0036 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R36 : B01 Context is = Set ; B02 Requestes item code = traffic.license_plate
    Given SynData is in "default" mode and the localization is "es_AR"
    *     that no logging for SynData should be done
    *     in SynData the context "ItemBuilderEngineFakerR36" with focus "test" and localization "es_AR" is set
    *     in SynData items are stored
      | data_json |
      | {}        |
    When  the builder engine is called:
      | item                  | item_data | keyword           |
      | traffic.license_plate | {}        | Get License Plate |
    Then  the internal log should contain "info" message "not_consistent"
    *     the result for "traffic.license_plate" should match "^.+$"
    *     the internal storage for the following items should be checked:
      | data_json                           |
      | {"traffic.license_plate":"#retval"} |
    *     rule "36" of "39" from decision table "ItemBuilderEngineFaker" has been executed

  @recommended
  Scenario: 0037 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R37 : B01 Context is = Set ; B02 Requestes item code = finance.bank_name
    Given SynData is in "default" mode and the localization is "hr_HR"
    *     that no logging for SynData should be done
    *     in SynData the context "ItemBuilderEngineFakerR37" with focus "test" and localization "hr_HR" is set
    *     in SynData items are stored
      | data_json |
      | {}        |
    When  the builder engine is called:
      | item              | item_data | keyword  |
      | finance.bank_name | {}        | Get Bank |
    Then  the result for "finance.bank_name" should match "^.*$"
    *     the internal storage for the following items should be checked:
      | data_json                                                     |
      | {"finance.bank_name":"#retval", "finance.bank_bic":"#stored"} |
    *     rule "37" of "39" from decision table "ItemBuilderEngineFaker" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0038 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R38 : B01 Context is = Set ; B02 Requestes item code = finance.bank_bic
    Given SynData is in "default" mode and the localization is "pl_PL"
    *     that no logging for SynData should be done
    *     in SynData the context "ItemBuilderEngineFakerR38" with focus "test" and localization "pl_PL" is set
    *     in SynData items are stored
      | data_json |
      | {}        |
    When  the builder engine is called:
      | item             | item_data | keyword |
      | finance.bank_bic | {}        | Get Bic |
    Then  the result for "finance.bank_bic" should match "^[A-Z0-9]{4}[A-Z]{2}([01][A-NP-Z]|[A-Z2-9][A-NP-Z0-9])([X]{3}|[A-WYZ0-9][A-Z0-9]{2})?$"
    *     the internal storage for the following items should be checked:
      | data_json                                                     |
      | {"finance.bank_name":"#stored", "finance.bank_bic":"#retval"} |
    *     rule "38" of "39" from decision table "ItemBuilderEngineFaker" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0039 ItemBuilderEngineFaker
    ItemBuilderEngineFaker
    R39 : B01 Context is = Set ; B02 Requestes item code = finance.bank_iban
    Given SynData is in "default" mode and the localization is "cs_CZ"
    *     that no logging for SynData should be done
    *     in SynData the context "ItemBuilderEngineFakerR39" with focus "test" and localization "cs_CZ" is set
    *     in SynData items are stored
      | data_json |
      | {}        |
    When  the builder engine is called:
      | item              | item_data | keyword  |
      | finance.bank_iban | {}        | Get Iban |
    Then  the internal log should contain "info" message "not_consistent"
    *     the result for "finance.bank_iban" should match "^[A-Z]{2}[0-9]{2}[A-Z0-9]{1,30}$"
    *     the internal storage for the following items should be checked:
      | data_json                       |
      | {"finance.bank_iban":"#retval"} |
    *     rule "39" of "39" from decision table "ItemBuilderEngineFaker" has been executed

### end of generated test cases ###