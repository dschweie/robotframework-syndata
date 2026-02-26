*** Settings ***

Documentation
...    *Diese Datei wurde erzeugt durch LF-ET 2.4.1 (260224a)*
...     
...    | *Informationen zur Ausführung* | |
...    | Aktueller Benutzer: | dschweie |
...    | Aktuelles Verzeichnis (user.dir): | "E:/data/schweier/rbtfrmwrk/robotframework-syndata" |
...    | Benötigte Zeit: | 00:00:01.121 (26.02.2026 09:54:56.070 - 26.02.2026 09:54:57.191) |
...    | *Informationen zur Generierung* | |
...    | Kommandozeile: | -GenTest "./lfet/ItemBuilderEngineGermany.lfet" -Group "robot" -Config "acceptance tests" -GtdDirectory "./testdata/de" -GtdFileNamePattern "*.csv" -DDTableName "keyword" -DDLimit "4" -NonExecutableRules "50" -RecommendedTestCases -ExportRobotFramework "../test/acceptance_test/lfet/ItemBuilderEngineGermany.testcases.robot" |
...    | Entscheidungstabelle: | ././lfet/ItemBuilderEngineGermany.lfet |
...    | Regelauswahl und Regelsortierung: | Alle Regeln, Standardsortierung |
...    | TestValueGroups: | robot, *ti.att.robot, *ti.gtd.robot, *ti.check.robot |
...    | Config: | acceptance tests |
...    | Testfälle mit Fehlern:  0 | |
...    | Testfälle mit Warnungen:  0 | |
...    | Informationen:  1 | 1. ./lfet/testdata/de/keywords_de.csv |
...    |  | ⠀⠀⠀⠀Erfolgreich eingelesen: Keywords, 38 Sätze, Encoding UTF-8 |

Library        SynData
Suite Setup    Set SynData Configuration   mode=default    localization=de_DE    logging=${True}
Test Setup     Release Context

*** Test Cases ***

0001 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R01 | B01 Context is = None | B02 Domain of the item is = address | B03 Requested item code of domain "address" = address.address
     [Tags]     ddcount 00     recommended
     ${output}    Get Address
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+\\s\\d\\d?\\d?[A-Ha-h]?(\\r\\n?|\\n)\\d{5}\\s.+$

0002 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R02 | B01 Context is = None | B02 Domain of the item is = address | B03 Requested item code of domain "address" = address.address_country
     [Tags]     ddcount 00     recommended
     ${output}    Get Address And Country
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+\\s\\d\\d?\\d?[A-Ha-h]?(\\r\\n?|\\n)\\d{5}\\s.+(\\r\\n?|\\n)Deutschland$

0003 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R03 | B01 Context is = None | B02 Domain of the item is = address | B03 Requested item code of domain "address" = address.street_address
     [Tags]     ddcount 00     recommended
     ${output}    Get Street And House Number
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+\\s\\d\\d?\\d?[A-Ha-h]?$

0004 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R04 | B01 Context is = None | B02 Domain of the item is = address | B03 Requested item code of domain "address" = address.street
     [Tags]     ddcount 00     recommended
     ${output}    Get Street
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+$

0005 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R05 | B01 Context is = None | B02 Domain of the item is = address | B03 Requested item code of domain "address" = address.house_number
     [Tags]     ddcount 00     recommended
     ${output}    Get House Number
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\d\\d?\\d?[A-Ha-h]?$

0006 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R06 | B01 Context is = None | B02 Domain of the item is = address | B03 Requested item code of domain "address" = address.postcode_city
     [Tags]     ddcount 00     recommended
     ${output}    Get Postcode And City
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\d{5}\\s.+$

0007 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R07 | B01 Context is = None | B02 Domain of the item is = address | B03 Requested item code of domain "address" = address.postcode
     [Tags]     ddcount 00     recommended
     ${output}    Get Postcode
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\d{5}$

0008 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R08 | B01 Context is = None | B02 Domain of the item is = address | B03 Requested item code of domain "address" = address.city
     [Tags]     ddcount 00     recommended
     ${output}    Get City
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+$

0009 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R09 | B01 Context is = None | B02 Domain of the item is = address | B03 Requested item code of domain "address" = address.state
     [Tags]     ddcount 00     recommended
     ${output}    Get State
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+$

