*** Settings ***
Library    Collections
Library    SynData    localization=de_DE    logging=${True}

Test Teardown    Release Context

*** Test Cases ***

Repeated Execution Of A Keyword Must Yield Identical Results
    [Documentation]    When a context is set, the data should be consistent. 
    ...                This also means that a random value should be returned 
    ...                at most when a keyword is called for the first time. 
    ...                After that, the keyword is expected to always return the
    ...                same value within the defined context.
    ...
    ...                This test case sets a context and then calls ``Get Name``
    ...                a total of three times, and all three results must be 
    ...                identical.
    [Setup]    Set Context    REOAKMYIR21    de_DE
    ${first_call}    Get Name    
    ${second_call}   Get Name
    ${third_call}    Get Name
    Should Be Equal As Strings    ${first_call}     ${second_call}
    Should Be Equal As Strings    ${second_call}    ${third_call}

Identical Results Even After Switching To A Different Context And Back
    [Documentation]    In a test case, it is conceivable that two people play a 
    ...                role, for example. In this case, I can set a context for 
    ...                each role, and the results must be consistent even after 
    ...                switching between roles.
    ...
    ...                In this test case, a total of two contexts are set. 
    ...                Data generated in the first context must also be returned
    ...                when switching to the second context in the meantime.
    ...
    ...                This test case uses ``Get Name`` for both contexts to 
    ...                verify that the data is consistent.
    [Setup]    Set Context    IREASTADCAB21A    de_DE
    ${first_call_a}    Get Name
    Set Context        IREASTADCAB21B    fi_FI
    ${first_call_b}    Get Name
    Set Context        IREASTADCAB21A
    ${second_call_a}   Get Name
    Should Be Equal As Strings    ${first_call_a}    ${second_call_a}
    Should Not Be Equal As Strings    ${first_call_a}    ${first_call_b}

Consistent Data Within The Context When First Name Is Set
    [Documentation]    In some cases, the keywords generate information that is 
    ...                dependent on other information. For example, a first name
    ...                is formed from ``Get First Name`` and ``Get Name``. If a 
    ...                tester first calls ``Get First Name``, then ``Get Name`` 
    ...                must contain the same first name that was previously 
    ...                returned by ``Get First Name``.
    [Setup]    Set Context    CDWTCWFNIS21    de_DE
    ${first_name}    Get First Name    m
    ${name}    Get Name
    Should Match Regexp    ${name}    ^${first_name}\\s.+$

Consistent Data Within The Context When The Last Name Is Set
    [Documentation]    In some cases, the keywords generate information that is 
    ...                dependent on other information. For example, a last name 
    ...                is formed from ``Get Last Name`` and ``Get Name``. 
    ...                If a tester first calls ``Get Last Name``, then 
    ...                ``Get Name`` must contain the same last name that was 
    ...                previously returned by ``Get Last Name``.
    [Setup]    Set Context    CDWTCWTLNIS21    de_DE
    ${last_name}    Get Last Name    
    ${name}    Get Name
    Should Match Regexp    ${name}    ^.+\\s${last_name}$

Consistent Data Within The Context When A Name Is Set
    [Documentation]    In some cases, the keywords generate information that is 
    ...                dependent on other information.
    ...
    ...                In this test case, a name consisting of a first and 
    ...                last name is first created in the context using the 
    ...                keyword ``Get Name``.
    ...
    ...                When ``Get First Name`` and ``Get Last Name`` are then 
    ...                called, the results must be consistent with the result 
    ...                of ``Get Name``.
    [Setup]    Set Context    CDWTCWANIS21    de_DE
    ${name}    Get Name
    ${first_name}    Get First Name
    ${last_name}     Get Last Name
    Should Be Equal As Strings    ${name}    ${first_name} ${last_name}

Consistent Data Within The Context Regarding Address Data
    [Setup]    Set Context    CDWTCRAD21    de_DE
    ${postcode}    Get Postcode
    ${city}        Get City
    ${composite}   Get Postcode And City
    Should Be Equal As Strings    ${composite}    ${postcode} ${city}
    ${street}      Get Street
    ${house_nr}    Get House Number
    ${composite}   Get Street And House Number
    Should Be Equal As Strings    ${composite}    ${street} ${house_nr}
    ${full}        Get Address

