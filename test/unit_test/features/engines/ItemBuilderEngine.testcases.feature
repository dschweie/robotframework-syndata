# Diese Datei wurde erzeugt durch LF-ET 2.4.1 (260304a) und Kommandozeile:
# -GenTest "./lfet/ItemBuilderEngine.lfet" -Group "gherkin" -Config "unit tests" -GtdDirectory "./testdata/gherkin" -GtdFileNamePattern "*.csv" -NonExecutableRules "50" -RecommendedTestCases -OutGherkin "ItemBuilderEngine.testcases.feature"
# 
# Aktueller Benutzer: dschweie
# Aktuelles Verzeichnis (user.dir): "E:\data\schweier\rbtfrmwrk\robotframework-syndata"
# Benötigte Zeit: 00:00:00.820 (10.03.2026 16:01:05.532 - 10.03.2026 16:01:06.352)
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
      | item           | item_data | keyword    |
      | address.street | {}        | Get Street |
    Then  the result for "address.street" should match "^\S.+$"
    *     rule "1" of "9" from decision table "ItemBuilderEngine" has been executed
    *     rule from decision table "ItemBuilderEngineGermany" has been executed

  @recommended
  Scenario: 0002 ItemBuilderEngine
    ItemBuilderEngine
    R02 : B01 Current Mode = DEF ; B02 Context is = None ; B06 Localization = *
    Given SynData is in "default" mode and the localization is "sv_SE"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     no context is set
    When  the builder engine is called:
      | item              | item_data | keyword        |
      | person.first_name | {}        | Get First Name |
    Then  the result for "person.first_name" should match "^\S[^\d]+$"
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
      | data_json |
      | {}        |
    When  the builder engine is called:
      | item            | item_data | keyword     |
      | address.address | {}        | Get Address |
    Then  the result for "address.address" should match "^\S.+\s\d+[A-Ha-h]?(\r\n?|\n)\d{5}\s.+$"
    *     rule "3" of "9" from decision table "ItemBuilderEngine" has been executed
    *     rule from decision table "ItemBuilderEngineGermany" has been executed
    *     the internal storage for the following items should be checked:
      | data_json                                                                                                                                                                                                                                                                                                                                                                           |
      | {"address.address":"#retval", "address.address_country":"#stored", "address.city":"#stored", "address.country":"#stored", "address.country_code":"#stored", "address.house_number":"#stored", "address.postcode":"#stored", "address.postcode_city":"#stored", "address.state":"#stored", "address.street":"#stored", "address.street_address":"#stored", "location.ags":"#stored"} |

  @recommended
  Scenario: 0004 ItemBuilderEngine
    ItemBuilderEngine
    R04 : B01 Current Mode = DEF ; B02 Context is = Set ; B03 Requested item is = unknown ; B06 Localization = *
    Given SynData is in "default" mode and the localization is "lt_LT"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineR04" with focus "test" and localization "lt_LT" is set
    *     in SynData items are stored
      | data_json                                                       |
      | {"person.first_name":"Evaldas", "person.last_name":"Kalvaitis"} |
    When  the builder engine is called:
      | item        | item_data | keyword  |
      | person.name | {}        | Get Name |
    Then  the result for "person.name" should match "^Evaldas Kalvaitis$"
    *     rule "4" of "9" from decision table "ItemBuilderEngine" has been executed
    *     rule from decision table "ItemBuilderEngineFaker" has been executed
    *     the internal storage for the following items should be checked:
      | data_json                                                                                |
      | {"person.first_name":"Evaldas", "person.last_name":"Kalvaitis", "person.name":"#retval"} |

  @recommended
  Scenario: 0005 ItemBuilderEngine
    ItemBuilderEngine
    R05 : B01 Current Mode = DEF ; B02 Context is = Set ; B03 Requested item is = known
    Given SynData is in "default" mode and the localization is "pt_PT"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineR05" with focus "test" and localization "pt_PT" is set
    *     in SynData items are stored
      | data_json                      |
      | {"person.last_name":"Barbosa"} |
    *     the builder engine is called:
      | item        | item_data | keyword  |
      | person.name | {}        | Get Name |
    When  the builder engine is called:
      | item        | item_data | keyword  |
      | person.name | {}        | Get Name |
    Then  the result for "person.name" should match "^\S[^\d]+\sBarbosa$"
    *     rule "5" of "9" from decision table "ItemBuilderEngine" has been executed
    *     the internal storage for the following items should be checked:
      | data_json                                                                              |
      | {"person.first_name":"#stored", "person.last_name":"Barbosa", "person.name":"#retval"} |

  @recommended
  Scenario: 0006 ItemBuilderEngine
    ItemBuilderEngine
    R06 : B01 Current Mode = REP ; B04 Comparison current test case vs recorded test case = equal ; B05 Comparison current item vs recorded item = equal
    Given SynData is configured with:
      | mode   | replay_file             | localization | logging |
      | replay | replay_file_gherkin.csv | de_DE        | True    |
    *     the replay file contains the following data:
      | item                 | value | test_suite | test_case | keyword          |
      | address.house_number |    24 | #current   | #current  | Get House Number |
    *     data for given test case is read
    When  the builder engine is called:
      | item                 | item_data | keyword          |
      | address.house_number | {}        | Get House Number |
    Then  the result for "address.house_number" should be equal to "24"
    *     rule "6" of "9" from decision table "ItemBuilderEngine" has been executed

  @recommended
  Scenario: 0007 ItemBuilderEngine
    ItemBuilderEngine
    R07 : B01 Current Mode = REP ; B04 Comparison current test case vs recorded test case = equal ; B05 Comparison current item vs recorded item = unequal ; B06 Localization = de_DE
    Given SynData is configured with:
      | mode   | replay_file             | localization | logging |
      | replay | replay_file_gherkin.csv | de_DE        | True    |
    *     the replay file contains the following data:
      | item           | value      | test_suite | test_case | keyword    |
      | address.street | Dorfstraße | #current   | #current  | Get Street |
    *     data for given test case is read
    When  the builder engine is called:
      | item        | item_data | keyword  |
      | person.name | {}        | Get Name |
    Then  the result for "person.name" should match "^\S[^\d]+\s[^\d]+$"
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
      | item        | value        | test_suite | test_case | keyword  |
      | person.name | Drew Richard | #current   | #current  | Get Name |
    *     data for given test case is read
    When  the builder engine is called:
      | item           | item_data | keyword    |
      | address.street | {}        | Get Street |
    Then  the result for "address.street" should match "^(.+((\r\n?|\n))?)+$"
    *     rule "8" of "9" from decision table "ItemBuilderEngine" has been executed
    *     rule from decision table "ItemBuilderEngineFaker" has been executed
    *     the "warning" with id "SynData.NOREP" must be in the internal log

  @recommended
  Scenario: 0009 ItemBuilderEngine
    ItemBuilderEngine
    R09 : B01 Current Mode = REP ; B04 Comparison current test case vs recorded test case = unequal
    Given SynData is configured with:
      | mode   | replay_file             | localization | logging |
      | replay | replay_file_gherkin.csv | de_DE        | True    |
    *     the replay file contains the following data:
      | item             | value    | test_suite | test_case            | keyword       |
      | person.last_name | Leonhard | #current   | 4711 Dummy Test Case | Get Last Name |
    When  the builder engine is called:
      | item            | item_data | keyword     |
      | address.country | {}        | Get Country |
    Then  the result for "address.country" should match "^\S.+$"
    *     rule "9" of "9" from decision table "ItemBuilderEngine" has been executed

### end of generated test cases ###