0010 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R10 | B01 Context is = None | B02 Domain of the item is = address | B03 Requested item code of domain "address" = address.country
     [Tags]     ddcount 00     recommended
     ${output}    Get Country
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+$

0011 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R11 | B01 Context is = None | B02 Domain of the item is = address | B03 Requested item code of domain "address" = address.country_code
     [Tags]     ddcount 00     recommended
     ${output}    Get Country Code
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^(A[DEFGLMORTUZ])|(B[ABDEFGHIJNORSTWYZ])|(C[ADFGHILMNORUVYZ])|(D[EJKMOZ])|(E[CEGRST])|(F[IJMR])|(G[ABDEHMNQRTWY])|(H[NRTU])|(I[DELNQRST])|(J[MOP])|(K[EGHIMNPRWZ])|(L[ABCIKRSTUVY])|(M[ACDEGHKLMNRTUVWXYZ])|(N[AEGILOPRZ])|(OM)|(P[AEGHKLTWY])|(QA)|(R[OSUW])|(S[ABCDEGIKLMNORSTVYZ])|(T[DGHJLMNORTVZ])|(U[AGSYZ])|(V[CENU])|(WS)|(YE)|(Z[AMW])$

0012 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R12 | B01 Context is = None | B02 Domain of the item is = finance
     [Tags]     datadriven     ddcount 02     r12     recommended     rid58
     ${output}    Get Bank
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^.+$

0013 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R13 | B01 Context is = None | B02 Domain of the item is = person | B04 Requested item code of domain "person" = person.name
     [Tags]     ddcount 00     recommended
     ${output}    Get Name
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S[^\\d]+\\s[^\\d]+$

0014 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R14 | B01 Context is = None | B02 Domain of the item is = person | B04 Requested item code of domain "person" = person.first_name
     [Tags]     ddcount 00     recommended
     ${output}    Get First Name
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S[^\\d]+$

0015 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R15 | B01 Context is = None | B02 Domain of the item is = person | B04 Requested item code of domain "person" = person.last_name
     [Tags]     ddcount 00     recommended
     ${output}    Get Last Name
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S[^\\d]+$

0016 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R16 | B01 Context is = None | B02 Domain of the item is = traffic | B05 Requested item code of domain "traffic" = traffic.license_plate
     [Tags]     datadriven     ddcount 04     r16     recommended     rid79
     ${output}    Get License Plate    state=Thuringia
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=(?!.{11}$)^[A-ZÄÖÜ]{1,3}\\s[A-Z]{1,2}\\s[1-9]\\d{0,3}[EH]?$

0017 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R17 | B01 Context is = Set | B02 Domain of the item is = address | B08 Geographical reference is = unknown
     [Tags]     datadriven     ddcount 04     r17     recommended     rid84
     Set Context    TestCaseR17    de_DE    focus=test
     ${output}    Get Postcode And City
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\d{5}\\s.+$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get Postcode And City
     Should Be Equal As Strings    ${output}    ${repetition}

0018 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R18 | B01 Context is = Set | B02 Domain of the item is = address | B08 Geographical reference is = given
     [Tags]     datadriven     ddcount 04     r18     recommended     rid85
     Set Context    TestCaseR18    de_DE    focus=test
     # The test case asks for city to ensure geografical reference is set
     ${ref_city}    Get Postcode And City
     ${output}    Get State
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get State
     Should Be Equal As Strings    ${output}    ${repetition}

0019 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R19 | B01 Context is = Set | B02 Domain of the item is = finance
     [Tags]     datadriven     ddcount 02     r19     recommended     rid78
     Set Context    TestCaseR19    de_DE    focus=test
     ${output}    Get Iban
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^DE[0-9]{20}
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get Iban
     Should Be Equal As Strings    ${output}    ${repetition}

0020 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R20 | B01 Context is = Set | B02 Domain of the item is = person | B04 Requested item code of domain "person" = person.name | B06 Item person.first_name is = unknown | B07 Item person.last_name is = unknown
     [Tags]     ddcount 00     recommended
     Set Context    TestCaseR20    de_DE    focus=test
     ${output}    Get Name
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S[^\\d]+\\s[^\\d]+$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get Name
     Should Be Equal As Strings    ${output}    ${repetition}

