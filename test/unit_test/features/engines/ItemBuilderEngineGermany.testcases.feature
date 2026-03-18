# Diese Datei wurde erzeugt durch LF-ET 2.4.1 (260304a) und Kommandozeile:
# -GenTest "./lfet/ItemBuilderEngineGermany.lfet" -Group "gherkin" -Config "unit tests" -GtdDirectory "./testdata/gherkin" -GtdFileNamePattern "*_de.csv" -DDTableName "item" -DDLimit "3" -NonExecutableRules "50" -RecommendedTestCases -Protocol -OutGherkin "ItemBuilderEngineGermany.testcases.feature"
# 
# Aktueller Benutzer: dschweie
# Aktuelles Verzeichnis (user.dir): "E:\data\schweier\rbtfrmwrk\robotframework-syndata"
# Benötigte Zeit: 00:00:03.650 (18.03.2026 11:29:18.651 - 18.03.2026 11:29:22.301)
# 
# Entscheidungstabelle: E:\data\schweier\rbtfrmwrk\robotframework-syndata\.\lfet\ItemBuilderEngineGermany.lfet
# 
# Regelauswahl und Regelsortierung: Alle Regeln, Standardsortierung
# 
# TestValueGroups: gherkin, *ti.att.gherkin, *ti.gtd.gherkin
# Config: unit tests
# 
# Testfälle mit Fehlern: 2
# 
#     1. Fehler in Testfall 46
#         
#         ItemBuilderEngineGermany
#         | R46 | B02=traffic | B06=else
#         
#         Die dynamisch erzeugte GTD Teilmenge 'item' enthält keine Datensätze. {(item, GherkinItems_de, *, 73 Sätze), (item, item, domain == "traffic", 3 Sätze), (item, item, item == "else", 0 Sätze)}  (18.03.2026 11:29:20.099)
# 
#     2. Fehler in Testfall 61
#         
#         ItemBuilderEngineGermany
#         | R46 | B02=traffic | B06=else
#         
#         Die dynamisch erzeugte GTD Teilmenge 'item' enthält keine Datensätze. {(item, GherkinItems_de, *, 73 Sätze), (item, item, domain == "traffic", 3 Sätze), (item, item, item == "else", 0 Sätze)}  (18.03.2026 11:29:22.294)
# 
# Testfälle mit Warnungen: 0
# 
# Informationen: 1
# 
#     1. E:\data\schweier\rbtfrmwrk\robotframework-syndata\lfet\testdata\gherkin\items_de.csv
#            Erfolgreich eingelesen: GherkinItems_de, 73 Sätze, Encoding UTF-8

# language: en

