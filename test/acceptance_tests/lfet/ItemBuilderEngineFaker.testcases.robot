*** Settings ***

Documentation     Diese Datei wurde erzeugt durch LF-ET 2.4.1 (260127a) und Kommandozeile:
...     | 
...     | -GenTest "E:/data/schweier/rbtfrmwrk/SynData/lfet/ItemBuilderEngineFaker.lfet" -Group "robot" -GtdDirectory "./testdata/" -GtdFileNamePattern "*.csv" -NonExecutableRules "50" -RecommendedTestCases -ExportRobotFramework "../test/acceptance_tests/lfet/ItemBuilderEngineFaker.testcases.robot"
...     | 
...     | Aktueller Benutzer: dschweie
...     | Aktuelles Verzeichnis (user.dir): "E:\tools\testing\LF-ET"
...     | Benötigte Zeit: 00:00:00.068 (09.02.2026 13:39:13.707 - 09.02.2026 13:39:13.775)
...     | 
...     | Entscheidungstabelle: E:\data\schweier\rbtfrmwrk\SynData\lfet\ItemBuilderEngineFaker.lfet
...     | 
...     | Regelauswahl und Regelsortierung: Alle Regeln, Standardsortierung
...     | 
...     | TestValueGroups: robot, *ti.att.robot, *ti.gtd.robot, *ti.check.robot
...     | Config: 
...     | 
...     | Testfälle mit Fehlern: 0
...     | 
...     | Testfälle mit Warnungen: 0
...     | 
...     | Informationen: 1
...     | 
...     | \ \ \ \ 1. E:\data\schweier\rbtfrmwrk\SynData\lfet\testdata\germany_keywords.csv
...     | \ \ \ \ \ \ \ \ \ \ \ Erfolgreich eingelesen: Keywords, 17 Sätze
...     | \ \ \ \ \ \ \ \ E:\data\schweier\rbtfrmwrk\SynData\lfet\testdata\localizations.csv
...     | \ \ \ \ \ \ \ \ \ \ \ Erfolgreich eingelesen: localizations, 26 Sätze
...     | 

Library    ../src/SynData/SynData.py
Suite Setup    Set SynData Configuration   mode=default    localization=de_CH    logging=${True}
Test Setup    Release Context

*** Test Cases ***

0001 ItemBuilderEngineFaker 
     [Documentation]     ItemBuilderEngineFaker
     ...     | R01 | B01 Context is = None | B02 Requestes item code = address.address
     [Tags]     recommended
     ${output}    Get Address
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+((\\r\\n?|\\n)\\S)?.+$

0002 ItemBuilderEngineFaker 
     [Documentation]     ItemBuilderEngineFaker
     ...     | R02 | B01 Context is = None | B02 Requestes item code = address.address_country
     [Tags]     recommended
     ${output}    Get Address And Country
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+((\\r\\n?|\\n)\\S)?.+((\\r\\n?|\\n)\\S)?.+$

0003 ItemBuilderEngineFaker 
     [Documentation]     ItemBuilderEngineFaker
     ...     | R03 | B01 Context is = None | B02 Requestes item code = address.street_address
     [Tags]     recommended
     ${output}    Get Street And House Number
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+$

0004 ItemBuilderEngineFaker 
     [Documentation]     ItemBuilderEngineFaker
     ...     | R04 | B01 Context is = None | B02 Requestes item code = address.street
     [Tags]     recommended
     ${output}    Get Street
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+$

0005 ItemBuilderEngineFaker 
     [Documentation]     ItemBuilderEngineFaker
     ...     | R05 | B01 Context is = None | B02 Requestes item code = address.house_number
     [Tags]     recommended
     ${output}    Get House Number
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+$

0006 ItemBuilderEngineFaker 
     [Documentation]     ItemBuilderEngineFaker
     ...     | R06 | B01 Context is = None | B02 Requestes item code = address.postcode_city
     [Tags]     recommended
     ${output}    Get Postcode And City
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+$

0007 ItemBuilderEngineFaker 
     [Documentation]     ItemBuilderEngineFaker
     ...     | R07 | B01 Context is = None | B02 Requestes item code = address.postcode
     [Tags]     recommended
     ${output}    Get Postcode
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+$

0008 ItemBuilderEngineFaker 
     [Documentation]     ItemBuilderEngineFaker
     ...     | R08 | B01 Context is = None | B02 Requestes item code = address.city
     [Tags]     recommended
     ${output}    Get City
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+$

0009 ItemBuilderEngineFaker 
     [Documentation]     ItemBuilderEngineFaker
     ...     | R09 | B01 Context is = None | B02 Requestes item code = address.state
     [Tags]     recommended     robot:exclude
     ${output}    Get State
     # The test case is considered skipped at this point because the keyword is not supported in the environment.
     Skip
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+$

0010 ItemBuilderEngineFaker 
     [Documentation]     ItemBuilderEngineFaker
     ...     | R10 | B01 Context is = None | B02 Requestes item code = address.country
     [Tags]     recommended
     ${output}    Get Country
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+$