0021 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R21 | B01 Context is = Set | B02 Domain of the item is = person | B04 Requested item code of domain "person" = person.name | B06 Item person.first_name is = unknown | B07 Item person.last_name is = known
     [Tags]     ddcount 00     recommended
     Set Context    TestCaseR21    de_DE    focus=test
     # last name should be known and is pre-assigned.
     ${last_name}    Get Last Name
     ${output}    Get Name
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S[^\\d]+\\s${last_name}$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get Name
     Should Be Equal As Strings    ${output}    ${repetition}

0022 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R22 | B01 Context is = Set | B02 Domain of the item is = person | B04 Requested item code of domain "person" = person.name | B06 Item person.first_name is = known | B07 Item person.last_name is = unknown
     [Tags]     ddcount 00     recommended
     Set Context    TestCaseR22    de_DE    focus=test
     # First name should be known and is pre-assigned.
     ${first_name}    Get First Name
     ${output}    Get Name
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^${first_name}\\s[^\\d]+$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get Name
     Should Be Equal As Strings    ${output}    ${repetition}

0023 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R23 | B01 Context is = Set | B02 Domain of the item is = person | B04 Requested item code of domain "person" = person.name | B06 Item person.first_name is = known | B07 Item person.last_name is = known
     [Tags]     ddcount 00     recommended
     Set Context    TestCaseR23    de_DE    focus=test
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

0024 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R24 | B01 Context is = Set | B02 Domain of the item is = person | B04 Requested item code of domain "person" = person.first_name
     [Tags]     ddcount 00     recommended
     Set Context    TestCaseR24    de_DE    focus=test
     ${output}    Get First Name
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S[^\\d]+$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get First Name
     Should Be Equal As Strings    ${output}    ${repetition}

0025 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R25 | B01 Context is = Set | B02 Domain of the item is = person | B04 Requested item code of domain "person" = person.last_name
     [Tags]     ddcount 00     recommended
     Set Context    TestCaseR25    de_DE    focus=test
     ${output}    Get Last Name
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S[^\\d]+$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get Last Name
     Should Be Equal As Strings    ${output}    ${repetition}

0026 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R26 | B01 Context is = Set | B02 Domain of the item is = traffic | B05 Requested item code of domain "traffic" = traffic.license_plate | B08 Geographical reference is = unknown
     [Tags]     datadriven     ddcount 04     r26     recommended     rid82
     Set Context    TestCaseR26    de_DE    focus=test
     ${output}    Get License Plate    city=Bremen
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=(?!.{11}$)^HB\\s[A-Z]{1,2}\\s[1-9]\\d{0,3}[EH]?$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get License Plate    city=Bremen
     Should Be Equal As Strings    ${output}    ${repetition}

0027 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R27 | B01 Context is = Set | B02 Domain of the item is = traffic | B05 Requested item code of domain "traffic" = traffic.license_plate | B08 Geographical reference is = given
     [Tags]     ddcount 00     recommended
     Set Context    TestCaseR27    de_DE    focus=test
     # The test case asks for city to ensure geografical reference is set
     ${ref_city}    Get Postcode And City
     ${output}    Get License Plate
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=(?!.{11}$)^[A-ZÄÖÜ]{1,3}\\s[A-Z]{1,2}\\s[1-9]\\d{0,3}[EH]?$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get License Plate
     Should Be Equal As Strings    ${output}    ${repetition}

0028 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R28 | B02 Domain of the item is = traffic | B05 Requested item code of domain "traffic" = else
     [Tags]     robot:exclude
     ${output}    Get Variable Value    $output    ${EMPTY}
     # This test case is not intended to be executed.
     # For this reason, the robot:exclude tag has also been set.
     # The output should be an empty string
     Should Be Equal As String    ${EMPTY}    ${output}

0029 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R12 | B01 Context is = None | B02 Domain of the item is = finance
     [Tags]     datadriven     ddbase 0012     r12     rid58
     ${output}    Get Bic
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^[A-Z0-9]{4}DE([01][A-NP-Z]|[A-Z2-9][A-NP-Z0-9])([X]{3}|[A-WYZ0-9][A-Z0-9]{2})?$

0030 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R12 | B01 Context is = None | B02 Domain of the item is = finance
     [Tags]     datadriven     ddbase 0012     r12     rid58
     ${output}    Get Iban
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^DE[0-9]{20}

