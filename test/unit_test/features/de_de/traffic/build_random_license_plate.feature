Feature: Build a random license plate for majority of vehicles

    The current vehicle license plates in Germany are designed as 
    Euro license plates. They consist of two parts:
    - the distinguishing mark consisting of up to three capital letters,
    - the identification number consisting of one or two capital letters 
      and up to four digits.
    
    However, together they may consist of a maximum of eight characters.

    These rules apply to the majority of vehicle license plates issued by 
    vehicle registration authorities.

    There are also a number of additional rules that will not be considered 
    here.

    Scenario: Any license plate from Germany
        The test case does not impose any restrictions with regard to the city 
        for which a license plate number is to be generated.
        
        Consequently, the result can only be checked against the general 
        regular expression.
        
        In addition, a check is performed to ensure that the combination of 
        letters and numbers is socially acceptable.
        When  a license plate string is generated a standard vehicle
        Then  the license plate string should match "(?=.{5,10}$)^[A-ZÄÖÜ]{1,3}\s[A-Z]{1,2}\s[1-9]\d{0,3}$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Schleswig-Holstein
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "01061003".
        Given the official municipality code should be "01061003"
        When  a license plate string is generated a standard vehicle
        Then  the license plate string should match "(?=.{5,10}$)^IZ\s[A-Z]{1,2}\s[1-9]\d{0,3}$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Hamburg
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "02000000".
        Given the official municipality code should be "02000000"
        When  a license plate string is generated a standard vehicle
        Then  the license plate string should match "(?=.{5,10}$)^HH\s[A-Z]{1,2}\s[1-9]\d{0,3}$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Lower Saxony
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "03405000".
        Given the official municipality code should be "03405000"
        When  a license plate string is generated a standard vehicle
        Then  the license plate string should match "(?=.{5,10}$)^WHV\s[A-Z]{1,2}\s[1-9]\d{0,3}$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Bremen
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "04012000".
        Given the official municipality code should be "04012000"
        When  a license plate string is generated a standard vehicle
        Then  the license plate string should match "(?=.{5,10}$)^HB\s[A-Z]{1,2}\s[1-9]\d{0,3}$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state North Rhine-Westphalia
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "05111000".
        Given the official municipality code should be "05111000"
        When  a license plate string is generated a standard vehicle
        Then  the license plate string should match "(?=.{5,10}$)^D\s[A-Z]{1,2}\s[1-9]\d{0,3}$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Hesse
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "06633001".
        Given the official municipality code should be "06633001"
        When  a license plate string is generated a standard vehicle
        Then  the license plate string should match "(?=.{5,10}$)^((KS)|(HOG)|(WOH))\s[A-Z]{1,2}\s[1-9]\d{0,3}$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Rhineland-Palatinate
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "07340042".
        Given the official municipality code should be "07340042"
        When  a license plate string is generated a standard vehicle
        Then  the license plate string should match "(?=.{5,10}$)^((PS)|(ZW))\s[A-Z]{1,2}\s[1-9]\d{0,3}$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Baden-Württemberg
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "08436003".
        Given the official municipality code should be "08436003"
        When  a license plate string is generated a standard vehicle
        Then  the license plate string should match "(?=.{5,10}$)^((RV)|(WG))\s[A-Z]{1,2}\s[1-9]\d{0,3}$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Bavaria
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "09184142".
        Given the official municipality code should be "09184142"
        When  a license plate string is generated a standard vehicle
        Then  the license plate string should match "(?=.{5,10}$)^M[U]?\s[A-Z]{1,2}\s[1-9]\d{0,3}$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Saarland
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "10041513".
        Given the official municipality code should be "10041513"
        When  a license plate string is generated a standard vehicle
        Then  the license plate string should match "(?=.{5,10}$)^SB\s[A-Z]{1,2}\s[1-9]\d{0,3}$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Berlin
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "11000000".
        Given the official municipality code should be "11000000"
        When  a license plate string is generated a standard vehicle
        Then  the license plate string should match "(?=.{5,10}$)^B\s[A-Z]{1,2}\s[1-9]\d{0,3}$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Brandenburg
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "12066132".
        Given the official municipality code should be "12066132"
        When  a license plate string is generated a standard vehicle
        Then  the license plate string should match "(?=.{5,10}$)^((OSL)|(CA)|(SFB))\s[A-Z]{1,2}\s[1-9]\d{0,3}$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Mecklenburg-Western Pomerania
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "13076024".
        Given the official municipality code should be "13076024"
        When  a license plate string is generated a standard vehicle
        Then  the license plate string should match "(?=.{5,10}$)^((LUP)|(HGN)|(LBZ)|(LWL)|(PCH)|(STB))\s[A-Z]{1,2}\s[1-9]\d{0,3}$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Saxony
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "14524020".
        Given the official municipality code should be "14524020"
        When  a license plate string is generated a standard vehicle
        Then  the license plate string should match "(?=.{5,10}$)^((Z)|(GC)|(HOT)|(WDA))\s[A-Z]{1,2}\s[1-9]\d{0,3}$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Saxony-Anhalt
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "15090270".
        Given the official municipality code should be "15090270"
        When  a license plate string is generated a standard vehicle
        Then  the license plate string should match "(?=.{5,10}$)^((SDL)|(HV)|(OBG))\s[A-Z]{1,2}\s[1-9]\d{0,3}$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate from state Thuringia
        For reasons of equivalence partitioning, a municipality code should be
        used 
        - from each state.
        - that leads to a unique or different distinguishing mark.
        - that leads to a distinguishing mark with one, two, or three letters.

        This test case uses the municipality code "16061083".
        Given the official municipality code should be "16061083"
        When  a license plate string is generated a standard vehicle
        Then  the license plate string should match "(?=.{5,10}$)^((EIC)|(HIG)|(WBS))\s[A-Z]{1,2}\s[1-9]\d{0,3}$"
        *     the combination of letters and numbers must be socially acceptable

    Scenario: License plate with the municipality code for Munich
        This test case performs testing for the city of Munich. This city 
        issues license plates that begin with either "M" or "MUC".
        Given the official municipality code should be "09162000"
        When  a license plate string is generated a standard vehicle
        Then  the license plate string should match "(?=.{5,10}$)^M(UC)?\s[A-Z]{1,2}\s[1-9]\d{0,3}$"
        *     the combination of letters and numbers must be socially acceptable

    @negative
    Scenario: Invalid digit sequence for the federal state
        The first two digits of the general municipality code represent the 
        federal state. The digit sequence "20" is not assigned to any federal 
        state.
        
        A search for a license plate with the invalid code should return an 
        empty string.
        Given the official municipality code should be "20162000"
        When  a license plate string is generated a standard vehicle
        Then  the result should be an empty string

    @negative
    Scenario: Invalid municipality code with valid state
        As a city-state, Hamburg has the identifier "02" and only the code 
        "02000000" exists. This means that "02187732" is not a valid code.

        Searching for a license plate with the invalid code should result 
        in an empty string.
        Given the official municipality code should be "02187732"
        When  a license plate string is generated a standard vehicle
        Then  the result should be an empty string

