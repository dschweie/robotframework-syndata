# Diese Datei wurde erzeugt durch LF-ET 2.4.1 (260304a) und Kommandozeile:
# -GenTest "./lfet/ItemBuilderEngine.lfet" -Group "gherkin" -Config "unit tests" -GtdDirectory "./testdata/gherkin" -GtdFileNamePattern "*.csv" -NonExecutableRules "50" -RecommendedTestCases -OutGherkin "ItemBuilderEngine.testcases.feature"
# 
# Aktueller Benutzer: dschweie
# Aktuelles Verzeichnis (user.dir): "E:\data\schweier\rbtfrmwrk\robotframework-syndata"
# Benötigte Zeit: 00:00:00.707 (11.03.2026 08:45:46.213 - 11.03.2026 08:45:46.920)
# 
# Entscheidungstabelle: E:\data\schweier\rbtfrmwrk\robotframework-syndata\.\lfet\ItemBuilderEngine.lfet
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
#         E:\data\schweier\rbtfrmwrk\robotframework-syndata\lfet\testdata\gherkin\items_de.csv
#            Erfolgreich eingelesen: GherkinItems_de, 51 Sätze, Encoding UTF-8
#         E:\data\schweier\rbtfrmwrk\robotframework-syndata\lfet\testdata\gherkin\replay.csv
#            Erfolgreich eingelesen: GherkinReplayData, 76 Sätze, Encoding UTF-8

# language: en

