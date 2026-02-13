*** Settings ***

Documentation     Diese Datei wurde erzeugt durch LF-ET 2.4.1 (260127a) und Kommandozeile:
...     | 
...     | -GenTest "./lfet/ItemBuilderEngineGermany.lfet" -Group "robot" -Config "acceptance tests" -GtdDirectory "testdata" -GtdFileNamePattern "*.csv" -NonExecutableRules "50" -RecommendedTestCases -ExportRobotFramework "../test/acceptance_test/lfet/ItemBuilderEngineGermany.testcases.robot"
...     | 
...     | Aktueller Benutzer: dschweie
...     | Aktuelles Verzeichnis (user.dir): "E:\data\schweier\rbtfrmwrk\robotframework-syndata"
...     | Benötigte Zeit: 00:00:00.452 (13.02.2026 15:13:07.755 - 13.02.2026 15:13:08.207)
...     | 
...     | Entscheidungstabelle: E:\data\schweier\rbtfrmwrk\robotframework-syndata\.\lfet\ItemBuilderEngineGermany.lfet
...     | 
...     | Regelauswahl und Regelsortierung: Alle Regeln, Standardsortierung
...     | 
...     | TestValueGroups: robot, *ti.att.robot, *ti.gtd.robot, *ti.check.robot
...     | Config: acceptance tests
...     | 
...     | Testfälle mit Fehlern: 0
...     | 
...     | Testfälle mit Warnungen: 0
...     | 
...     | Informationen: 1
...     | 
...     | \ \ \ \ 1. E:\data\schweier\rbtfrmwrk\robotframework-syndata\lfet\testdata\germany_keywords.csv
...     | \ \ \ \ \ \ \ \ \ \ \ Erfolgreich eingelesen: Keywords, 17 Sätze
...     | \ \ \ \ \ \ \ \ E:\data\schweier\rbtfrmwrk\robotframework-syndata\lfet\testdata\localizations.csv
...     | \ \ \ \ \ \ \ \ \ \ \ Erfolgreich eingelesen: localizations, 26 Sätze
...     | 

Library    SynData
Suite Setup    Set SynData Configuration   mode=default    localization=de_DE    logging=${True}
Test Setup    Release Context

*** Test Cases ***

0001 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R01 | B01 Context is = None | B02 Domain of the item is = address | B04 Requested item code of domain "address" = address.address
     [Tags]     recommended
     ${output}    Get Address
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+\\s\\d\\d?\\d?[A-Ha-h]?(\\r\\n?|\\n)\\d{5}\\s.+$

0002 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R02 | B01 Context is = None | B02 Domain of the item is = address | B04 Requested item code of domain "address" = address.address_country
     [Tags]     recommended
     ${output}    Get Address And Country
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+\\s\\d\\d?\\d?[A-Ha-h]?(\\r\\n?|\\n)\\d{5}\\s.+(\\r\\n?|\\n)Deutschland$

0003 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R03 | B01 Context is = None | B02 Domain of the item is = address | B04 Requested item code of domain "address" = address.street_address
     [Tags]     recommended
     ${output}    Get Street And House Number
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+\\s\\d\\d?\\d?[A-Ha-h]?$

0004 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R04 | B01 Context is = None | B02 Domain of the item is = address | B04 Requested item code of domain "address" = address.street
     [Tags]     recommended
     ${output}    Get Street
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+$

0005 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R05 | B01 Context is = None | B02 Domain of the item is = address | B04 Requested item code of domain "address" = address.house_number
     [Tags]     recommended
     ${output}    Get House Number
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\d\\d?\\d?[A-Ha-h]?$

0006 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R06 | B01 Context is = None | B02 Domain of the item is = address | B04 Requested item code of domain "address" = address.postcode_city
     [Tags]     recommended
     ${output}    Get Postcode And City
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\d{5}\\s.+$

0007 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R07 | B01 Context is = None | B02 Domain of the item is = address | B04 Requested item code of domain "address" = address.postcode
     [Tags]     recommended
     ${output}    Get Postcode
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\d{5}$

0008 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R08 | B01 Context is = None | B02 Domain of the item is = address | B04 Requested item code of domain "address" = address.city
     [Tags]     recommended
     ${output}    Get City
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+$

0009 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R09 | B01 Context is = None | B02 Domain of the item is = address | B04 Requested item code of domain "address" = address.state
     [Tags]     recommended
     ${output}    Get State
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+$

0010 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R10 | B01 Context is = None | B02 Domain of the item is = address | B04 Requested item code of domain "address" = address.country
     [Tags]     recommended
     ${output}    Get Country
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+$

