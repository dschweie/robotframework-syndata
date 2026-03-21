# Diese Datei wurde erzeugt durch LF-ET 2.4.1 (260304a) und Kommandozeile:
# -GenTest "./lfet/ItemBuilderEngine.lfet" -Group "gherkin" -Config "unit tests" -GtdDirectory "./testdata/gherkin" -GtdFileNamePattern "*.csv" -NonExecutableRules "50" -RecommendedTestCases -OutGherkin "ItemBuilderEngine.testcases.feature"
# 
# Aktueller Benutzer: dschweie
# Aktuelles Verzeichnis (user.dir): "E:\data\schweier\rbtfrmwrk\robotframework-syndata"
# Benötigte Zeit: 00:00:00.850 (21.03.2026 13:43:55.549 - 21.03.2026 13:43:56.399)
# 
# Entscheidungstabelle: E:\data\schweier\rbtfrmwrk\robotframework-syndata\.\lfet\ItemBuilderEngine.lfet
# 
# Regelauswahl und Regelsortierung: Alle Regeln, Standardsortierung
# 
# TestValueGroups: gherkin, *ti.att.gherkin, *ti.gtd.gherkin
# Config: unit tests
# 
# Testfälle mit Fehlern: 1
# 
#     1. Fehler in Testfall 6
#         
#         ItemBuilderEngine
#         | R06 | B01=REP | B04=equal | B05=equal
#         
#         Die dynamisch erzeugte GTD Teilmenge 'replay' enthält keine Datensätze. {(replay, GherkinReplayData, *, 76 Sätze), (replay, replay, test_case = "#current", 38 Sätze), (replay, replay, item = item.item=communication.mobile, 0 Sätze)}  (21.03.2026 13:43:56.196)
# 
# Testfälle mit Warnungen: 0
# 
# Informationen: 1
# 
#     1. E:\data\schweier\rbtfrmwrk\robotframework-syndata\lfet\testdata\gherkin\items_common.csv
#            Erfolgreich eingelesen: GherkinItems_com, 184 Sätze, Encoding UTF-8
#         E:\data\schweier\rbtfrmwrk\robotframework-syndata\lfet\testdata\gherkin\items_de.csv
#            Erfolgreich eingelesen: GherkinItems_de, 73 Sätze, Encoding UTF-8
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
      | item            | item_data | keyword     |
      | address.address | {}        | Get Address |
    Then  the result for "address.address" should match "^\S.+\s\d+[A-Ha-h]?(\r\n?|\n)\d{5}\s.+$"
    *     rule "1" of "9" from decision table "ItemBuilderEngine" has been executed
    *     rule from decision table "ItemBuilderEngineGermany" has been executed

  @recommended
  Scenario: 0002 ItemBuilderEngine
    ItemBuilderEngine
    R02 : B01 Current Mode = DEF ; B02 Context is = None ; B06 Localization = *
    Given SynData is in "default" mode and the localization is "en_AU"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     no context is set
    When  the builder engine is called:
      | item                 | item_data | keyword          |
      | address.country_code | {}        | Get Country Code |
    Then  the result for "address.country_code" should match "^(A[DEFGLMORTUZ])|(B[ABDEFGHIJNORSTWYZ])|(C[ADFGHILMNORUVYZ])|(D[EJKMOZ])|(E[CEGRST])|(F[IJMR])|(G[ABDEHMNQRTWY])|(H[NRTU])|(I[DELNQRST])|(J[MOP])|(K[EGHIMNPRWZ])|(L[ABCIKRSTUVY])|(M[ACDEGHKLMNRTUVWXYZ])|(N[AEGILOPRZ])|(OM)|(P[AEGHKLTWY])|(QA)|(R[OSUW])|(S[ABCDEGIKLMNORSTVYZ])|(T[DGHJLMNORTVZ])|(U[AGSYZ])|(V[CENU])|(WS)|(YE)|(Z[AMW])$"
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
      | data_json          |
      | {"person.sex":"f"} |
    When  the builder engine is called:
      | item              | item_data | keyword        |
      | person.first_name | {}        | Get First Name |
    Then  the result for "person.first_name" should match "^\S[^\d]+$"
    *     rule "3" of "9" from decision table "ItemBuilderEngine" has been executed
    *     rule from decision table "ItemBuilderEngineGermany" has been executed
    *     the internal storage for the following items should be checked:
      | data_json                                         |
      | {"person.first_name":"#retval", "person.sex":"f"} |

  @recommended
  Scenario: 0004 ItemBuilderEngine
    ItemBuilderEngine
    R04 : B01 Current Mode = DEF ; B02 Context is = Set ; B03 Requested item is = unknown ; B06 Localization = *
    Given SynData is in "default" mode and the localization is "da_DK"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineR04" with focus "test" and localization "da_DK" is set
    *     in SynData items are stored
      | data_json                      |
      | {"person.first_name":"Mogens"} |
    When  the builder engine is called:
      | item                | item_data | keyword   |
      | communication.email | {}        | Get EMail |
    Then  the result for "communication.email" should match "^.+@rf-syndata\.net"
    *     rule "4" of "9" from decision table "ItemBuilderEngine" has been executed
    *     rule from decision table "ItemBuilderEngineFaker" has been executed
    *     the internal storage for the following items should be checked:
      | data_json                                                                                                              |
      | {"communication.email":"#retval", "person.first_name":"Mogens", "person.last_name":"#stored", "person.name":"#stored"} |

  @recommended
  Scenario: 0005 ItemBuilderEngine
    ItemBuilderEngine
    R05 : B01 Current Mode = DEF ; B02 Context is = Set ; B03 Requested item is = known
    Given SynData is in "default" mode and the localization is "no_NO"
    *     that logging for SynData should be done in "SynData-unit_test"
    *     in SynData the context "ItemBuilderEngineR05" with focus "test" and localization "no_NO" is set
    *     in SynData items are stored
      | data_json                                                 |
      | {"person.first_name":"Anette", "person.last_name":"Aune"} |
    *     the builder engine is called:
      | item                | item_data | keyword   |
      | communication.email | {}        | Get EMail |
    When  the builder engine is called:
      | item                | item_data | keyword   |
      | communication.email | {}        | Get EMail |
    Then  the result for "communication.email" should match "^.+@rf-syndata\.net"
    *     rule "5" of "9" from decision table "ItemBuilderEngine" has been executed
    *     the internal storage for the following items should be checked:
      | data_json                                                                                                           |
      | {"communication.email":"#retval", "person.first_name":"Anette", "person.last_name":"Aune", "person.name":"#stored"} |

  @incomplete @recommended
  Scenario: 0006 ItemBuilderEngine
    ItemBuilderEngine
    R06 : B01 Current Mode = REP ; B04 Comparison current test case vs recorded test case = equal ; B05 Comparison current item vs recorded item = equal    messages:
    # Die dynamisch erzeugte GTD Teilmenge 'replay' enthält keine Datensätze. {(replay, GherkinReplayData, *, 76 Sätze), (replay, replay, test_case = "#current", 38 Sätze), (replay, replay, item = item.item=communication.mobile, 0 Sätze)}  (21.03.2026 13:43:56.196)

  @recommended
  Scenario: 0007 ItemBuilderEngine
    ItemBuilderEngine
    R07 : B01 Current Mode = REP ; B04 Comparison current test case vs recorded test case = equal ; B05 Comparison current item vs recorded item = unequal ; B06 Localization = de_DE
    Given SynData is configured with:
      | mode   | replay_file             | localization | logging |
      | replay | replay_file_gherkin.csv | de_DE        | True    |
    *     the replay file contains the following data:
      | item                   | value          | test_suite | test_case | keyword                     |
      | address.street_address | Rathausplatz 1 | #current   | #current  | Get Street And House Number |
    *     data for given test case is read
    When  the builder engine is called:
      | item            | item_data | keyword     |
      | address.country | {}        | Get Country |
    Then  the result for "address.country" should match "^\S.+$"
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
      | item        | value          | test_suite | test_case | keyword  |
      | person.name | Caitlin Dalton | #current   | #current  | Get Name |
    *     data for given test case is read
    When  the builder engine is called:
      | item            | item_data | keyword     |
      | address.address | {}        | Get Address |
    Then  the result for "address.address" should match "^(.+((\r\n?|\n))?)+$"
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
      | item              | value | test_suite | test_case            | keyword        |
      | person.first_name | Ellen | #current   | 4711 Dummy Test Case | Get First Name |
    When  the builder engine is called:
      | item                | item_data | keyword   |
      | communication.email | {}        | Get EMail |
    Then  the result for "communication.email" should match "^.+@rf-syndata\.org"
    *     rule "9" of "9" from decision table "ItemBuilderEngine" has been executed

### end of generated test cases ###