# Diese Datei wurde erzeugt durch LF-ET 2.4.1 (260304a) und Kommandozeile:
# -GenTest "./lfet/ItemBuilderEngineGermany.lfet" -Group "gherkin" -Config "unit tests" -GtdDirectory "./testdata/gherkin" -GtdFileNamePattern "*_de.csv" -NonExecutableRules "50" -RecommendedTestCases -Protocol -OutGherkin "ItemBuilderEngineGermany.testcases.feature"
# 
# Aktueller Benutzer: dschweie
# Aktuelles Verzeichnis (user.dir): "E:\data\schweier\rbtfrmwrk\robotframework-syndata"
# Benötigte Zeit: 00:00:00.960 (11.03.2026 08:45:44.173 - 11.03.2026 08:45:45.133)
# 
# Entscheidungstabelle: E:\data\schweier\rbtfrmwrk\robotframework-syndata\.\lfet\ItemBuilderEngineGermany.lfet
# 
# Regelauswahl und Regelsortierung: Alle Regeln, Standardsortierung
# 
# TestValueGroups: gherkin, *ti.att.gherkin, *ti.gtd.gherkin
# Config: unit tests
# 
# Testfälle mit Fehlern: 1
# 
#     1. Fehler in Testfall 28
#         
#         ItemBuilderEngineGermany
#         | R28 | B02=traffic | B05=else
#         
#         Die dynamisch erzeugte GTD Teilmenge 'item' enthält keine Datensätze. {(item, GherkinItems_de, *, 51 Sätze), (item, item, domain == "traffic", 3 Sätze), (item, item, item == "else", 0 Sätze)}  (11.03.2026 08:45:45.123)
# 
# Testfälle mit Warnungen: 0
# 
# Informationen: 1
# 
#     1. E:\data\schweier\rbtfrmwrk\robotframework-syndata\lfet\testdata\gherkin\items_de.csv
#            Erfolgreich eingelesen: GherkinItems_de, 51 Sätze, Encoding UTF-8

# language: en