0011 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R11 | B01 Context is = None | B02 Domain of the item is = address | B04 Requested item code of domain "address" = address.country_code
     [Tags]     recommended
     ${output}    Get Country Code
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^(A[DEFGLMORTUZ])|(B[ABDEFGHIJNORSTWYZ])|(C[ADFGHILMNORUVYZ])|(D[EJKMOZ])|(E[CEGRST])|(F[IJMR])|(G[ABDEHMNQRTWY])|(H[NRTU])|(I[DELNQRST])|(J[MOP])|(K[EGHIMNPRWZ])|(L[ABCIKRSTUVY])|(M[ACDEGHKLMNRTUVWXYZ])|(N[AEGILOPRZ])|(OM)|(P[AEGHKLTWY])|(QA)|(R[OSUW])|(S[ABCDEGIKLMNORSTVYZ])|(T[DGHJLMNORTVZ])|(U[AGSYZ])|(V[CENU])|(WS)|(YE)|(Z[AMW])$

0012 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R12 | B01 Context is = None | B02 Domain of the item is = person | B03 Requested item code of domain "person" = person.name
     [Tags]     recommended
     ${output}    Get Name
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S[^\\d]+\\s[^\\d]+$

0013 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R13 | B01 Context is = None | B02 Domain of the item is = person | B03 Requested item code of domain "person" = person.first_name
     [Tags]     recommended
     ${output}    Get First Name
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S[^\\d]+$

0014 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R14 | B01 Context is = None | B02 Domain of the item is = person | B03 Requested item code of domain "person" = person.last_name
     [Tags]     recommended
     ${output}    Get Last Name
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S[^\\d]+$

0015 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R15 | B01 Context is = Set | B02 Domain of the item is = address
     [Tags]     recommended
     Set Context    TestCaseR15    de_DE    focus=test
     ${output}    Get Address And Country
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+\\s\\d\\d?\\d?[A-Ha-h]?(\\r\\n?|\\n)\\d{5}\\s.+(\\r\\n?|\\n)Deutschland$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get Address And Country
     Should Be Equal As Strings    ${output}    ${repetition}

0016 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R16 | B01 Context is = Set | B02 Domain of the item is = person | B03 Requested item code of domain "person" = person.name | B05 Item person.first_name is = unknown | B06 Item person.last_name is = unknown
     [Tags]     recommended
     Set Context    TestCaseR16    de_DE    focus=test
     ${output}    Get Name
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S[^\\d]+\\s[^\\d]+$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get Name
     Should Be Equal As Strings    ${output}    ${repetition}

0017 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R17 | B01 Context is = Set | B02 Domain of the item is = person | B03 Requested item code of domain "person" = person.name | B05 Item person.first_name is = unknown | B06 Item person.last_name is = known
     [Tags]     recommended
     Set Context    TestCaseR17    de_DE    focus=test
     # last name should be known and is pre-assigned.
     ${last_name}    Get Last Name
     ${output}    Get Name
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S[^\\d]+\\s${last_name}$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get Name
     Should Be Equal As Strings    ${output}    ${repetition}

0018 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R18 | B01 Context is = Set | B02 Domain of the item is = person | B03 Requested item code of domain "person" = person.name | B05 Item person.first_name is = known | B06 Item person.last_name is = unknown
     [Tags]     recommended
     Set Context    TestCaseR18    de_DE    focus=test
     # First name should be known and is pre-assigned.
     ${first_name}    Get First Name
     ${output}    Get Name
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^${first_name}\\s[^\\d]+$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get Name
     Should Be Equal As Strings    ${output}    ${repetition}

0019 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R19 | B01 Context is = Set | B02 Domain of the item is = person | B03 Requested item code of domain "person" = person.name | B05 Item person.first_name is = known | B06 Item person.last_name is = known
     [Tags]     recommended
     Set Context    TestCaseR19    de_DE    focus=test
     # First name should be known and is pre-assigned.
     ${first_name}    Get First Name
     # last name should be known and is pre-assigned.
     ${last_name}    Get Last Name
     ${output}    Get Name
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^${first_name}\\s${last_name}$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get Name
     Should Be Equal As Strings    ${output}    ${repetition}

0020 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R20 | B01 Context is = Set | B02 Domain of the item is = person | B03 Requested item code of domain "person" = person.first_name
     [Tags]     recommended
     Set Context    TestCaseR20    de_DE    focus=test
     ${output}    Get First Name
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S[^\\d]+$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get First Name
     Should Be Equal As Strings    ${output}    ${repetition}

0021 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R21 | B01 Context is = Set | B02 Domain of the item is = person | B03 Requested item code of domain "person" = person.last_name
     [Tags]     recommended
     Set Context    TestCaseR21    de_DE    focus=test
     ${output}    Get Last Name
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S[^\\d]+$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get Last Name
     Should Be Equal As Strings    ${output}    ${repetition}

### end of generated test cases ###