Feature: The class Address must build a house number

    One component of the address is the house number.

    The German data used to generate an address contains information that 
    limits the range of possible house numbers. In addition to the range, 
    information is also provided on whether the house numbers must be even 
    or odd.

    The scenarios perform testing on the different constellations for 
    generating a house number.

    Scenario: Build house number with most common parameters
        For many roads, an interval of 1 to 100 is the standard.

        The expectation is any number between 1 and 100, and a letter may 
        be appended at random.
        Given the minimum should be "1"
        *     the maximum should be "100"
        When  a random house number is generated
        Then  the syntax should match "^\d{1,3}[A-Ha-h]?$"

    Scenario: Build an even house number with most common parameters
        For many roads, an interval of 1 to 100 is the standard.

        The expectation is an even house number between 1 and 100, and a letter 
        may be randomly appended.
        Given the minimum should be "1"
        *     the maximum should be "100"
        *     the mode should be "even"
        When  a random house number is generated
        Then  the syntax should match "^\d{0,2}[02468][A-Ha-h]?$"

    Scenario: Build an odd house number with most common parameters
        For many roads, an interval of 1 to 100 is the standard.

        The expectation is an odd house number between 1 and 100, and a letter 
        may be randomly appended.
        Given the minimum should be "1"
        *     the maximum should be "100"
        *     the mode should be "odd"
        When  a random house number is generated
        Then  the syntax should match "^\d{0,2}[13579][A-Ha-h]?$"


    Scenario: Build a house number in a small range
        Given the minimum should be "1"
        *     the maximum should be "20"
        When  a random house number is generated
        Then  the syntax should match "^[12]?\d[A-Ha-h]?$"

    Scenario: Build an even house number in a small range
        Given the minimum should be "1"
        *     the maximum should be "20"
        *     the mode should be "even"
        When  a random house number is generated
        Then  the syntax should match "^[12]?[02468][A-Ha-h]?$"
    
    Scenario: Build an odd house number in a small range
        Given the minimum should be "1"
        *     the maximum should be "20"
        *     the mode should be "odd"
        When  a random house number is generated
        Then  the syntax should match "^[12]?[13579][A-Ha-h]?$"


    Scenario: Build a house number from an interval of length 1
        Given the minimum should be "42"
        *     the maximum should be "42"
        When  a random house number is generated
        Then  the syntax should match "^42[A-Ha-h]?$"

    Scenario: Build an even house number from an interval of length 1
        Given the minimum should be "24"
        *     the maximum should be "24"
        *     the mode should be "even"
        When  a random house number is generated
        Then  the syntax should match "^24[A-Ha-h]?$"
    
    Scenario: Build an odd house number from an interval of length 1
        Given the minimum should be "27"
        *     the maximum should be "27"
        *     the mode should be "odd"
        When  a random house number is generated
        Then  the syntax should match "^27[A-Ha-h]?$"


    Scenario: Build an even house number with odd parameters
        Given the minimum should be "21"
        *     the maximum should be "29"
        *     the mode should be "even"
        When  a random house number is generated
        Then  the syntax should match "^[2]?[2468][A-Ha-h]?$"
    
    Scenario: Build an odd house number with even parameters
        Given the minimum should be "10"
        *     the maximum should be "18"
        *     the mode should be "odd"
        When  a random house number is generated
        Then  the syntax should match "^[1]?[1357][A-Ha-h]?$"

    @negative
    Scenario: Build an even house number with odd parameters and min equals max
        Given the minimum should be "21"
        *     the maximum should be "21"
        *     the mode should be "even"
        When  a random house number is generated
        Then  the house number should be empty
    
    @negative
    Scenario: Build an odd house number with even parameters and min equals max
        Given the minimum should be "14"
        *     the maximum should be "14"
        *     the mode should be "odd"
        When  a random house number is generated
        Then  the house number should be empty

    @negative
    Scenario: Build a house number with min greater than max
        Given the minimum should be "30"
        *     the maximum should be "10"
        When  a random house number is generated
        Then  the house number should be empty

    @negative
    Scenario: Build an even house number with min greater than max
        Given the minimum should be "24"
        *     the maximum should be "23"
        *     the mode should be "even"
        When  a random house number is generated
        Then  the house number should be empty

    @negative
    Scenario: Build an odd house number with min greater than max
        Given the minimum should be "100"
        *     the maximum should be "1"
        *     the mode should be "odd"
        When  a random house number is generated
        Then  the house number should be empty