Feature: Generating test data specifically for Germany

  @recommended
  Scenario: 0001 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R01 : B01 Context is = None ; B02 Domain of the item is = address ; B03 Requested item code of domain "address" = address.address
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item            | item_data | keyword     |
      | address.address | {}        | Get Address |
    Then  the result for "address.address" should match "^\S.+\s\d+[A-Ha-h]?(\r\n?|\n)\d{5}\s.+$"
    *     rule "1" of "28" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0002 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R02 : B01 Context is = None ; B02 Domain of the item is = address ; B03 Requested item code of domain "address" = address.address_country
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item                    | item_data | keyword                 |
      | address.address_country | {}        | Get Address And Country |
    Then  the result for "address.address_country" should match "^\S.+\s\d+[A-Ha-h]?(\r\n?|\n)\d{5}\s.+(\r\n?|\n)Deutschland$"
    *     rule "2" of "28" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0003 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R03 : B01 Context is = None ; B02 Domain of the item is = address ; B03 Requested item code of domain "address" = address.street_address
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item                   | item_data | keyword                     |
      | address.street_address | {}        | Get Street And House Number |
    Then  the result for "address.street_address" should match "^\S.+\s\d+[A-Ha-h]?$"
    *     rule "3" of "28" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0004 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R04 : B01 Context is = None ; B02 Domain of the item is = address ; B03 Requested item code of domain "address" = address.street
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item           | item_data | keyword    |
      | address.street | {}        | Get Street |
    Then  the result for "address.street" should match "^\S.+$"
    *     rule "4" of "28" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0005 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R05 : B01 Context is = None ; B02 Domain of the item is = address ; B03 Requested item code of domain "address" = address.house_number
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item                 | item_data | keyword          |
      | address.house_number | {}        | Get House Number |
    Then  the result for "address.house_number" should match "^\d+[A-Ha-h]?$"
    *     rule "5" of "28" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0006 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R06 : B01 Context is = None ; B02 Domain of the item is = address ; B03 Requested item code of domain "address" = address.postcode_city
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item                  | item_data | keyword               |
      | address.postcode_city | {}        | Get Postcode And City |
    Then  the result for "address.postcode_city" should match "^\d{5}\s.+$"
    *     rule "6" of "28" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0007 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R07 : B01 Context is = None ; B02 Domain of the item is = address ; B03 Requested item code of domain "address" = address.postcode
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item             | item_data | keyword      |
      | address.postcode | {}        | Get Postcode |
    Then  the result for "address.postcode" should match "^\d{5}$"
    *     rule "7" of "28" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0008 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R08 : B01 Context is = None ; B02 Domain of the item is = address ; B03 Requested item code of domain "address" = address.city
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item         | item_data | keyword  |
      | address.city | {}        | Get City |
    Then  the result for "address.city" should match "^\S.+$"
    *     rule "8" of "28" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0009 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R09 : B01 Context is = None ; B02 Domain of the item is = address ; B03 Requested item code of domain "address" = address.state
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item          | item_data | keyword   |
      | address.state | {}        | Get State |
    Then  the result for "address.state" should match "^\S.+$"
    *     rule "9" of "28" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0010 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R10 : B01 Context is = None ; B02 Domain of the item is = address ; B03 Requested item code of domain "address" = address.country
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item            | item_data | keyword     |
      | address.country | {}        | Get Country |
    Then  the result for "address.country" should match "^\S.+$"
    *     rule "10" of "28" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0011 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R11 : B01 Context is = None ; B02 Domain of the item is = address ; B03 Requested item code of domain "address" = address.country_code
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item                 | item_data | keyword          |
      | address.country_code | {}        | Get Country Code |
    Then  the result for "address.country_code" should match "^(A[DEFGLMORTUZ])|(B[ABDEFGHIJNORSTWYZ])|(C[ADFGHILMNORUVYZ])|(D[EJKMOZ])|(E[CEGRST])|(F[IJMR])|(G[ABDEHMNQRTWY])|(H[NRTU])|(I[DELNQRST])|(J[MOP])|(K[EGHIMNPRWZ])|(L[ABCIKRSTUVY])|(M[ACDEGHKLMNRTUVWXYZ])|(N[AEGILOPRZ])|(OM)|(P[AEGHKLTWY])|(QA)|(R[OSUW])|(S[ABCDEGIKLMNORSTVYZ])|(T[DGHJLMNORTVZ])|(U[AGSYZ])|(V[CENU])|(WS)|(YE)|(Z[AMW])$"
    *     rule "11" of "28" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0012 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R12 : B01 Context is = None ; B02 Domain of the item is = finance
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item              | item_data | keyword  |
      | finance.bank_name | {}        | Get Bank |
    Then  the result for "finance.bank_name" should match "^.+$"
    *     rule "12" of "28" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0013 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R13 : B01 Context is = None ; B02 Domain of the item is = person ; B04 Requested item code of domain "person" = person.name
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item        | item_data | keyword  |
      | person.name | {}        | Get Name |
    Then  the result for "person.name" should match "^\S[^\d]+\s[^\d]+$"
    *     rule "13" of "28" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0014 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R14 : B01 Context is = None ; B02 Domain of the item is = person ; B04 Requested item code of domain "person" = person.first_name
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item              | item_data | keyword        |
      | person.first_name | {}        | Get First Name |
    Then  the result for "person.first_name" should match "^\S[^\d]+$"
    *     rule "14" of "28" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0015 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R15 : B01 Context is = None ; B02 Domain of the item is = person ; B04 Requested item code of domain "person" = person.last_name
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item             | item_data | keyword       |
      | person.last_name | {}        | Get Last Name |
    Then  the result for "person.last_name" should match "^\S[^\d]+$"
    *     rule "15" of "28" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0016 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R16 : B01 Context is = None ; B02 Domain of the item is = traffic ; B05 Requested item code of domain "traffic" = traffic.license_plate
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item                  | item_data | keyword           |
      | traffic.license_plate | {}        | Get License Plate |
    Then  the result for "traffic.license_plate" should match "(?=.{5,10}$)^[A-ZÄÖÜ]{1,3}\s[A-Z]{1,2}\s[1-9]\d{0,3}[EH]?$"
    *     rule "16" of "28" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0017 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R17 : B01 Context is = Set ; B02 Domain of the item is = address ; B08 Geographical reference is = unknown
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR17" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json |
      | {}        |
    When  the builder engine is called:
      | item                    | item_data | keyword                 |
      | address.address_country | {}        | Get Address And Country |
    Then  the result for "address.address_country" should match "^\S.+\s\d+[A-Ha-h]?(\r\n?|\n)\d{5}\s.+(\r\n?|\n)Deutschland$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                                                                                                                                                                                                                                                                                                                          |
      | {"address.address":"#stored", "address.address_country":"#retval", "address.city":"#stored", "address.country":"Deutschland", "address.country_code":"DE", "address.house_number":"#stored", "address.postcode":"#stored", "address.postcode_city":"#stored", "address.state":"#stored", "address.street":"#stored", "address.street_address":"#stored", "location.ags":"#stored"} |
    *     rule "17" of "28" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0018 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R18 : B01 Context is = Set ; B02 Domain of the item is = address ; B08 Geographical reference is = given
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR18" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json                   |
      | {"location.ags":"07135070"} |
    When  the builder engine is called:
      | item             | item_data | keyword      |
      | address.postcode | {}        | Get Postcode |
    Then  the result for "address.postcode" should match "^56865$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                                                                                                                                                                                                                                                                                                                                    |
      | {"address.address":"#stored", "address.address_country":"#stored", "address.city":"#stored", "address.country":"#stored", "address.country_code":"#stored", "address.house_number":"#stored", "address.postcode":"#retval", "address.postcode_city":"#stored", "address.state":"Rheinland-Pfalz", "address.street":"#stored", "address.street_address":"#stored", "location.ags":"07135070"} |
    *     rule "18" of "28" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0019 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R19 : B01 Context is = Set ; B02 Domain of the item is = finance
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR19" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json |
      | {}        |
    When  the builder engine is called:
      | item              | item_data | keyword  |
      | finance.bank_name | {}        | Get Bank |
    Then  the result for "finance.bank_name" should match "^.+$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                                    |
      | {"finance.bank_name":"#retval", "finance.bank_bic":"#stored", "finance.bank_iban":"#stored"} |
    *     rule "19" of "28" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0020 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R20 : B01 Context is = Set ; B02 Domain of the item is = person ; B04 Requested item code of domain "person" = person.name ; B06 Item person.first_name is = unknown ; B07 Item person.last_name is = unknown
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR20" with focus "test" and localization "de_DE" is set
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
    *     rule "20" of "28" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0021 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R21 : B01 Context is = Set ; B02 Domain of the item is = person ; B04 Requested item code of domain "person" = person.name ; B06 Item person.first_name is = unknown ; B07 Item person.last_name is = known
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR21" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json                   |
      | {"person.last_name":"Mair"} |
    When  the builder engine is called:
      | item        | item_data | keyword  |
      | person.name | {}        | Get Name |
    Then  the result for "person.name" should match "^\S[^\d]+\sMair$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                           |
      | {"person.first_name":"#stored", "person.last_name":"Mair", "person.name":"#retval"} |
    *     rule "21" of "28" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0022 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R22 : B01 Context is = Set ; B02 Domain of the item is = person ; B04 Requested item code of domain "person" = person.name ; B06 Item person.first_name is = known ; B07 Item person.last_name is = unknown
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR22" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json                     |
      | {"person.first_name":"Marta"} |
    When  the builder engine is called:
      | item        | item_data | keyword  |
      | person.name | {}        | Get Name |
    Then  the result for "person.name" should match "^Marta\s[^\d]+$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                            |
      | {"person.first_name":"Marta", "person.last_name":"#stored", "person.name":"#retval"} |
    *     rule "22" of "28" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0023 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R23 : B01 Context is = Set ; B02 Domain of the item is = person ; B04 Requested item code of domain "person" = person.name ; B06 Item person.first_name is = known ; B07 Item person.last_name is = known
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR23" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json                                                   |
      | {"person.first_name":"Oskar", "person.last_name":"Tietjen"} |
    When  the builder engine is called:
      | item        | item_data | keyword  |
      | person.name | {}        | Get Name |
    Then  the result for "person.name" should match "^Oskar Tietjen$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                            |
      | {"person.first_name":"Oskar", "person.last_name":"Tietjen", "person.name":"#retval"} |
    *     rule "23" of "28" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0024 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R24 : B01 Context is = Set ; B02 Domain of the item is = person ; B04 Requested item code of domain "person" = person.first_name
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR24" with focus "test" and localization "de_DE" is set
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
    *     rule "24" of "28" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0025 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R25 : B01 Context is = Set ; B02 Domain of the item is = person ; B04 Requested item code of domain "person" = person.last_name
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR25" with focus "test" and localization "de_DE" is set
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
    *     rule "25" of "28" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0026 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R26 : B01 Context is = Set ; B02 Domain of the item is = traffic ; B05 Requested item code of domain "traffic" = traffic.license_plate ; B08 Geographical reference is = unknown
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR26" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json |
      | {}        |
    When  the builder engine is called:
      | item                  | item_data | keyword           |
      | traffic.license_plate | {}        | Get License Plate |
    Then  the result for "traffic.license_plate" should match "(?=.{5,10}$)^[A-ZÄÖÜ]{1,3}\s[A-Z]{1,2}\s[1-9]\d{0,3}[EH]?$"
    *     the internal storage for the following items should be checked:
      | data_json                                                     |
      | {"traffic.license_plate":"#retval", "location.ags":"#stored"} |
    *     rule "26" of "28" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @recommended
  Scenario: 0027 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R27 : B01 Context is = Set ; B02 Domain of the item is = traffic ; B05 Requested item code of domain "traffic" = traffic.license_plate ; B08 Geographical reference is = given
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR27" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json                   |
      | {"location.ags":"07337501"} |
    When  the builder engine is called:
      | item                  | item_data | keyword           |
      | traffic.license_plate | {}        | Get License Plate |
    Then  the result for "traffic.license_plate" should match "(?=.{5,10}$)^SÜW\s[A-Z]{1,2}\s[1-9]\d{0,3}[EH]?$"
    *     the internal storage for the following items should be checked:
      | data_json                                                      |
      | {"traffic.license_plate":"#retval", "location.ags":"07337501"} |
    *     rule "27" of "28" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @incomplete @recommended @skip
  Scenario: 0028 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R28 : B02 Domain of the item is = traffic ; B05 Requested item code of domain "traffic" = else    messages:
    # Die dynamisch erzeugte GTD Teilmenge 'item' enthält keine Datensätze. {(item, GherkinItems_de, *, 51 Sätze), (item, item, domain == "traffic", 3 Sätze), (item, item, item == "else", 0 Sätze)}  (11.03.2026 08:45:45.123)

### end of generated test cases ###