0031 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R16 | B01 Context is = None | B02 Domain of the item is = traffic | B05 Requested item code of domain "traffic" = traffic.license_plate
     [Tags]     datadriven     ddbase 0016     r16     rid79
     ${output}    Get License Plate    city=Hambach
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=(?!.{11}$)^(EMS|DIZ|GOH)\\s[A-Z]{1,2}\\s[1-9]\\d{0,3}[EH]?$

0032 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R16 | B01 Context is = None | B02 Domain of the item is = traffic | B05 Requested item code of domain "traffic" = traffic.license_plate
     [Tags]     datadriven     ddbase 0016     r16     rid79
     ${output}    Get License Plate    state=DE-BE
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=(?!.{11}$)^B\\s[A-Z]{1,2}\\s[1-9]\\d{0,3}[EH]?$

0033 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R16 | B01 Context is = None | B02 Domain of the item is = traffic | B05 Requested item code of domain "traffic" = traffic.license_plate
     [Tags]     datadriven     ddbase 0016     r16     rid79
     ${output}    Get License Plate    state=Berlin
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=(?!.{11}$)^B\\s[A-Z]{1,2}\\s[1-9]\\d{0,3}[EH]?$

0034 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R16 | B01 Context is = None | B02 Domain of the item is = traffic | B05 Requested item code of domain "traffic" = traffic.license_plate
     [Tags]     datadriven     ddbase 0016     r16     rid79
     ${output}    Get License Plate    city=Bremerhaven
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=(?!.{11}$)^HB\\s[A-Z]{1,2}\\s[1-9]\\d{0,3}[EH]?$

0035 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R17 | B01 Context is = Set | B02 Domain of the item is = address | B08 Geographical reference is = unknown
     [Tags]     datadriven     ddbase 0017     r17     rid84
     Set Context    TestCaseR17    de_DE    focus=test
     ${output}    Get Country
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^Deutschland$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get Country
     Should Be Equal As Strings    ${output}    ${repetition}

0036 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R17 | B01 Context is = Set | B02 Domain of the item is = address | B08 Geographical reference is = unknown
     [Tags]     datadriven     ddbase 0017     r17     rid84
     Set Context    TestCaseR17    de_DE    focus=test
     ${output}    Get City
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get City
     Should Be Equal As Strings    ${output}    ${repetition}

0037 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R17 | B01 Context is = Set | B02 Domain of the item is = address | B08 Geographical reference is = unknown
     [Tags]     datadriven     ddbase 0017     r17     rid84
     Set Context    TestCaseR17    de_DE    focus=test
     ${output}    Get Street And House Number
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+\\s\\d\\d?\\d?[A-Ha-h]?$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get Street And House Number
     Should Be Equal As Strings    ${output}    ${repetition}

0038 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R17 | B01 Context is = Set | B02 Domain of the item is = address | B08 Geographical reference is = unknown
     [Tags]     datadriven     ddbase 0017     r17     rid84
     Set Context    TestCaseR17    de_DE    focus=test
     ${output}    Get Street
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get Street
     Should Be Equal As Strings    ${output}    ${repetition}

0039 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R18 | B01 Context is = Set | B02 Domain of the item is = address | B08 Geographical reference is = given
     [Tags]     datadriven     ddbase 0018     r18     rid85
     Set Context    TestCaseR18    de_DE    focus=test
     # The test case asks for city to ensure geografical reference is set
     ${ref_city}    Get Postcode And City
     ${output}    Get Address And Country
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\S.+\\s\\d\\d?\\d?[A-Ha-h]?(\\r\\n?|\\n)\\d{5}\\s.+(\\r\\n?|\\n)Deutschland$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get Address And Country
     Should Be Equal As Strings    ${output}    ${repetition}

0040 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R18 | B01 Context is = Set | B02 Domain of the item is = address | B08 Geographical reference is = given
     [Tags]     datadriven     ddbase 0018     r18     rid85
     Set Context    TestCaseR18    de_DE    focus=test
     # The test case asks for city to ensure geografical reference is set
     ${ref_city}    Get Postcode And City
     ${output}    Get Country Code
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^DE$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get Country Code
     Should Be Equal As Strings    ${output}    ${repetition}