Feature: Generating test data specifically for Germany

  @ddcount_00 @recommended
  Scenario: 0001 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R01 : B01 Context is = None ; B02 Domain of the item is = address ; B04 Requested item code of domain "address" = address.address
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item            | item_data | keyword     |
      | address.address | {}        | Get Address |
    Then  the result for "address.address" should match "^\S.+\s\d+[A-Ha-h]?(\r\n?|\n)\d{5}\s.+$"
    *     rule "1" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0002 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R02 : B01 Context is = None ; B02 Domain of the item is = address ; B04 Requested item code of domain "address" = address.address_country
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item                    | item_data | keyword                 |
      | address.address_country | {}        | Get Address And Country |
    Then  the result for "address.address_country" should match "^\S.+\s\d+[A-Ha-h]?(\r\n?|\n)\d{5}\s.+(\r\n?|\n)Deutschland$"
    *     rule "2" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0003 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R03 : B01 Context is = None ; B02 Domain of the item is = address ; B04 Requested item code of domain "address" = address.street_address
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item                   | item_data | keyword                     |
      | address.street_address | {}        | Get Street And House Number |
    Then  the result for "address.street_address" should match "^\S.+\s\d+[A-Ha-h]?$"
    *     rule "3" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0004 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R04 : B01 Context is = None ; B02 Domain of the item is = address ; B04 Requested item code of domain "address" = address.street
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item           | item_data | keyword    |
      | address.street | {}        | Get Street |
    Then  the result for "address.street" should match "^\S.+$"
    *     rule "4" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0005 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R05 : B01 Context is = None ; B02 Domain of the item is = address ; B04 Requested item code of domain "address" = address.house_number
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item                 | item_data | keyword          |
      | address.house_number | {}        | Get House Number |
    Then  the result for "address.house_number" should match "^\d+[A-Ha-h]?$"
    *     rule "5" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0006 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R06 : B01 Context is = None ; B02 Domain of the item is = address ; B04 Requested item code of domain "address" = address.postcode_city
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item                  | item_data | keyword               |
      | address.postcode_city | {}        | Get Postcode And City |
    Then  the result for "address.postcode_city" should match "^\d{5}\s.+$"
    *     rule "6" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0007 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R07 : B01 Context is = None ; B02 Domain of the item is = address ; B04 Requested item code of domain "address" = address.postcode
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item             | item_data | keyword      |
      | address.postcode | {}        | Get Postcode |
    Then  the result for "address.postcode" should match "^\d{5}$"
    *     rule "7" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0008 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R08 : B01 Context is = None ; B02 Domain of the item is = address ; B04 Requested item code of domain "address" = address.city
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item         | item_data | keyword  |
      | address.city | {}        | Get City |
    Then  the result for "address.city" should match "^\S.+$"
    *     rule "8" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0009 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R09 : B01 Context is = None ; B02 Domain of the item is = address ; B04 Requested item code of domain "address" = address.state
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item          | item_data | keyword   |
      | address.state | {}        | Get State |
    Then  the result for "address.state" should match "^\S.+$"
    *     rule "9" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0010 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R10 : B01 Context is = None ; B02 Domain of the item is = address ; B04 Requested item code of domain "address" = address.country
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item            | item_data | keyword     |
      | address.country | {}        | Get Country |
    Then  the result for "address.country" should match "^\S.+$"
    *     rule "10" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0011 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R11 : B01 Context is = None ; B02 Domain of the item is = address ; B04 Requested item code of domain "address" = address.country_code
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item                 | item_data | keyword          |
      | address.country_code | {}        | Get Country Code |
    Then  the result for "address.country_code" should match "^(A[DEFGLMORTUZ])|(B[ABDEFGHIJNORSTWYZ])|(C[ADFGHILMNORUVYZ])|(D[EJKMOZ])|(E[CEGRST])|(F[IJMR])|(G[ABDEHMNQRTWY])|(H[NRTU])|(I[DELNQRST])|(J[MOP])|(K[EGHIMNPRWZ])|(L[ABCIKRSTUVY])|(M[ACDEGHKLMNRTUVWXYZ])|(N[AEGILOPRZ])|(OM)|(P[AEGHKLTWY])|(QA)|(R[OSUW])|(S[ABCDEGIKLMNORSTVYZ])|(T[DGHJLMNORTVZ])|(U[AGSYZ])|(V[CENU])|(WS)|(YE)|(Z[AMW])$"
    *     rule "11" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0012 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R12 : B01 Context is = None ; B02 Domain of the item is = communication ; B03 Requested item code of domain "communication" = communication.email
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item                | item_data | keyword   |
      | communication.email | {}        | Get EMail |
    Then  the result for "communication.email" should match "^.+@.+$"
    *     rule "12" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0013 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R13 : B01 Context is = None ; B02 Domain of the item is = communication ; B03 Requested item code of domain "communication" = communication.mobile
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item                 | item_data | keyword    |
      | communication.mobile | {}        | Get Mobile |
    Then  the result for "communication.mobile" should match "^[+]49\s\d+\s\d+$"
    *     rule "13" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @datadriven @ddcount_02 @r14 @recommended @rid58
  Scenario: 0014 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R14 : B01 Context is = None ; B02 Domain of the item is = finance
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item             | item_data | keyword |
      | finance.bank_bic | {}        | Get Bic |
    Then  the result for "finance.bank_bic" should match "^[A-Z0-9]{4}DE([01][A-NP-Z]|[A-Z2-9][A-NP-Z0-9])([X]{3}|[A-WYZ0-9][A-Z0-9]{2})?$"
    *     rule "14" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0015 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R15 : B01 Context is = None ; B02 Domain of the item is = person ; B05 Requested item code of domain "person" = person.name
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item        | item_data | keyword  |
      | person.name | {}        | Get Name |
    Then  the result for "person.name" should match "^\S[^\d]+\s[^\d]+$"
    *     rule "15" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0016 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R16 : B01 Context is = None ; B02 Domain of the item is = person ; B05 Requested item code of domain "person" = person.first_name
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item              | item_data | keyword        |
      | person.first_name | {}        | Get First Name |
    Then  the result for "person.first_name" should match "^\S[^\d]+$"
    *     rule "16" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0017 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R17 : B01 Context is = None ; B02 Domain of the item is = person ; B05 Requested item code of domain "person" = person.last_name
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item             | item_data | keyword       |
      | person.last_name | {}        | Get Last Name |
    Then  the result for "person.last_name" should match "^\S[^\d]+$"
    *     rule "17" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0018 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R18 : B01 Context is = None ; B02 Domain of the item is = person ; B05 Requested item code of domain "person" = person.ssn
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item       | item_data | keyword                    |
      | person.ssn | {}        | Get Social Security Number |
    Then  the result for "person.ssn" should match "^\d{2}\s\d{6}\s[A-Z]\s\d{3}$"
    *     rule "18" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0019 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R19 : B01 Context is = None ; B02 Domain of the item is = traffic ; B06 Requested item code of domain "traffic" = traffic.license_plate
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item                  | item_data | keyword           |
      | traffic.license_plate | {}        | Get License Plate |
    Then  the result for "traffic.license_plate" should match "(?=.{5,10}$)^[A-ZÄÖÜ]{1,3}\s[A-Z]{1,2}\s[1-9]\d{0,3}[EH]?$"
    *     rule "19" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @datadriven @ddcount_03 @r20 @recommended @rid84
  Scenario: 0020 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R20 : B01 Context is = Set ; B02 Domain of the item is = address ; B11 Geographical reference is = unknown
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR20" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json |
      | {}        |
    When  the builder engine is called:
      | item                 | item_data | keyword          |
      | address.house_number | {}        | Get House Number |
    Then  the result for "address.house_number" should match "^\d+[A-Ha-h]?$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                                                                                                                                                                                                                                                                                                                           |
      | {"address.address":"#stored", "address.address_country":"#stored", "address.city":"#stored", "address.country":"#stored", "address.country_code":"#stored", "address.house_number":"#retval", "address.postcode":"#stored", "address.postcode_city":"#stored", "address.state":"#stored", "address.street":"#stored", "address.street_address":"#stored", "location.ags":"#stored"} |
    *     rule "20" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @datadriven @ddcount_03 @r21 @recommended @rid85
  Scenario: 0021 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R21 : B01 Context is = Set ; B02 Domain of the item is = address ; B11 Geographical reference is = given
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR21" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json                   |
      | {"location.ags":"08235079"} |
    When  the builder engine is called:
      | item            | item_data | keyword     |
      | address.country | {}        | Get Country |
    Then  the result for "address.country" should match "^Deutschland$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                                                                                                                                                                                                                                                                                                                                             |
      | {"address.address":"#stored", "address.address_country":"#stored", "address.city":"Bad Wildbad", "address.country":"#retval", "address.country_code":"DE", "address.house_number":"#stored", "address.postcode":"75323", "address.postcode_city":"75323 Bad Wildbad", "address.state":"Baden-Württemberg", "address.street":"#stored", "address.street_address":"#stored", "location.ags":"08235079"} |
    *     rule "21" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0022 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R22 : B01 Context is = Set ; B02 Domain of the item is = communication ; B03 Requested item code of domain "communication" = communication.email ; B08 Item person.first_name is = unknown ; B09 Item person.last_name is = unknown
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR22" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json |
      | {}        |
    When  the builder engine is called:
      | item                | item_data | keyword   |
      | communication.email | {}        | Get EMail |
    Then  the result for "communication.email" should match "^.+@.+$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                                                               |
      | {"communication.email":"#retval", "person.first_name":"#stored", "person.last_name":"#stored", "person.name":"#stored"} |
    *     rule "22" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0023 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R23 : B01 Context is = Set ; B02 Domain of the item is = communication ; B03 Requested item code of domain "communication" = communication.email ; B08 Item person.first_name is = unknown ; B09 Item person.last_name is = known
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR23" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json                   |
      | {"person.last_name":"Mair"} |
    When  the builder engine is called:
      | item                | item_data | keyword   |
      | communication.email | {}        | Get EMail |
    Then  the result for "communication.email" should match "^.+@.+$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                                                            |
      | {"communication.email":"#retval", "person.first_name":"#stored", "person.last_name":"Mair", "person.name":"#stored"} |
    *     rule "23" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0024 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R24 : B01 Context is = Set ; B02 Domain of the item is = communication ; B03 Requested item code of domain "communication" = communication.email ; B08 Item person.first_name is = known ; B09 Item person.last_name is = unknown
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR24" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json                                       |
      | {"person.first_name":"Marta", "person.sex":"f"} |
    When  the builder engine is called:
      | item                | item_data | keyword   |
      | communication.email | {}        | Get EMail |
    Then  the result for "communication.email" should match "^.+@.+$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                                                             |
      | {"communication.email":"#retval", "person.first_name":"Marta", "person.last_name":"#stored", "person.name":"#stored"} |
    *     rule "24" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0025 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R25 : B01 Context is = Set ; B02 Domain of the item is = communication ; B03 Requested item code of domain "communication" = communication.email ; B08 Item person.first_name is = known ; B09 Item person.last_name is = known
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR25" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json                                                                     |
      | {"person.first_name":"Oskar", "person.last_name":"Tietjen", "person.sex":"m"} |
    When  the builder engine is called:
      | item                | item_data | keyword   |
      | communication.email | {}        | Get EMail |
    Then  the result for "communication.email" should match "^(o.*)?(tietjen)?\d*@.+$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                                                             |
      | {"communication.email":"#retval", "person.first_name":"Oskar", "person.last_name":"Tietjen", "person.name":"#stored"} |
    *     rule "25" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0026 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R26 : B01 Context is = Set ; B02 Domain of the item is = communication ; B03 Requested item code of domain "communication" = communication.mobile
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR26" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json |
      | {}        |
    When  the builder engine is called:
      | item                 | item_data | keyword    |
      | communication.mobile | {}        | Get Mobile |
    Then  the result for "communication.mobile" should match "^[+]49\s\d+\s\d+$"
    *     the internal storage for the following items should be checked:
      | data_json                          |
      | {"communication.mobile":"#retval"} |
    *     rule "26" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @datadriven @ddcount_02 @r27 @recommended @rid117
  Scenario: 0027 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R27 : B01 Context is = Set ; B02 Domain of the item is = finance ; B11 Geographical reference is = unknown
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR27" with focus "test" and localization "de_DE" is set
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
    *     rule "27" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @datadriven @ddcount_02 @r28 @recommended @rid118
  Scenario: 0028 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R28 : B01 Context is = Set ; B02 Domain of the item is = finance ; B11 Geographical reference is = given
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR28" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json                   |
      | {"location.ags":"08326074"} |
    When  the builder engine is called:
      | item              | item_data | keyword  |
      | finance.bank_iban | {}        | Get Iban |
    Then  the result for "finance.bank_iban" should match "^DE[0-9]{20}$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                                                               |
      | {"finance.bank_name":"#stored", "finance.bank_bic":"#stored", "finance.bank_iban":"#retval", "location.ags":"08326074"} |
    *     rule "28" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0029 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R29 : B01 Context is = Set ; B02 Domain of the item is = person ; B05 Requested item code of domain "person" = person.name ; B08 Item person.first_name is = unknown ; B09 Item person.last_name is = unknown
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR29" with focus "test" and localization "de_DE" is set
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
    *     rule "29" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0030 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R30 : B01 Context is = Set ; B02 Domain of the item is = person ; B05 Requested item code of domain "person" = person.name ; B08 Item person.first_name is = unknown ; B09 Item person.last_name is = known
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR30" with focus "test" and localization "de_DE" is set
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
    *     rule "30" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0031 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R31 : B01 Context is = Set ; B02 Domain of the item is = person ; B05 Requested item code of domain "person" = person.name ; B08 Item person.first_name is = known ; B09 Item person.last_name is = unknown
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR31" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json                                       |
      | {"person.first_name":"Marta", "person.sex":"f"} |
    When  the builder engine is called:
      | item        | item_data | keyword  |
      | person.name | {}        | Get Name |
    Then  the result for "person.name" should match "^Marta\s[^\d]+$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                            |
      | {"person.first_name":"Marta", "person.last_name":"#stored", "person.name":"#retval"} |
    *     rule "31" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0032 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R32 : B01 Context is = Set ; B02 Domain of the item is = person ; B05 Requested item code of domain "person" = person.name ; B08 Item person.first_name is = known ; B09 Item person.last_name is = known
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR32" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json                                                                     |
      | {"person.first_name":"Oskar", "person.last_name":"Tietjen", "person.sex":"m"} |
    When  the builder engine is called:
      | item        | item_data | keyword  |
      | person.name | {}        | Get Name |
    Then  the result for "person.name" should match "^Oskar Tietjen$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                            |
      | {"person.first_name":"Oskar", "person.last_name":"Tietjen", "person.name":"#retval"} |
    *     rule "32" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0033 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R33 : B01 Context is = Set ; B02 Domain of the item is = person ; B05 Requested item code of domain "person" = person.first_name ; B07 Item person.sex is = unknown
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR33" with focus "test" and localization "de_DE" is set
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
    *     rule "33" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @datadriven @ddcount_02 @r34 @recommended @rid110
  Scenario: 0034 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R34 : B01 Context is = Set ; B02 Domain of the item is = person ; B05 Requested item code of domain "person" = person.first_name ; B07 Item person.sex is = known
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR34" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json          |
      | {"person.sex":"m"} |
    When  the builder engine is called:
      | item              | item_data | keyword        |
      | person.first_name | {}        | Get First Name |
    Then  the result for "person.first_name" should match "^\S[^\d]+$"
    *     the internal storage for the following items should be checked:
      | data_json                                         |
      | {"person.first_name":"#retval", "person.sex":"m"} |
    *     rule "34" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0035 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R35 : B01 Context is = Set ; B02 Domain of the item is = person ; B05 Requested item code of domain "person" = person.last_name
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR35" with focus "test" and localization "de_DE" is set
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
    *     rule "35" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0036 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R36 : B01 Context is = Set ; B02 Domain of the item is = person ; B05 Requested item code of domain "person" = person.ssn ; B07 Item person.sex is = unknown ; B09 Item person.last_name is = unknown ; B10 Item person.dob is = unknown
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR36" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json |
      | {}        |
    When  the builder engine is called:
      | item       | item_data | keyword                    |
      | person.ssn | {}        | Get Social Security Number |
    Then  the result for "person.ssn" should match "^\d{2}\s\d{6}\s[A-Z]\s\d{3}$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                                              |
      | {"person.ssn":"#retval", "person.sex":"#stored", "person.dob":"#stored", "person.last_name":"#stored"} |
    *     rule "36" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0037 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R37 : B01 Context is = Set ; B02 Domain of the item is = person ; B05 Requested item code of domain "person" = person.ssn ; B07 Item person.sex is = unknown ; B09 Item person.last_name is = unknown ; B10 Item person.dob is = known
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR37" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json                   |
      | {"person.dob":"21.03.1973"} |
    When  the builder engine is called:
      | item       | item_data | keyword                    |
      | person.ssn | {}        | Get Social Security Number |
    Then  the result for "person.ssn" should match "^\d{2}\s210373\s[A-Z]\s\d{3}$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                                              |
      | {"person.ssn":"#retval", "person.sex":"#stored", "person.dob":"#stored", "person.last_name":"#stored"} |
    *     rule "37" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0038 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R38 : B01 Context is = Set ; B02 Domain of the item is = person ; B05 Requested item code of domain "person" = person.ssn ; B07 Item person.sex is = unknown ; B09 Item person.last_name is = known ; B10 Item person.dob is = unknown
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR38" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json                       |
      | {"person.last_name":"Schulten"} |
    When  the builder engine is called:
      | item       | item_data | keyword                    |
      | person.ssn | {}        | Get Social Security Number |
    Then  the result for "person.ssn" should match "^\d{2}\s\d{6}\sS\s\d{3}$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                                              |
      | {"person.ssn":"#retval", "person.sex":"#stored", "person.dob":"#stored", "person.last_name":"#stored"} |
    *     rule "38" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0039 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R39 : B01 Context is = Set ; B02 Domain of the item is = person ; B05 Requested item code of domain "person" = person.ssn ; B07 Item person.sex is = unknown ; B09 Item person.last_name is = known ; B10 Item person.dob is = known
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR39" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json                                              |
      | {"person.dob":"24.12.1965", "person.last_name":"Ritz"} |
    When  the builder engine is called:
      | item       | item_data | keyword                    |
      | person.ssn | {}        | Get Social Security Number |
    Then  the result for "person.ssn" should match "^\d{2}\s241265\sR\s\d{3}$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                                              |
      | {"person.ssn":"#retval", "person.sex":"#stored", "person.dob":"#stored", "person.last_name":"#stored"} |
    *     rule "39" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0040 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R40 : B01 Context is = Set ; B02 Domain of the item is = person ; B05 Requested item code of domain "person" = person.ssn ; B07 Item person.sex is = known ; B09 Item person.last_name is = unknown ; B10 Item person.dob is = unknown
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR40" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json          |
      | {"person.sex":"f"} |
    When  the builder engine is called:
      | item       | item_data | keyword                    |
      | person.ssn | {}        | Get Social Security Number |
    Then  the result for "person.ssn" should match "^\d{2}\s\d{6}\s[A-Z]\s[5-9]\d{2}$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                                              |
      | {"person.ssn":"#retval", "person.sex":"#stored", "person.dob":"#stored", "person.last_name":"#stored"} |
    *     rule "40" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0041 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R41 : B01 Context is = Set ; B02 Domain of the item is = person ; B05 Requested item code of domain "person" = person.ssn ; B07 Item person.sex is = known ; B09 Item person.last_name is = unknown ; B10 Item person.dob is = known
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR41" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json                                     |
      | {"person.sex":"f", "person.dob":"03.03.2003"} |
    When  the builder engine is called:
      | item       | item_data | keyword                    |
      | person.ssn | {}        | Get Social Security Number |
    Then  the result for "person.ssn" should match "^\d{2}\s030303\s[A-Z]\s[5-9]\d{2}$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                                              |
      | {"person.ssn":"#retval", "person.sex":"#stored", "person.dob":"#stored", "person.last_name":"#stored"} |
    *     rule "41" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0042 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R42 : B01 Context is = Set ; B02 Domain of the item is = person ; B05 Requested item code of domain "person" = person.ssn ; B07 Item person.sex is = known ; B09 Item person.last_name is = known ; B10 Item person.dob is = unknown
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR42" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json                                     |
      | {"person.sex":"f", "person.last_name":"Goll"} |
    When  the builder engine is called:
      | item       | item_data | keyword                    |
      | person.ssn | {}        | Get Social Security Number |
    Then  the result for "person.ssn" should match "^\d{2}\s\d{6}\sG\s[5-9]\d{2}$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                                              |
      | {"person.ssn":"#retval", "person.sex":"#stored", "person.dob":"#stored", "person.last_name":"#stored"} |
    *     rule "42" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0043 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R43 : B01 Context is = Set ; B02 Domain of the item is = person ; B05 Requested item code of domain "person" = person.ssn ; B07 Item person.sex is = known ; B09 Item person.last_name is = known ; B10 Item person.dob is = known
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR43" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json                                                                   |
      | {"person.sex":"m", "person.dob":"05.08.1982", "person.last_name":"Jeschke"} |
    When  the builder engine is called:
      | item       | item_data | keyword                    |
      | person.ssn | {}        | Get Social Security Number |
    Then  the result for "person.ssn" should match "^\d{2}\s050882\sJ\s[0-4]\d{2}$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                                              |
      | {"person.ssn":"#retval", "person.sex":"#stored", "person.dob":"#stored", "person.last_name":"#stored"} |
    *     rule "43" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0044 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R44 : B01 Context is = Set ; B02 Domain of the item is = traffic ; B06 Requested item code of domain "traffic" = traffic.license_plate ; B11 Geographical reference is = unknown
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR44" with focus "test" and localization "de_DE" is set
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
    *     rule "44" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @recommended
  Scenario: 0045 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R45 : B01 Context is = Set ; B02 Domain of the item is = traffic ; B06 Requested item code of domain "traffic" = traffic.license_plate ; B11 Geographical reference is = given
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR45" with focus "test" and localization "de_DE" is set
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
    *     rule "45" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @ddcount_00 @incomplete @recommended @skip
  Scenario: 0046 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R46 : B02 Domain of the item is = traffic ; B06 Requested item code of domain "traffic" = else    messages:
    # Die dynamisch erzeugte GTD Teilmenge 'item' enthält keine Datensätze. {(item, GherkinItems_de, *, 73 Sätze), (item, item, domain == "traffic", 3 Sätze), (item, item, item == "else", 0 Sätze)}  (18.03.2026 11:29:20.099)

  @datadriven @ddbase_0014 @r14 @rid58
  Scenario: 0047 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R14 : B01 Context is = None ; B02 Domain of the item is = finance
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item              | item_data | keyword  |
      | finance.bank_iban | {}        | Get Iban |
    Then  the result for "finance.bank_iban" should match "^DE[0-9]{20}$"
    *     rule "14" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @datadriven @ddbase_0014 @r14 @rid58
  Scenario: 0048 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R14 : B01 Context is = None ; B02 Domain of the item is = finance
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData no context is set
    When  the builder engine is called:
      | item              | item_data | keyword  |
      | finance.bank_name | {}        | Get Bank |
    Then  the result for "finance.bank_name" should match "^.+$"
    *     rule "14" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @datadriven @ddbase_0020 @r20 @rid84
  Scenario: 0049 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R20 : B01 Context is = Set ; B02 Domain of the item is = address ; B11 Geographical reference is = unknown
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR20" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json |
      | {}        |
    When  the builder engine is called:
      | item                 | item_data | keyword          |
      | address.country_code | {}        | Get Country Code |
    Then  the result for "address.country_code" should match "^DE$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                                                                                                                                                                                                                                                                                                                           |
      | {"address.address":"#stored", "address.address_country":"#stored", "address.city":"#stored", "address.country":"#stored", "address.country_code":"#retval", "address.house_number":"#stored", "address.postcode":"#stored", "address.postcode_city":"#stored", "address.state":"#stored", "address.street":"#stored", "address.street_address":"#stored", "location.ags":"#stored"} |
    *     rule "20" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @datadriven @ddbase_0020 @r20 @rid84
  Scenario: 0050 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R20 : B01 Context is = Set ; B02 Domain of the item is = address ; B11 Geographical reference is = unknown
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR20" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json |
      | {}        |
    When  the builder engine is called:
      | item          | item_data | keyword   |
      | address.state | {}        | Get State |
    Then  the result for "address.state" should match "^\S.+$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                                                                                                                                                                                                                                                                                                                           |
      | {"address.address":"#stored", "address.address_country":"#stored", "address.city":"#stored", "address.country":"#stored", "address.country_code":"#stored", "address.house_number":"#stored", "address.postcode":"#stored", "address.postcode_city":"#stored", "address.state":"#retval", "address.street":"#stored", "address.street_address":"#stored", "location.ags":"#stored"} |
    *     rule "20" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @datadriven @ddbase_0020 @r20 @rid84
  Scenario: 0051 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R20 : B01 Context is = Set ; B02 Domain of the item is = address ; B11 Geographical reference is = unknown
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR20" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json |
      | {}        |
    When  the builder engine is called:
      | item                  | item_data | keyword               |
      | address.postcode_city | {}        | Get Postcode And City |
    Then  the result for "address.postcode_city" should match "^\d{5}\s.+$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                                                                                                                                                                                                                                                                                                                           |
      | {"address.address":"#stored", "address.address_country":"#stored", "address.city":"#stored", "address.country":"#stored", "address.country_code":"#stored", "address.house_number":"#stored", "address.postcode":"#stored", "address.postcode_city":"#retval", "address.state":"#stored", "address.street":"#stored", "address.street_address":"#stored", "location.ags":"#stored"} |
    *     rule "20" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @datadriven @ddbase_0021 @r21 @rid85
  Scenario: 0052 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R21 : B01 Context is = Set ; B02 Domain of the item is = address ; B11 Geographical reference is = given
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR21" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json                   |
      | {"location.ags":"11000000"} |
    When  the builder engine is called:
      | item         | item_data | keyword  |
      | address.city | {}        | Get City |
    Then  the result for "address.city" should match "^Berlin$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                                                                                                                                                                                                                                                                                                                     |
      | {"address.address":"#stored", "address.address_country":"#stored", "address.city":"Berlin", "address.country":"#stored", "address.country_code":"DE", "address.house_number":"#stored", "address.postcode":"#stored", "address.postcode_city":"#stored", "address.state":"Berlin", "address.street":"#stored", "address.street_address":"#stored", "location.ags":"11000000"} |
    *     rule "21" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @datadriven @ddbase_0021 @r21 @rid85
  Scenario: 0053 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R21 : B01 Context is = Set ; B02 Domain of the item is = address ; B11 Geographical reference is = given
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR21" with focus "test" and localization "de_DE" is set
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
    *     rule "21" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @datadriven @ddbase_0021 @r21 @rid85
  Scenario: 0054 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R21 : B01 Context is = Set ; B02 Domain of the item is = address ; B11 Geographical reference is = given
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR21" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json                   |
      | {"location.ags":"07133055"} |
    When  the builder engine is called:
      | item           | item_data | keyword    |
      | address.street | {}        | Get Street |
    Then  the result for "address.street" should match "^\S.+$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                                                                                                                                                                                                                                                                                                                                        |
      | {"address.address":"#stored", "address.address_country":"#stored", "address.city":"#stored", "address.country":"#stored", "address.country_code":"DE", "address.house_number":"#stored", "address.postcode":"#stored", "address.postcode_city":"55569 Langenthal", "address.state":"Rheinland-Pfalz", "address.street":"#retval", "address.street_address":"#stored", "location.ags":"07133055"} |
    *     rule "21" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @datadriven @ddbase_0027 @r27 @rid117
  Scenario: 0055 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R27 : B01 Context is = Set ; B02 Domain of the item is = finance ; B11 Geographical reference is = unknown
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR27" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json |
      | {}        |
    When  the builder engine is called:
      | item              | item_data | keyword  |
      | finance.bank_iban | {}        | Get Iban |
    Then  the result for "finance.bank_iban" should match "^DE[0-9]{20}$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                                    |
      | {"finance.bank_name":"#stored", "finance.bank_bic":"#stored", "finance.bank_iban":"#retval"} |
    *     rule "27" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @datadriven @ddbase_0027 @r27 @rid117
  Scenario: 0056 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R27 : B01 Context is = Set ; B02 Domain of the item is = finance ; B11 Geographical reference is = unknown
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR27" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json |
      | {}        |
    When  the builder engine is called:
      | item             | item_data | keyword |
      | finance.bank_bic | {}        | Get Bic |
    Then  the result for "finance.bank_bic" should match "^[A-Z0-9]{4}DE([01][A-NP-Z]|[A-Z2-9][A-NP-Z0-9])([X]{3}|[A-WYZ0-9][A-Z0-9]{2})?$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                                    |
      | {"finance.bank_name":"#stored", "finance.bank_bic":"#retval", "finance.bank_iban":"#stored"} |
    *     rule "27" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @datadriven @ddbase_0028 @r28 @rid118
  Scenario: 0057 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R28 : B01 Context is = Set ; B02 Domain of the item is = finance ; B11 Geographical reference is = given
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR28" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json                   |
      | {"location.ags":"07339008"} |
    When  the builder engine is called:
      | item              | item_data | keyword  |
      | finance.bank_name | {}        | Get Bank |
    Then  the result for "finance.bank_name" should match "^.+$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                                                               |
      | {"finance.bank_name":"#retval", "finance.bank_bic":"#stored", "finance.bank_iban":"#stored", "location.ags":"07339008"} |
    *     rule "28" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @datadriven @ddbase_0028 @r28 @rid118
  Scenario: 0058 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R28 : B01 Context is = Set ; B02 Domain of the item is = finance ; B11 Geographical reference is = given
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR28" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json                   |
      | {"location.ags":"03158037"} |
    When  the builder engine is called:
      | item             | item_data | keyword |
      | finance.bank_bic | {}        | Get Bic |
    Then  the result for "finance.bank_bic" should match "^[A-Z0-9]{4}DE([01][A-NP-Z]|[A-Z2-9][A-NP-Z0-9])([X]{3}|[A-WYZ0-9][A-Z0-9]{2})?$"
    *     the internal storage for the following items should be checked:
      | data_json                                                                                                               |
      | {"finance.bank_name":"#stored", "finance.bank_bic":"#retval", "finance.bank_iban":"#stored", "location.ags":"03158037"} |
    *     rule "28" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @datadriven @ddbase_0034 @r34 @rid110
  Scenario: 0059 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R34 : B01 Context is = Set ; B02 Domain of the item is = person ; B05 Requested item code of domain "person" = person.first_name ; B07 Item person.sex is = known
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR34" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json          |
      | {"person.sex":"f"} |
    When  the builder engine is called:
      | item              | item_data | keyword        |
      | person.first_name | {}        | Get First Name |
    Then  the result for "person.first_name" should match "^\S[^\d]+$"
    *     the internal storage for the following items should be checked:
      | data_json                                         |
      | {"person.first_name":"#retval", "person.sex":"f"} |
    *     rule "34" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

  @datadriven @ddbase_0034 @r34 @rid110
  Scenario: 0060 ItemBuilderEngineGermany
    ItemBuilderEngineGermany
    R34 : B01 Context is = Set ; B02 Domain of the item is = person ; B05 Requested item code of domain "person" = person.first_name ; B07 Item person.sex is = known
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineGermanyR34" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json          |
      | {"person.sex":"d"} |
    When  the builder engine is called:
      | item              | item_data | keyword        |
      | person.first_name | {}        | Get First Name |
    Then  the result for "person.first_name" should match "^\S[^\d]+$"
    *     the internal storage for the following items should be checked:
      | data_json                                         |
      | {"person.first_name":"#retval", "person.sex":"d"} |
    *     rule "34" of "46" from decision table "ItemBuilderEngineGermany" has been executed
    *     there must be no entry in the internal log

### end of generated test cases ###