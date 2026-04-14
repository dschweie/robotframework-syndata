Feature: Build Check Digit For PK

    For the personal identification number used by the German Federal Ministry 
    of Defense, there is a check digit that the generator should generate 
    correctly.

    The scenarios in this file use personal identification numbers that are 
    freely available on the internet.

    Scenario: Wikipedia PK From 1983
        When the personal identification number starts with "011261C6121"
        Then then the check digit should be "6"

    Scenario: Example From Wikipedia
        When the personal identification number starts with "261083K2091"
        Then then the check digit should be "7"

    Scenario: Example From Multiboard
        When the personal identification number starts with "041169H3302"
        Then then the check digit should be "7"
