Feature: Generation of a random location in Germany based on the official municipality code

    The official municipality code (AGS, german: "Amtlicher Gemeindeschlüssel") 
    is a sequence of numbers used to identify politically independent cities, 
    municipalities, or unincorporated areas in Germany.
    
    This code plays a central role in establishing relationships between data 
    that is location-dependent.
    
    Even though the results are random, they can still be checked using regular 
    expressions, some of which can be restricted based on filter conditions.

    Scenario: Build a random AGS
        This test case represents a situation that can occur frequently. In 
        this case, a random location is searched for without filter conditions,
        and any AGS can be returned.
        Given no filter statements are set
        When  a random location is generated based on ags
        Then  the location should match "^((0[1-9])|(1[0-6]))\d{6}$"
    
    Scenario: Build an AGS from the state Bavaria
        Given the location is to be in the state of "DE-BY"
        When  a random location is generated based on ags
        Then  the location should match "^09\d{6}$"

    Scenario: Build an AGS from the state Hamburg
        Hamburg is one of three city states in Germany. This means that AGS 
        must have the value 02000000 when filtering by Hamburg as a state.
        Given the location is to be in the state of "DE-HH"
        When  a random location is generated based on ags
        Then  the location should be "02000000"

    Scenario: Build an AGS for the city Hamburg
        Hamburg is one of three city states in Germany. This means that AGS 
        must have the value 02000000 when filtering by Hamburg as a city.
        Given the location is to be in the city of "Hamburg"
        When  a random location is generated based on ags
        Then  the location should be "02000000"

    Scenario: Build an AGS for the city Wuppertal
        If the city "Wuppertal" is set as a filter, then only one AGS may 
        be returned.
        Given the location is to be in the city of "Wuppertal"
        When  a random location is generated based on ags
        Then  the location should be "05124000"

    Scenario: Build an AGS for the city Hamm with more than one possible match
        The city "Hamm" can yield more than one result in Germany. For this 
        reason, this value is selected for the test case.
        Given the location is to be in the city of "Hamm"
        When  a random location is generated based on ags
        Then  the location should match "^07232046|05915000$"

    Scenario: Build an AGS with filter conditions for state and city
        Given the location is to be in the state of "DE-SH"
        Given the location is to be in the city of "Mechow"
        When  a random location is generated based on ags
        Then  the location should be "01053088"

    @negative
    Scenario: Build an AGS with invalid state code
        Given the location is to be in the state of "DE-BZ"
        When  a random location is generated based on ags
        Then  the location should be empty

    @negative
    Scenario: Build an AGS with invalid city name
        Given the location is to be in the city of "Helsinki"
        When  a random location is generated based on ags
        Then  the location should be empty

    @negative
    Scenario: Build an AGS with filter values that have no intersection
        Given the location is to be in the state of "DE-SH"
        Given the location is to be in the city of "Dillenburg"
        When  a random location is generated based on ags
        Then  the location should be empty