0041 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R18 | B01 Context is = Set | B02 Domain of the item is = address | B08 Geographical reference is = given
     [Tags]     datadriven     ddbase 0018     r18     rid85
     Set Context    TestCaseR18    de_DE    focus=test
     # The test case asks for city to ensure geografical reference is set
     ${ref_city}    Get Postcode And City
     ${output}    Get Postcode
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\d{5}$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get Postcode
     Should Be Equal As Strings    ${output}    ${repetition}

0042 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R18 | B01 Context is = Set | B02 Domain of the item is = address | B08 Geographical reference is = given
     [Tags]     datadriven     ddbase 0018     r18     rid85
     Set Context    TestCaseR18    de_DE    focus=test
     # The test case asks for city to ensure geografical reference is set
     ${ref_city}    Get Postcode And City
     ${output}    Get House Number
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^\\d\\d?\\d?[A-Ha-h]?$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get House Number
     Should Be Equal As Strings    ${output}    ${repetition}

0043 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R19 | B01 Context is = Set | B02 Domain of the item is = finance
     [Tags]     datadriven     ddbase 0019     r19     rid78
     Set Context    TestCaseR19    de_DE    focus=test
     ${output}    Get Bic
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^[A-Z0-9]{4}DE([01][A-NP-Z]|[A-Z2-9][A-NP-Z0-9])([X]{3}|[A-WYZ0-9][A-Z0-9]{2})?$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get Bic
     Should Be Equal As Strings    ${output}    ${repetition}

0044 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R19 | B01 Context is = Set | B02 Domain of the item is = finance
     [Tags]     datadriven     ddbase 0019     r19     rid78
     Set Context    TestCaseR19    de_DE    focus=test
     ${output}    Get Bank
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=^.+$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get Bank
     Should Be Equal As Strings    ${output}    ${repetition}

0045 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R26 | B01 Context is = Set | B02 Domain of the item is = traffic | B05 Requested item code of domain "traffic" = traffic.license_plate | B08 Geographical reference is = unknown
     [Tags]     datadriven     ddbase 0026     r26     rid82
     Set Context    TestCaseR26    de_DE    focus=test
     ${output}    Get License Plate    state=Bremen
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=(?!.{11}$)^HB\\s[A-Z]{1,2}\\s[1-9]\\d{0,3}[EH]?$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get License Plate    state=Bremen
     Should Be Equal As Strings    ${output}    ${repetition}

0046 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R26 | B01 Context is = Set | B02 Domain of the item is = traffic | B05 Requested item code of domain "traffic" = traffic.license_plate | B08 Geographical reference is = unknown
     [Tags]     datadriven     ddbase 0026     r26     rid82
     Set Context    TestCaseR26    de_DE    focus=test
     ${output}    Get License Plate    city=München
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=(?!.{11}$)^M(UC)?\\s[A-Z]{1,2}\\s[1-9]\\d{0,3}[EH]?$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get License Plate    city=München
     Should Be Equal As Strings    ${output}    ${repetition}

0047 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R26 | B01 Context is = Set | B02 Domain of the item is = traffic | B05 Requested item code of domain "traffic" = traffic.license_plate | B08 Geographical reference is = unknown
     [Tags]     datadriven     ddbase 0026     r26     rid82
     Set Context    TestCaseR26    de_DE    focus=test
     ${output}    Get License Plate    state=Saxony
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=(?!.{11}$)^[A-ZÄÖÜ]{1,3}\\s[A-Z]{1,2}\\s[1-9]\\d{0,3}[EH]?$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get License Plate    state=Saxony
     Should Be Equal As Strings    ${output}    ${repetition}

0048 ItemBuilderEngineGermany 
     [Documentation]     ItemBuilderEngineGermany
     ...     | R26 | B01 Context is = Set | B02 Domain of the item is = traffic | B05 Requested item code of domain "traffic" = traffic.license_plate | B08 Geographical reference is = unknown
     [Tags]     datadriven     ddbase 0026     r26     rid82
     Set Context    TestCaseR26    de_DE    focus=test
     ${output}    Get License Plate    city=Berlin
     # The output of the keyword is checked against the regular expression to ensure that it is syntactically correct.
     Should Match Regexp    ${output}    pattern=(?!.{11}$)^B\\s[A-Z]{1,2}\\s[1-9]\\d{0,3}[EH]?$
     # Repetition of the keyword checks whether the result has also been saved in context.
     ${repetition}    Get License Plate    city=Berlin
     Should Be Equal As Strings    ${output}    ${repetition}

### end of generated test cases ###