0011 ItemBuilderEngineFaker 
     [Documentation]     ItemBuilderEngineFaker
     ...     | R11 | B01 Context is = None | B02 Requestes item code = address.country_code
     [Tags]     recommended
     ${output}    Get Country Code
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^(A[DEFGLMORTUZ])|(B[ABDEFGHIJNORSTWYZ])|(C[ADFGHILMNORUVYZ])|(D[EJKMOZ])|(E[CEGRST])|(F[IJMR])|(G[ABDEHMNQRTWY])|(H[NRTU])|(I[DELNQRST])|(J[MOP])|(K[EGHIMNPRWZ])|(L[ABCIKRSTUVY])|(M[ACDEGHKLMNRTUVWXYZ])|(N[AEGILOPRZ])|(OM)|(P[AEGHKLTWY])|(QA)|(R[OSUW])|(S[ABCDEGIKLMNORSTVYZ])|(T[DGHJLMNORTVZ])|(U[AGSYZ])|(V[CENU])|(WS)|(YE)|(Z[AMW])$

0012 ItemBuilderEngineFaker 
     [Documentation]     ItemBuilderEngineFaker
     ...     | R12 | B01 Context is = None | B02 Requestes item code = person.name
     [Tags]     recommended
     ${output}    Get Name
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S[^\\d]+\\s[^\\d]+$

0013 ItemBuilderEngineFaker 
     [Documentation]     ItemBuilderEngineFaker
     ...     | R13 | B01 Context is = None | B02 Requestes item code = person.first_name
     [Tags]     recommended
     ${output}    Get First Name
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S[^\\d]+$

0014 ItemBuilderEngineFaker 
     [Documentation]     ItemBuilderEngineFaker
     ...     | R14 | B01 Context is = None | B02 Requestes item code = person.last_name
     [Tags]     recommended
     ${output}    Get Last Name
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S[^\\d]+$

0015 ItemBuilderEngineFaker 
     [Documentation]     ItemBuilderEngineFaker
     ...     | R15 | B01 Context is = Set | B02 Requestes item code = address.address
     [Tags]     recommended
     Set Context    TestCaseR15    en_AU    focus=test
     ${output}    Get Address
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+((\\r\\n?|\\n)\\S)?.+$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get Address
     Should Be Equal As Strings    ${output}    ${repetition}

0016 ItemBuilderEngineFaker 
     [Documentation]     ItemBuilderEngineFaker
     ...     | R16 | B01 Context is = Set | B02 Requestes item code = address.address_country
     [Tags]     recommended
     Set Context    TestCaseR16    es_AR    focus=test
     ${output}    Get Address And Country
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+((\\r\\n?|\\n)\\S)?.+((\\r\\n?|\\n)\\S)?.+$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get Address And Country
     Should Be Equal As Strings    ${output}    ${repetition}

0017 ItemBuilderEngineFaker 
     [Documentation]     ItemBuilderEngineFaker
     ...     | R17 | B01 Context is = Set | B02 Requestes item code = address.street_address
     [Tags]     recommended
     Set Context    TestCaseR17    sv_SE    focus=test
     ${output}    Get Street And House Number
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get Street And House Number
     Should Be Equal As Strings    ${output}    ${repetition}

0018 ItemBuilderEngineFaker 
     [Documentation]     ItemBuilderEngineFaker
     ...     | R18 | B01 Context is = Set | B02 Requestes item code = address.street
     [Tags]     recommended
     Set Context    TestCaseR18    no_NO    focus=test
     ${output}    Get Street
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get Street
     Should Be Equal As Strings    ${output}    ${repetition}

0019 ItemBuilderEngineFaker 
     [Documentation]     ItemBuilderEngineFaker
     ...     | R19 | B01 Context is = Set | B02 Requestes item code = address.house_number
     [Tags]     recommended
     Set Context    TestCaseR19    nl_NL    focus=test
     ${output}    Get House Number
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get House Number
     Should Be Equal As Strings    ${output}    ${repetition}

0020 ItemBuilderEngineFaker 
     [Documentation]     ItemBuilderEngineFaker
     ...     | R20 | B01 Context is = Set | B02 Requestes item code = address.postcode_city
     [Tags]     recommended
     Set Context    TestCaseR20    en_NZ    focus=test
     ${output}    Get Postcode And City
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get Postcode And City
     Should Be Equal As Strings    ${output}    ${repetition}

0021 ItemBuilderEngineFaker 
     [Documentation]     ItemBuilderEngineFaker
     ...     | R21 | B01 Context is = Set | B02 Requestes item code = address.postcode
     [Tags]     recommended
     Set Context    TestCaseR21    no_NO    focus=test
     ${output}    Get Postcode
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get Postcode
     Should Be Equal As Strings    ${output}    ${repetition}

0022 ItemBuilderEngineFaker 
     [Documentation]     ItemBuilderEngineFaker
     ...     | R22 | B01 Context is = Set | B02 Requestes item code = address.city
     [Tags]     recommended
     Set Context    TestCaseR22    sv_SE    focus=test
     ${output}    Get City
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get City
     Should Be Equal As Strings    ${output}    ${repetition}

