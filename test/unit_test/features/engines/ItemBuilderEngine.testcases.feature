# Diese Datei wurde erzeugt durch LF-ET 2.4.1 (260304a) und Kommandozeile:
# -GenTest "./lfet/ItemBuilderEngine.lfet" -Group "gherkin" -Config "unit tests" -GtdDirectory "./testdata/gherkin" -GtdFileNamePattern "*.csv" -NonExecutableRules "50" -RecommendedTestCases -OutGherkin "ItemBuilderEngine.testcases.feature"
# 
# Aktueller Benutzer: dschweie
# Aktuelles Verzeichnis (user.dir): "E:\data\schweier\rbtfrmwrk\robotframework-syndata"
# Benötigte Zeit: 00:00:00.732 (14.03.2026 12:59:21.872 - 14.03.2026 12:59:22.604)
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
#            Erfolgreich eingelesen: GherkinItems_com, 184 Sätze, Encoding UTF-8
#         E:\data\schweier\rbtfrmwrk\robotframework-syndata\lfet\testdata\gherkin\items_de.csv
#            Erfolgreich eingelesen: GherkinItems_de, 70 Sätze, Encoding UTF-8
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
      | item                 | item_data | keyword    |
      | communication.mobile | {}        | Get Mobile |
    Then  the result for "communication.mobile" should match "^[+]49\s\d+\s\d+$"
    *     rule "1" of "9" from decision table "ItemBuilderEngine" has been executed
    *     rule from decision table "ItemBuilderEngineGermany" has been executed

  @recommended
  Scenario: 0002 ItemBuilderEngine
    ItemBuilderEngine
    R02 : B01 Current Mode = DEF ; B02 Context is = None ; B06 Localization = *
    Given SynData is in "default" mode and the localization is "pt_PT"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     no context is set
    When  the builder engine is called:
      | item              | item_data | keyword  |
      | finance.bank_name | {}        | Get Bank |
    Then  the result for "finance.bank_name" should match "^.*$"
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
      | {"location.ags":"09575138"} |
    When  the builder engine is called:
      | item          | item_data | keyword   |
      | address.state | {}        | Get State |
    Then  the result for "address.state" should match "^Bayern$"
    *     rule "3" of "9" from decision table "ItemBuilderEngine" has been executed
    *     rule from decision table "ItemBuilderEngineGermany" has been executed
    *     the internal storage for the following items should be checked:
      | data_json                                                                                                                                                                                                                                                                                                                                                                        |
      | {"address.address":"#stored", "address.address_country":"#stored", "address.city":"Langenfeld", "address.country":"#stored", "address.country_code":"DE", "address.house_number":"#stored", "address.postcode":"91474", "address.postcode_city":"#stored", "address.state":"#retval", "address.street":"#stored", "address.street_address":"#stored", "location.ags":"09575138"} |

  @recommended
  Scenario: 0004 ItemBuilderEngine
    ItemBuilderEngine
    R04 : B01 Current Mode = DEF ; B02 Context is = Set ; B03 Requested item is = unknown ; B06 Localization = *
    Given SynData is in "default" mode and the localization is "de_CH"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineR04" with focus "test" and localization "de_CH" is set
    *     in SynData items are stored
      | data_json                                                |
      | {"person.first_name":"Urban", "person.last_name":"Aebi"} |
    When  the builder engine is called:
      | item                | item_data | keyword   |
      | communication.email | {}        | Get EMail |
    Then  the result for "communication.email" should match "^.+@rf-syndata\.net"
    *     rule "4" of "9" from decision table "ItemBuilderEngine" has been executed
    *     rule from decision table "ItemBuilderEngineFaker" has been executed
    *     the internal storage for the following items should be checked:
      | data_json                                                                                                          |
      | {"communication.email":"#retval", "person.first_name":"Urban", "person.last_name":"Aebi", "person.name":"#stored"} |

  @recommended
  Scenario: 0005 ItemBuilderEngine
    ItemBuilderEngine
    R05 : B01 Current Mode = DEF ; B02 Context is = Set ; B03 Requested item is = known
    Given SynData is in "default" mode and the localization is "fr_FR"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineR05" with focus "test" and localization "fr_FR" is set
    *     in SynData items are stored
      | data_json |
      | {}        |
    *     the builder engine is called:
      | item          | item_data | keyword   |
      | address.state | {}        | Get State |
    When  the builder engine is called:
      | item          | item_data | keyword   |
      | address.state | {}        | Get State |
    Then  the result for "address.state" should match "^(.*((\r\n?|\n))?)+$"
    *     rule "5" of "9" from decision table "ItemBuilderEngine" has been executed
    *     the internal storage for the following items should be checked:
      | data_json                   |
      | {"address.state":"#retval"} |

  @recommended
  Scenario: 0006 ItemBuilderEngine
    ItemBuilderEngine
    R06 : B01 Current Mode = REP ; B04 Comparison current test case vs recorded test case = equal ; B05 Comparison current item vs recorded item = equal
    Given SynData is configured with:
      | mode   | replay_file             | localization | logging |
      | replay | replay_file_gherkin.csv | en_US        | True    |
    *     the replay file contains the following data:
      | item             | value       | test_suite | test_case | keyword |
      | finance.bank_bic | CITGUSA1XXX | #current   | #current  | Get Bic |
    *     data for given test case is read
    When  the builder engine is called:
      | item             | item_data | keyword |
      | finance.bank_bic | {}        | Get Bic |
    Then  the result for "finance.bank_bic" should be equal to "CITGUSA1XXX"
    *     rule "6" of "9" from decision table "ItemBuilderEngine" has been executed

  @recommended
  Scenario: 0007 ItemBuilderEngine
    ItemBuilderEngine
    R07 : B01 Current Mode = REP ; B04 Comparison current test case vs recorded test case = equal ; B05 Comparison current item vs recorded item = unequal ; B06 Localization = de_DE
    Given SynData is configured with:
      | mode   | replay_file             | localization | logging |
      | replay | replay_file_gherkin.csv | de_DE        | True    |
    *     the replay file contains the following data:
      | item              |                  value | test_suite | test_case | keyword  |
      | finance.bank_iban | DE39666923008322024858 | #current   | #current  | Get Iban |
    *     data for given test case is read
    When  the builder engine is called:
      | item             | item_data | keyword      |
      | address.postcode | {}        | Get Postcode |
    Then  the result for "address.postcode" should match "^\d{5}$"
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
      | item             | item_data | keyword      |
      | address.postcode | {}        | Get Postcode |
    Then  the result for "address.postcode" should match "^(.+((\r\n?|\n))?)+$"
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
      | item                  | value          | test_suite | test_case            | keyword               |
      | address.postcode_city | 85445 Oberding | #current   | 4711 Dummy Test Case | Get Postcode And City |
    When  the builder engine is called:
      | item         | item_data | keyword  |
      | address.city | {}        | Get City |
    Then  the result for "address.city" should match "^(.+((\r\n?|\n))?)+$"
    *     rule "9" of "9" from decision table "ItemBuilderEngine" has been executed

### end of generated test cases ###