Feature: Choice of method for generating the test data

  @recommended
  Scenario: 0001 ItemBuilderEngine
    ItemBuilderEngine
    R01 : B01 Current Mode = DEF ; B02 Context is = None ; B06 Localization = de_DE
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     no context is set
    When  the builder engine is called:
      | item             | item_data | keyword |
      | finance.bank_bic | {}        | Get Bic |
    Then  the result for "finance.bank_bic" should match "^[A-Z0-9]{4}DE([01][A-NP-Z]|[A-Z2-9][A-NP-Z0-9])([X]{3}|[A-WYZ0-9][A-Z0-9]{2})?$"
    *     rule "1" of "9" from decision table "ItemBuilderEngine" has been executed
    *     rule from decision table "ItemBuilderEngineGermany" has been executed

  @recommended
  Scenario: 0002 ItemBuilderEngine
    ItemBuilderEngine
    R02 : B01 Current Mode = DEF ; B02 Context is = None ; B06 Localization = *
    Given SynData is in "default" mode and the localization is "it_IT"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     no context is set
    When  the builder engine is called:
      | item                  | item_data | keyword               |
      | address.postcode_city | {}        | Get Postcode And City |
    Then  the result for "address.postcode_city" should match "^(.+((\r\n?|\n))?)+$"
    *     rule "2" of "9" from decision table "ItemBuilderEngine" has been executed
    *     rule from decision table "ItemBuilderEngineFaker" has been executed

  @recommended
  Scenario: 0003 ItemBuilderEngine
    ItemBuilderEngine
    R03 : B01 Current Mode = DEF ; B02 Context is = Set ; B03 Requested item is = unknown ; B06 Localization = de_DE
    Given SynData is in "default" mode and the localization is "de_DE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineR03" with focus "test" and localization "de_DE" is set
    *     in SynData items are stored
      | data_json                   |
      | {"location.ags":"09772202"} |
    When  the builder engine is called:
      | item                 | item_data | keyword          |
      | address.country_code | {}        | Get Country Code |
    Then  the result for "address.country_code" should match "^DE$"
    *     rule "3" of "9" from decision table "ItemBuilderEngine" has been executed
    *     rule from decision table "ItemBuilderEngineGermany" has been executed
    *     the internal storage for the following items should be checked:
      | data_json                                                                                                                                                                                                                                                                                                                                                                             |
      | {"address.address":"#stored", "address.address_country":"#stored", "address.city":"Stadtbergen", "address.country":"#stored", "address.country_code":"#retval", "address.house_number":"#stored", "address.postcode":"86391", "address.postcode_city":"#stored", "address.state":"Bayern", "address.street":"#stored", "address.street_address":"#stored", "location.ags":"09772202"} |

  @recommended
  Scenario: 0004 ItemBuilderEngine
    ItemBuilderEngine
    R04 : B01 Current Mode = DEF ; B02 Context is = Set ; B03 Requested item is = unknown ; B06 Localization = *
    Given SynData is in "default" mode and the localization is "en_IE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineR04" with focus "test" and localization "en_IE" is set
    *     in SynData items are stored
      | data_json                     |
      | {"person.last_name":"Kenlan"} |
    When  the builder engine is called:
      | item        | item_data | keyword  |
      | person.name | {}        | Get Name |
    Then  the result for "person.name" should match "^\S[^\d]+\sKenlan$"
    *     rule "4" of "9" from decision table "ItemBuilderEngine" has been executed
    *     rule from decision table "ItemBuilderEngineFaker" has been executed
    *     the internal storage for the following items should be checked:
      | data_json                                                                             |
      | {"person.first_name":"#stored", "person.last_name":"Kenlan", "person.name":"#retval"} |

  @recommended
  Scenario: 0005 ItemBuilderEngine
    ItemBuilderEngine
    R05 : B01 Current Mode = DEF ; B02 Context is = Set ; B03 Requested item is = known
    Given SynData is in "default" mode and the localization is "en_GB"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineR05" with focus "test" and localization "en_GB" is set
    *     in SynData items are stored
      | data_json                      |
      | {"person.last_name":"Wilkins"} |
    *     the builder engine is called:
      | item        | item_data | keyword  |
      | person.name | {}        | Get Name |
    When  the builder engine is called:
      | item        | item_data | keyword  |
      | person.name | {}        | Get Name |
    Then  the result for "person.name" should match "^\S[^\d]+\sWilkins$"
    *     rule "5" of "9" from decision table "ItemBuilderEngine" has been executed
    *     the internal storage for the following items should be checked:
      | data_json                                                                              |
      | {"person.first_name":"#stored", "person.last_name":"Wilkins", "person.name":"#retval"} |

  @recommended
  Scenario: 0006 ItemBuilderEngine
    ItemBuilderEngine
    R06 : B01 Current Mode = REP ; B04 Comparison current test case vs recorded test case = equal ; B05 Comparison current item vs recorded item = equal
    Given SynData is configured with:
      | mode   | replay_file             | localization | logging |
      | replay | replay_file_gherkin.csv | en_US        | True    |
    *     the replay file contains the following data:
      | item              | value                | test_suite | test_case | keyword  |
      | finance.bank_name | CITADEL ADVISORS LLC | #current   | #current  | Get Bank |
    *     data for given test case is read
    When  the builder engine is called:
      | item              | item_data | keyword  |
      | finance.bank_name | {}        | Get Bank |
    Then  the result for "finance.bank_name" should be equal to "CITADEL ADVISORS LLC"
    *     rule "6" of "9" from decision table "ItemBuilderEngine" has been executed

  @recommended
  Scenario: 0007 ItemBuilderEngine
    ItemBuilderEngine
    R07 : B01 Current Mode = REP ; B04 Comparison current test case vs recorded test case = equal ; B05 Comparison current item vs recorded item = unequal ; B06 Localization = de_DE
    Given SynData is configured with:
      | mode   | replay_file             | localization | logging |
      | replay | replay_file_gherkin.csv | de_DE        | True    |
    *     the replay file contains the following data:
      | item              | value                                     | test_suite | test_case | keyword  |
      | finance.bank_name | Volksbank Raiffeisenbank Obermain (Gf P2) | #current   | #current  | Get Bank |
    *     data for given test case is read
    When  the builder engine is called:
      | item              | item_data | keyword        |
      | person.first_name | {}        | Get First Name |
    Then  the result for "person.first_name" should match "^\S[^\d]+$"
    *     rule "7" of "9" from decision table "ItemBuilderEngine" has been executed
    *     rule from decision table "ItemBuilderEngineGermany" has been executed
    *     the "warning" with id "SynData.NOREP" must be in the internal log

  @recommended
  Scenario: 0008 ItemBuilderEngine
    ItemBuilderEngine
    R08 : B01 Current Mode = REP ; B04 Comparison current test case vs recorded test case = equal ; B05 Comparison current item vs recorded item = unequal ; B06 Localization = *
    Given SynData is configured with:
      | mode   | replay_file             | localization | logging |
      | replay | replay_file_gherkin.csv | en_US        | True    |
    *     the replay file contains the following data:
      | item            | value        | test_suite | test_case | keyword     |
      | address.country | Saudi Arabia | #current   | #current  | Get Country |
    *     data for given test case is read
    When  the builder engine is called:
      | item          | item_data | keyword   |
      | address.state | {}        | Get State |
    Then  the result for "address.state" should match "^(.*((\r\n?|\n))?)+$"
    *     rule "8" of "9" from decision table "ItemBuilderEngine" has been executed
    *     rule from decision table "ItemBuilderEngineFaker" has been executed
    *     the "warning" with id "SynData.NOREP" must be in the internal log

  @recommended
  Scenario: 0009 ItemBuilderEngine
    ItemBuilderEngine
    R09 : B01 Current Mode = REP ; B04 Comparison current test case vs recorded test case = unequal
    Given SynData is configured with:
      | mode   | replay_file             | localization | logging |
      | replay | replay_file_gherkin.csv | en_US        | True    |
    *     the replay file contains the following data:
      | item             | value  | test_suite | test_case            | keyword       |
      | person.last_name | Wilson | #current   | 4711 Dummy Test Case | Get Last Name |
    When  the builder engine is called:
      | item            | item_data | keyword     |
      | address.country | {}        | Get Country |
    Then  the result for "address.country" should match "^\S.+$"
    *     rule "9" of "9" from decision table "ItemBuilderEngine" has been executed

### end of generated test cases ###