0023 ItemBuilderEngineFaker 
     [Documentation]     ItemBuilderEngineFaker
     ...     | R23 | B01 Context is = Set | B02 Requestes item code = address.state
     [Tags]     recommended     robot:exclude
     Set Context    TestCaseR23    es_MX    focus=test
     ${output}    Get State
     # The test case is considered skipped at this point because the keyword is not supported in the environment.
     Skip
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get State
     Should Be Equal As Strings    ${output}    ${repetition}

0024 ItemBuilderEngineFaker 
     [Documentation]     ItemBuilderEngineFaker
     ...     | R24 | B01 Context is = Set | B02 Requestes item code = address.country
     [Tags]     recommended
     Set Context    TestCaseR24    en_CA    focus=test
     ${output}    Get Country
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get Country
     Should Be Equal As Strings    ${output}    ${repetition}

0025 ItemBuilderEngineFaker 
     [Documentation]     ItemBuilderEngineFaker
     ...     | R25 | B01 Context is = Set | B02 Requestes item code = address.country_code
     [Tags]     recommended
     Set Context    TestCaseR25    de_AT    focus=test
     ${output}    Get Country Code
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^(A[DEFGLMORTUZ])|(B[ABDEFGHIJNORSTWYZ])|(C[ADFGHILMNORUVYZ])|(D[EJKMOZ])|(E[CEGRST])|(F[IJMR])|(G[ABDEHMNQRTWY])|(H[NRTU])|(I[DELNQRST])|(J[MOP])|(K[EGHIMNPRWZ])|(L[ABCIKRSTUVY])|(M[ACDEGHKLMNRTUVWXYZ])|(N[AEGILOPRZ])|(OM)|(P[AEGHKLTWY])|(QA)|(R[OSUW])|(S[ABCDEGIKLMNORSTVYZ])|(T[DGHJLMNORTVZ])|(U[AGSYZ])|(V[CENU])|(WS)|(YE)|(Z[AMW])$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get Country Code
     Should Be Equal As Strings    ${output}    ${repetition}

0026 ItemBuilderEngineFaker 
     [Documentation]     ItemBuilderEngineFaker
     ...     | R26 | B01 Context is = Set | B02 Requestes item code = person.name | B03 Item person.first_name is = unknown | B04 Item person.last_name is = unknown
     [Tags]     recommended
     Set Context    TestCaseR26    es_AR    focus=test
     ${output}    Get Name
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S[^\\d]+\\s[^\\d]+$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get Name
     Should Be Equal As Strings    ${output}    ${repetition}

0027 ItemBuilderEngineFaker 
     [Documentation]     ItemBuilderEngineFaker
     ...     | R27 | B01 Context is = Set | B02 Requestes item code = person.name | B03 Item person.first_name is = unknown | B04 Item person.last_name is = known
     [Tags]     recommended
     Set Context    TestCaseR27    fi_FI    focus=test
     # last name should be known and is pre-assigned.
     ${last_name}    Get Last Name
     ${output}    Get Name
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S[^\\d]+\\s${last_name}$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get Name
     Should Be Equal As Strings    ${output}    ${repetition}

0028 ItemBuilderEngineFaker 
     [Documentation]     ItemBuilderEngineFaker
     ...     | R28 | B01 Context is = Set | B02 Requestes item code = person.name | B03 Item person.first_name is = known | B04 Item person.last_name is = unknown
     [Tags]     recommended
     Set Context    TestCaseR28    en_US    focus=test
     # First name should be known and is pre-assigned.
     ${first_name}    Get First Name
     ${output}    Get Name
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^${first_name}\\s[^\\d]+$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get Name
     Should Be Equal As Strings    ${output}    ${repetition}

0029 ItemBuilderEngineFaker 
     [Documentation]     ItemBuilderEngineFaker
     ...     | R29 | B01 Context is = Set | B02 Requestes item code = person.name | B03 Item person.first_name is = known | B04 Item person.last_name is = known
     [Tags]     recommended
     Set Context    TestCaseR29    en_AU    focus=test
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

0030 ItemBuilderEngineFaker 
     [Documentation]     ItemBuilderEngineFaker
     ...     | R30 | B01 Context is = Set | B02 Requestes item code = person.first_name
     [Tags]     recommended
     Set Context    TestCaseR30    de_AT    focus=test
     ${output}    Get First Name
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S[^\\d]+$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get First Name
     Should Be Equal As Strings    ${output}    ${repetition}

0031 ItemBuilderEngineFaker 
     [Documentation]     ItemBuilderEngineFaker
     ...     | R31 | B01 Context is = Set | B02 Requestes item code = person.last_name
     [Tags]     recommended
     Set Context    TestCaseR31    en_GB    focus=test
     ${output}    Get Last Name
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S[^\\d]+$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get Last Name
     Should Be Equal As Strings    ${output}    ${repetition}

### end of generated test cases ###