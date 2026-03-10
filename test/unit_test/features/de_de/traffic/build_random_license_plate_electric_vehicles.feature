Feature: Build a random license plates for electric vehicles.
    
    Following the adoption of the Electric Mobility Act in 2015, special 
    license plates were introduced for electric vehicles, plug-in hybrids, 
    and fuel cell vehicles in order to introduce and enforce special rules 
    for electrically powered vehicles.

    Scenario: Any license plate from Germany
        The test case does not impose any restrictions with regard to the city 
        for which a license plate number is to be generated.
        
        Consequently, the result can only be checked against the general 
        regular expression.
        
        In addition, a check is performed to ensure that the combination of 
        letters and numbers is socially acceptable.
        When  a license plate string is generated for "electric" vehicle
        Then  the license plate string should match "(?=.{5,10}$)^[A-ZÄÖÜ]{1,3}\s[A-Z]{1,2}\s[1-9]\d{0,3}E$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Schleswig-Holstein
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "01060043".
        Given the official municipality code should be "01060043"
        When  a license plate string is generated for "electric" vehicle
        Then  the license plate string should match "(?=.{5,10}$)^SE\s[A-Z]{1,2}\s[1-9]\d{0,3}E$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Hamburg
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "02000000".
        Given the official municipality code should be "02000000"
        When  a license plate string is generated for "electric" vehicle
        Then  the license plate string should match "(?=.{5,10}$)^HH\s[A-Z]{1,2}\s[1-9]\d{0,3}E$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Lower Saxony
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "03251042".
        Given the official municipality code should be "03251042"
        When  a license plate string is generated for "electric" vehicle
        Then  the license plate string should match "(?=.{5,10}$)^((DH)|(SY))\s[A-Z]{1,2}\s[1-9]\d{0,3}E$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Bremen
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "04012000".
        Given the official municipality code should be "04012000"
        When  a license plate string is generated for "electric" vehicle
        Then  the license plate string should match "(?=.{5,10}$)^HB\s[A-Z]{1,2}\s[1-9]\d{0,3}E$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state North Rhine-Westphalia
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "05315000".
        Given the official municipality code should be "05315000"
        When  a license plate string is generated for "electric" vehicle
        Then  the license plate string should match "(?=.{5,10}$)^K\s[A-Z]{1,2}\s[1-9]\d{0,3}E$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Hesse
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "06634013".
        Given the official municipality code should be "06634013"
        When  a license plate string is generated for "electric" vehicle
        Then  the license plate string should match "(?=.{5,10}$)^((HR)|(FZ)|(MEG)|(ZIG))\s[A-Z]{1,2}\s[1-9]\d{0,3}E$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Rhineland-Palatinate
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "07132067".
        Given the official municipality code should be "07132067"
        When  a license plate string is generated for "electric" vehicle
        Then  the license plate string should match "(?=.{5,10}$)^AK\s[A-Z]{1,2}\s[1-9]\d{0,3}E$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Baden-Württemberg
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "08118049".
        Given the official municipality code should be "08118049"
        When  a license plate string is generated for "electric" vehicle
        Then  the license plate string should match "(?=.{5,10}$)^((LB)|(VAI))\s[A-Z]{1,2}\s[1-9]\d{0,3}E$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Bavaria
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "09161000".
        Given the official municipality code should be "09161000"
        When  a license plate string is generated for "electric" vehicle
        Then  the license plate string should match "(?=.{5,10}$)^IN\s[A-Z]{1,2}\s[1-9]\d{0,3}E$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Saarland
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "10046112".
        Given the official municipality code should be "10046112"
        When  a license plate string is generated for "electric" vehicle
        Then  the license plate string should match "(?=.{5,10}$)^WND\s[A-Z]{1,2}\s[1-9]\d{0,3}E$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Berlin
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "11000000".
        Given the official municipality code should be "11000000"
        When  a license plate string is generated for "electric" vehicle
        Then  the license plate string should match "(?=.{5,10}$)^B\s[A-Z]{1,2}\s[1-9]\d{0,3}E$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Brandenburg
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "12069397".
        Given the official municipality code should be "12069397"
        When  a license plate string is generated for "electric" vehicle
        Then  the license plate string should match "(?=.{5,10}$)^((PM)|(BEL))\s[A-Z]{1,2}\s[1-9]\d{0,3}E$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Mecklenburg-Western Pomerania
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "13003000".
        Given the official municipality code should be "13003000"
        When  a license plate string is generated for "electric" vehicle
        Then  the license plate string should match "(?=.{5,10}$)^HRO\s[A-Z]{1,2}\s[1-9]\d{0,3}E$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Saxony
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "14626310".
        Given the official municipality code should be "14626310"
        When  a license plate string is generated for "electric" vehicle
        Then  the license plate string should match "(?=.{5,10}$)^((GR)|(LÖB)|(NOL)|(NY)|(WSW)|(ZI))\s[A-Z]{1,2}\s[1-9]\d{0,3}E$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Saxony-Anhalt
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "15089185".
        Given the official municipality code should be "15089185"
        When  a license plate string is generated for "electric" vehicle
        Then  the license plate string should match "(?=.{5,10}$)^((SLK)|(ASL)|(BBG)|(SBK)|(SFT))\s[A-Z]{1,2}\s[1-9]\d{0,3}E$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Thuringia
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "16076049".
        Given the official municipality code should be "16076049"
        When  a license plate string is generated for "electric" vehicle
        Then  the license plate string should match "(?=.{5,10}$)^((GRZ)|(ZR))\s[A-Z]{1,2}\s[1-9]\d{0,3}E$"
        *     the combination of letters and numbers must be socially acceptable

    @negative
    Scenario: Invalid digit sequence for the federal state
        The first two digits of the general municipality code represent the 
        federal state. The digit sequence "00" is not assigned to any federal 
        state.
        
        A search for a license plate with the invalid code should return an 
        empty string.
        Given the official municipality code should be "00162000"
        When  a license plate string is generated for "electric" vehicle
        Then  the result should be an empty string

    @negative
    Scenario: Invalid municipality code with valid state
        As a city-state, Hamburg has the identifier "02" and only the code 
        "02000000" exists. This means that "02120001" is not a valid code.

        Searching for a license plate with the invalid code should result 
        in an empty string.
        Given the official municipality code should be "02120001"
        When  a license plate string is generated for "electric" vehicle
        Then  the result should be an empty string

