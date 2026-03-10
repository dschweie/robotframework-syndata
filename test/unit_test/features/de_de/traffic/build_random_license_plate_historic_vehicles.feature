Feature: Build a random license plates for historic vehicles.
    
    The old-timer license plate (also known as an "H license plate"), in which 
    an H is added after the actual registration number, is a German designation 
    for a historic motor vehicle in accordance with § 10 FZV (in german: 
    "Fahrzeug-Zulassungsverordnung"), which is issued after an inspection to 
    ensure that the vehicle is in its original contemporary condition. A further 
    requirement is that the vehicle must be at least 30 years old.

    Scenario: Any license plate from Germany
        The test case does not impose any restrictions with regard to the city 
        for which a license plate number is to be generated.
        
        Consequently, the result can only be checked against the general 
        regular expression.
        
        In addition, a check is performed to ensure that the combination of 
        letters and numbers is socially acceptable.
        When  a license plate string is generated for "historic" vehicle
        Then  the license plate string should match "(?=.{5,10}$)^[A-ZÄÖÜ]{1,3}\s[A-Z]{1,2}\s[1-9]\d{0,3}H$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Schleswig-Holstein
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "01051016".
        Given the official municipality code should be "01051016"
        When  a license plate string is generated for "historic" vehicle
        Then  the license plate string should match "(?=.{5,10}$)^((HEI)|(MED))\s[A-Z]{1,2}\s[1-9]\d{0,3}H$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Hamburg
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "02000000".
        Given the official municipality code should be "02000000"
        When  a license plate string is generated for "historic" vehicle
        Then  the license plate string should match "(?=.{5,10}$)^HH\s[A-Z]{1,2}\s[1-9]\d{0,3}H$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Lower Saxony
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "03355020".
        Given the official municipality code should be "03355020"
        When  a license plate string is generated for "historic" vehicle
        Then  the license plate string should match "(?=.{5,10}$)^LG\s[A-Z]{1,2}\s[1-9]\d{0,3}H$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Bremen
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "04011000".
        Given the official municipality code should be "04011000"
        When  a license plate string is generated for "historic" vehicle
        Then  the license plate string should match "(?=.{5,10}$)^HB\s[A-Z]{1,2}\s[1-9]\d{0,3}H$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state North Rhine-Westphalia
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "05954004".
        Given the official municipality code should be "05954004"
        When  a license plate string is generated for "historic" vehicle
        Then  the license plate string should match "(?=.{5,10}$)^EN\s[A-Z]{1,2}\s[1-9]\d{0,3}H$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Hesse
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "06440005".
        Given the official municipality code should be "06440005"
        When  a license plate string is generated for "historic" vehicle
        Then  the license plate string should match "(?=.{5,10}$)^((FB)|(BÜD))\s[A-Z]{1,2}\s[1-9]\d{0,3}H$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Rhineland-Palatinate
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "07135020".
        Given the official municipality code should be "07135020"
        When  a license plate string is generated for "historic" vehicle
        Then  the license plate string should match "(?=.{5,10}$)^COC\s[A-Z]{1,2}\s[1-9]\d{0,3}H$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Baden-Württemberg
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "08215007".
        Given the official municipality code should be "08215007"
        When  a license plate string is generated for "historic" vehicle
        Then  the license plate string should match "(?=.{5,10}$)^((KA)|(BR))\s[A-Z]{1,2}\s[1-9]\d{0,3}H$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Bavaria
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "09677151".
        Given the official municipality code should be "09677151"
        When  a license plate string is generated for "historic" vehicle
        Then  the license plate string should match "(?=.{5,10}$)^MSP\s[A-Z]{1,2}\s[1-9]\d{0,3}H$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Saarland
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "10043112".
        Given the official municipality code should be "10043112"
        When  a license plate string is generated for "historic" vehicle
        Then  the license plate string should match "(?=.{5,10}$)^((NK)|(OTW))\s[A-Z]{1,2}\s[1-9]\d{0,3}H$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Berlin
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "11000000".
        Given the official municipality code should be "11000000"
        When  a license plate string is generated for "historic" vehicle
        Then  the license plate string should match "(?=.{5,10}$)^B\s[A-Z]{1,2}\s[1-9]\d{0,3}H$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Brandenburg
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "12073225".
        Given the official municipality code should be "12073225"
        When  a license plate string is generated for "historic" vehicle
        Then  the license plate string should match "(?=.{5,10}$)^((UM)|(ANG)|(PZ)|(SDT)|(TP))\s[A-Z]{1,2}\s[1-9]\d{0,3}H$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Mecklenburg-Western Pomerania
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "13074035".
        Given the official municipality code should be "13074035"
        When  a license plate string is generated for "historic" vehicle
        Then  the license plate string should match "(?=.{5,10}$)^((NWM)|(GDB)|(GVM)|(WIS))\s[A-Z]{1,2}\s[1-9]\d{0,3}H$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Saxony
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "14713000".
        Given the official municipality code should be "14713000"
        When  a license plate string is generated for "historic" vehicle
        Then  the license plate string should match "(?=.{5,10}$)^L\s[A-Z]{1,2}\s[1-9]\d{0,3}H$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Saxony-Anhalt
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "15088205".
        Given the official municipality code should be "15088205"
        When  a license plate string is generated for "historic" vehicle
        Then  the license plate string should match "(?=.{5,10}$)^((SK)|(MER)|(MQ)|(QFT))\s[A-Z]{1,2}\s[1-9]\d{0,3}H$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Thuringia
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "16068036".
        Given the official municipality code should be "16068036"
        When  a license plate string is generated for "historic" vehicle
        Then  the license plate string should match "(?=.{5,10}$)^SÖM\s[A-Z]{1,2}\s[1-9]\d{0,3}H$"
        *     the combination of letters and numbers must be socially acceptable

    @negative
    Scenario: Invalid digit sequence for the federal state
        The first two digits of the general municipality code represent the 
        federal state. The digit sequence "17" is not assigned to any federal 
        state.
        
        A search for a license plate with the invalid code should return an 
        empty string.
        Given the official municipality code should be "17162000"
        When  a license plate string is generated for "historic" vehicle
        Then  the result should be an empty string

    @negative
    Scenario: Invalid municipality code with valid state
        As a city-state, Hamburg has the identifier "02" and only the code 
        "02000000" exists. This means that "02022002" is not a valid code.

        Searching for a license plate with the invalid code should result 
        in an empty string.
        Given the official municipality code should be "02022002"
        When  a license plate string is generated for "historic" vehicle
        Then  the result should be an empty string