License Plate With Filter By State And Consistent Address Data
    [Documentation]    This test case generates first a licence plate with 
    ...    the filter ``state=Nordrhein-Westfalen``. The result will be verfied 
    ...    in a first step by regular expression. 
    ...    
    ...    This assertion is not precise enough because in 
    ...    North Rhine-Westphalia there is a big number ob labels for the 
    ...    license plate valid. 
    ...
    ...    The postal code, which must correspond to the license plate number 
    ...    because a context has been set, allows for a more rigorous check of 
    ...    whether the result is accurate.
    ...
    ...    Since the boundaries of the postal code areas do not correspond to 
    ...    the boundaries of the federal states, there is a very small degree 
    ...    of inaccuracy in the check.
    [Setup]    Set Context    LPWFACAD21    de_DE
    ${license_plate}    Get License Plate    state=Nordrhein-Westfalen
    Should Match Regexp    string=${license_plate}    pattern=(?=.{5,10}$)^[A-ZÄÖÜ]{1,3}\\s[A-Z]{1,2}\\s[1-9]\\d{0,3}[EH]?$
    # In North Rhine-Westphalia there are may labels for license plate possible.
    # The postal code, which must correspond to the license plate number because a context has been set, allows for a more rigorous check of whether the result is accurate.
    # Since the boundaries of the postal code areas do not correspond to the boundaries of the federal states, there is a very small degree of inaccuracy in the check.
    ${postcode}         Get Postcode
    Should Match Regexp    string=${postcode}    pattern=((3[2347])|(4[0-9])|(5[0123789]))\\d{3}$
    ${location}         Get Postcode And City

License Plate With Filter By State For A Small State And Consistent Address Data
    [Documentation]    In this test case, a license plate for Saarland, a small 
    ...    state, is generated first.
    ...    
    ...    Since there are only nine distinguishing characters in this state 
    ...    that the license plate must begin with, the regular expression was 
    ...    made more restrictive.
    ...    
    ...    In addition, a corresponding postal code is also checked, since 
    ...    all postal codes in Saarland must begin with ``66``.
    [Setup]    Set Context    LPWFBSFASSACAD21    de_DE
    ${license_plate}    Get License Plate    state=DE-SL
    Should Match Regexp    string=${license_plate}    pattern=(?=.{5,10}$)^(HOM|IGB|MZG|NK|OTW|SB|SLS|VK|WND)\\s[A-Z]{1,2}\\s[1-9]\\d{0,3}[EH]?$
    ${postcode}         Get Postcode
    Should Match Regexp    string=${postcode}    pattern=66\\d{3}$
    ${location}         Get Postcode And City

License Plate With Filter By Big City And Unique Name
    [Setup]    Set Context    LPWFBBCAUN21    de_DE
    ${license_plate}    Get License Plate    city=Berlin
    Should Match Regexp    string=${license_plate}    pattern=(?=.{5,10}$)^B\\s[A-Z]{1,2}\\s[1-9]\\d{0,3}[EH]?$

License Plate With Filter By City And Non Unique Name
    [Documentation]    The name of a city in Germany does not have to be unique.
    ...    This test case uses the city "Woltersdorf" as a filter criterion, 
    ...    which yields three hits.
    ...
    ...    The generated license plate must begin with one of these letter 
    ...    combinations:
    ...    - ``LOS``, ``BSK``, ``EH`` oder ``FW`` für 15569 Woltersdorf
    ...    - ``RZ`` für 21516 Woltersdorf
    ...    - ``DAN`` für 29497 Woltersdorf
    ...
    ...    The choice of regular expression for verification is set depending 
    ...    on the postal code.
    [Setup]    Set Context    LPWFBCANUN21    de_DE
    ${license_plate}    Get License Plate    city=Woltersdorf
    ${postcode}         Get Postcode
    IF    "15569" == "${postcode}" 
        VAR    ${ver_pattern}    (?=.{5,10}$)^(LOS|BSK|EH|FW)\\s[A-Z]{1,2}\\s[1-9]\\d{0,3}[EH]?$    
        VAR    ${ver_text}       LOS, BSK, EH or FW
    ELSE IF    "21516" == "${postcode}" 
        VAR    ${ver_pattern}    (?=.{5,10}$)^RZ\\s[A-Z]{1,2}\\s[1-9]\\d{0,3}[EH]?$    
        VAR    ${ver_text}       LOS, BSK, EH or FW
    ELSE IF    "29497" == "${postcode}" 
        VAR    ${ver_pattern}    (?=.{5,10}$)^DAN\\s[A-Z]{1,2}\\s[1-9]\\d{0,3}[EH]?$    
        VAR    ${ver_text}       DAN
    ELSE
        Fail    Unexpected postcode was given.
    END
    Should Match Regexp    string=${license_plate}    pattern=${ver_pattern}
    ...    msg=The license plate shoud start with ${ver_text}

Repeated Calls For A License Plate Must Ignore Filter Conditions
    [Documentation]
    [Setup]    Set Context    RCFALPMIFC21    de_DE
    ${license_plate}    Get License Plate    state=Lower Saxony
    Should Match Regexp    string=${license_plate}    pattern=(?=.{5,10}$)^[A-ZÄÖÜ]{1,3}\\s[A-Z]{1,2}\\s[1-9]\\d{0,3}[EH]?$
    ${rep_state}        Get License Plate    state=DE-BW
    Should Be Equal As Strings    ${license_plate}    ${rep_state}
    ${rep_city}         Get License Plate    city=Hemer
    Should Be Equal As Strings    ${license_plate}    ${rep_city}

