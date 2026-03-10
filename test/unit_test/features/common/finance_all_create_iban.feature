Feature: Compile IBAN with country code and sequence

    The check digit must be formed from the country code and the digits for 
    the specific account, which turns the return value into a syntactically 
    correct IBAN.

    The test data for the scenarios was taken from the following website:
    https://www.iban-bic.com/sample_accounts.html

    Scenario: Check an hungarian and long IBAN
        Given the country code is "HU"
        *     the payload is "117080012054779400000000"
        Then  the IBAN should be "HU29117080012054779400000000"

    Scenario: Check a norwegian and short IBAN
        Given the country code is "NO"
        *     the payload is "15032080119"
        Then  the IBAN should be "NO5015032080119"

    Scenario: Check a german IBAN
        Given the country code is "DE"
        *     the payload is "500105170648489890"
        Then  the IBAN should be "DE12500105170648489890"

    Scenario: Check a french IBAN
        Given the country code is "FR"
        *     the payload is "30066100410001057380116"
        Then  the IBAN should be "FR7630066100410001057380116"

    Scenario: Check an austrian IBAN
        Given the country code is "AT"
        *     the payload is "2050302101023600"
        Then  the IBAN should be "AT022050302101023600"

    Scenario: Check a swedish IBAN
        Given the country code is "SE"
        *     the payload is "12000000012170145230"
        Then  the IBAN should be "SE6412000000012170145230"

    Scenario: Check a swiss IBAN
        Given the country code is "CH"
        *     the payload is "08704016075473007"
        Then  the IBAN should be "CH3908704016075473007"

    Scenario: Check a finnish IBAN
        Given the country code is "FI"
        *     the payload is "14283500171141"
        Then  the IBAN should be "FI9814283500171141"

