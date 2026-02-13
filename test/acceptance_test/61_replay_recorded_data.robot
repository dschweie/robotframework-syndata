*** Settings ***
Library    SynData
Suite Setup    Set SynData Configuration    mode=replay    replay_file=${CURDIR}/../data/acceptance_tests/replay_file_test_suite_61.csv    logging=${True}

*** Test Cases ***
Generate Some Data Without Context
    [Documentation]    This test case runs in replay mode and does not use 
    ...    context statements.
    ...
    ...    The keywords do not generate data; instead, data stored in a log 
    ...    file is returned.
    ...    
    ...    The keywords themselves are not insignificant, as the log file 
    ...    contains information about which keywords are expected in the 
    ...    test case. For this reason, their order must not be changed.
    ${data}    Get First Name
    Should Be Equal As Strings    Christophorus    ${data}
    ${data}    Get First Name    sex=m
    Should Be Equal As Strings    Anrich    ${data}
    ${data}    Get First Name    sex=f
    Should Be Equal As Strings    Marta    ${data}
    ${data}    Get Name
    Should Be Equal As Strings    Oskar Tietjen    ${data}

Generate Some Data With Context
    [Documentation]    This test case runs in replay mode and also contains 
    ...    context statements.
    ...    
    ...    The keywords do not generate data; instead, data stored in a log file 
    ...    is returned.
    ...    
    ...    The context statements are largely ignored, as context changes are 
    ...    not recorded in the log file.
    ...    
    ...    The keywords themselves are not insignificant, as the log file stores 
    ...    which keywords are expected in the test case. For this reason, their 
    ...    order must not be changed.
    Set Context  Policyholder    localization=de_DE
    ${data}    Get Name    sex=f
    Should Be Equal As Strings    Helgard Ahrens    ${data}
    Set Context  Legal Representative   localization=de_DE  
    ${data}    Get Name    sex=m
    Should Be Equal As Strings    Rudolf Stricker    ${data}
    ${data}    Get Postcode And City
    Should Be Equal As Strings    32469 Petershagen  ${data}
    Set Context  Policyholder
    ${data}    Get First Name
    Should Be Equal As Strings    Helgard    ${data}
    ${data}    Get Address
    Should Be Equal As Strings    Teichstraße 23\r\n34431 Marsberg    ${data}

