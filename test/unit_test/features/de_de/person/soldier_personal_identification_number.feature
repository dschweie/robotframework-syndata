Feature: Personal Identfication Number

    All German soldiers, civil servants, judges, and employees within the 
    jurisdiction of the Federal Ministry of Defense (BMVg), as well as those 
    performing civilian service, are assigned a personal identification number. 
    This number consists of the six digits of the date of birth, the first 
    letter of the last name at the time of the initial military registration, 
    and five digits, the first three of which indicate the registration 
    district (formerly the district military recruitment office for soldiers). 
    In principle, every adult male German citizen has a personal identification 
    number, even if he has been discharged or deferred from military service. 
    In addition, a personal identification number is also assigned to women who 
    work within the scope of the Federal Ministry of Defense (BMVg).

    The test cases for the feature were developed using PICT and thus cover the 
    dependent parameters.

    The 31 test cases are based on the following model:

    \#
    \# Model for Personal Identification Number
    \#
    \# Options /o:3

    preset.age_from     : None, 17, rnd
    preset.age_to       : None, rnd, 64
    preset.dob          : None, Given
    person.dob          : None, Given
    preset.last_name    : None, Char, String
    person.last_name    : None, String
    location.ags        : None, Given

    Scenario: Build A Random Number
        When I want the generator to build a Personal Identification Number
        Then the syntax should match "\d{6} [A-Z] \d{5}"

    Scenario: PICT Case 01 of 31
        Given the value "30" is set for the "preset.age_from" parameter
        Given the value "K" is set for the "preset.last_name" parameter
        When  I want the generator to build a Personal Identification Number
        Then  the syntax should match "\d{6} K \d{5}"

    Scenario: PICT Case 02 of 31
        Given the value "17" is set for the "preset.age_from" parameter
        Given the value "24.02.1997" is set for the "preset.dob" parameter
        Given the value "06.08.1982" is set for the "person.dob" parameter
        Given the value "Golf" is set for the "preset.last_name" parameter
        Given the value "Bravo" is set for the "person.last_name" parameter
        Given the value "06414000" is set for the "location.ags" parameter
        When  I want the generator to build a Personal Identification Number
        Then  the syntax should match "060882 B 4\d{4}"

    Scenario: PICT Case 03 of 31
        Given the value "17" is set for the "preset.age_from" parameter
        Given the value "53" is set for the "preset.age_to" parameter
        Given the value "14.07.1986" is set for the "person.dob" parameter
        Given the value "A" is set for the "preset.last_name" parameter
        Given the value "Zulu" is set for the "person.last_name" parameter
        When  I want the generator to build a Personal Identification Number
        Then  the syntax should match "140786 Z \d{5}"

    Scenario: PICT Case 04 of 31
        Given the value "30.09.1974" is set for the "person.dob" parameter
        Given the value "01057067" is set for the "location.ags" parameter
        When  I want the generator to build a Personal Identification Number
        Then  the syntax should match "300974 [A-Z] 1\d{4}"

    Scenario: PICT Case 05 of 31
        Given the value "17" is set for the "preset.age_from" parameter
        Given the value "57" is set for the "preset.age_to" parameter
        Given the value "05.03.1986" is set for the "preset.dob" parameter
        Given the value "09672136" is set for the "location.ags" parameter
        When  I want the generator to build a Personal Identification Number
        Then  the syntax should match "050386 [A-Z] 6\d{4}"

    Scenario: PICT Case 06 of 31
        Given the value "32" is set for the "preset.age_from" parameter
        Given the value "48" is set for the "preset.age_to" parameter
        Given the value "08.12.1979" is set for the "preset.dob" parameter
        Given the value "C" is set for the "preset.last_name" parameter
        Given the value "Delta" is set for the "person.last_name" parameter
        Given the value "16066016" is set for the "location.ags" parameter
        When  I want the generator to build a Personal Identification Number
        Then  the syntax should match "081279 D 7\d{4}"

    Scenario: PICT Case 07 of 31
        Given the value "49" is set for the "preset.age_to" parameter
        Given the value "17.11.1970" is set for the "preset.dob" parameter
        Given the value "Quebec" is set for the "preset.last_name" parameter
        When  I want the generator to build a Personal Identification Number
        Then  the syntax should match "171170 Q \d{5}"

    Scenario: PICT Case 08 of 31
        Given the value "64" is set for the "preset.age_to" parameter
        Given the value "Mike" is set for the "person.last_name" parameter
        When  I want the generator to build a Personal Identification Number
        Then  the syntax should match "\d{6} M \d{5}"

    Scenario: PICT Case 09 of 31
        Given the value "19" is set for the "preset.age_from" parameter
        Given the value "26.01.1986" is set for the "person.dob" parameter
        Given the value "Hotel" is set for the "preset.last_name" parameter
        Given the value "Juliet" is set for the "person.last_name" parameter
        When  I want the generator to build a Personal Identification Number
        Then  the syntax should match "260186 J \d{5}"

    Scenario: PICT Case 10 of 31
        Given the value "26" is set for the "preset.age_from" parameter
        Given the value "64" is set for the "preset.age_to" parameter
        Given the value "01.12.1967" is set for the "preset.dob" parameter
        Given the value "01.11.2001" is set for the "person.dob" parameter
        Given the value "03251033" is set for the "location.ags" parameter
        When  I want the generator to build a Personal Identification Number
        Then  the syntax should match "011101 [A-Z] \d{5}"

    Scenario: PICT Case 11 of 31
        Given the value "26" is set for the "preset.age_from" parameter
        Given the value "27" is set for the "preset.age_to" parameter
        Given the value "Lima" is set for the "preset.last_name" parameter
        Given the value "03462017" is set for the "location.ags" parameter
        When  I want the generator to build a Personal Identification Number
        Then  the syntax should match "\d{6} L \d{5}"

    Scenario: PICT Case 12 of 31
        Given the value "48" is set for the "preset.age_to" parameter
        Given the value "Victor" is set for the "preset.last_name" parameter
        Given the value "Alpha" is set for the "person.last_name" parameter
        Given the value "15081105" is set for the "location.ags" parameter
        When  I want the generator to build a Personal Identification Number
        Then  the syntax should match "\d{6} A \d{5}"

    Scenario: PICT Case 13 of 31
        Given the value "17" is set for the "preset.age_from" parameter
        Given the value "15.09.1979" is set for the "preset.dob" parameter
        Given the value "26.03.2004" is set for the "person.dob" parameter
        When  I want the generator to build a Personal Identification Number
        Then  the syntax should match "260304 [A-Z] \d{5}"

    Scenario: PICT Case 14 of 31
        Given the value "31.01.1999" is set for the "preset.dob" parameter
        Given the value "Papa" is set for the "preset.last_name" parameter
        Given the value "Oscar" is set for the "person.last_name" parameter
        When  I want the generator to build a Personal Identification Number
        Then  the syntax should match "310199 O \d{5}"

    Scenario: PICT Case 15 of 31
        Given the value "21" is set for the "preset.age_from" parameter
        Given the value "64" is set for the "preset.age_to" parameter
        Given the value "09.03.2003" is set for the "preset.dob" parameter
        Given the value "15.02.1987" is set for the "person.dob" parameter
        Given the value "W" is set for the "preset.last_name" parameter
        When  I want the generator to build a Personal Identification Number
        Then  the syntax should match "150287 W \d{5}"

    Scenario: PICT Case 16 of 31
        Given the value "51" is set for the "preset.age_to" parameter
        Given the value "07.06.2000" is set for the "preset.dob" parameter
        Given the value "14.12.2001" is set for the "person.dob" parameter
        Given the value "Kilo" is set for the "person.last_name" parameter
        Given the value "05774008" is set for the "location.ags" parameter
        When  I want the generator to build a Personal Identification Number
        Then  the syntax should match "\d{6} K \d{5}"

    Scenario: PICT Case 17 of 31
        Given the value "17" is set for the "preset.age_from" parameter
        Given the value "26" is set for the "preset.age_to" parameter
        Given the value "India" is set for the "preset.last_name" parameter
        When  I want the generator to build a Personal Identification Number
        Then  the syntax should match "\d{6} I \d{5}"

    Scenario: PICT Case 18 of 31
        Given the value "17" is set for the "preset.age_from" parameter
        Given the value "R" is set for the "preset.last_name" parameter
        Given the value "06634009" is set for the "location.ags" parameter
        When  I want the generator to build a Personal Identification Number
        Then  the syntax should match "\d{6} R \d{5}"

    Scenario: PICT Case 19 of 31
        Given the value "17" is set for the "preset.age_from" parameter
        Given the value "64" is set for the "preset.age_to" parameter
        Given the value "07.05.1973" is set for the "person.dob" parameter
        Given the value "Foxtrott" is set for the "preset.last_name" parameter
        When  I want the generator to build a Personal Identification Number
        Then  the syntax should match "\d{6} F \d{5}"

    Scenario: PICT Case 20 of 31
        Given the value "23" is set for the "preset.age_from" parameter
        Given the value "Uniform" is set for the "person.last_name" parameter
        When  I want the generator to build a Personal Identification Number
        Then  the syntax should match "\d{6} U \d{5}"

    Scenario: PICT Case 21 of 31
        Given the value "52" is set for the "preset.age_from" parameter
        Given the value "64" is set for the "preset.age_to" parameter
        Given the value "13.09.1978" is set for the "preset.dob" parameter
        Given the value "Tango" is set for the "preset.last_name" parameter
        Given the value "Golf" is set for the "person.last_name" parameter
        When  I want the generator to build a Personal Identification Number
        Then  the syntax should match "130978 G \d{5}"

    Scenario: PICT Case 22 of 31
        Given the value "64" is set for the "preset.age_to" parameter
        Given the value "14.10.1987" is set for the "preset.dob" parameter
        Given the value "23.05.1972" is set for the "person.dob" parameter
        Given the value "F" is set for the "preset.last_name" parameter
        Given the value "08226048" is set for the "location.ags" parameter
        When  I want the generator to build a Personal Identification Number
        Then  the syntax should match "230572 F 5\d{4}"

    Scenario: PICT Case 23 of 31
        Given the value "64" is set for the "preset.age_to" parameter
        Given the value "S" is set for the "preset.last_name" parameter
        Given the value "Hotel" is set for the "person.last_name" parameter
        When  I want the generator to build a Personal Identification Number
        Then  the syntax should match "\d{6} H \d{5}"

    Scenario: PICT Case 24 of 31
        Given the value "17" is set for the "preset.age_from" parameter
        Given the value "64" is set for the "preset.age_to" parameter
        Given the value "Sierra" is set for the "person.last_name" parameter
        Given the value "08125063" is set for the "location.ags" parameter
        When  I want the generator to build a Personal Identification Number
        Then  the syntax should match "\d{6} S \d{5}"

    Scenario: PICT Case 25 of 31
        Given the value "57" is set for the "preset.age_to" parameter
        Given the value "21.06.1978" is set for the "person.dob" parameter
        Given the value "Delta" is set for the "preset.last_name" parameter
        Given the value "Romeo" is set for the "person.last_name" parameter
        Given the value "08128039" is set for the "location.ags" parameter
        When  I want the generator to build a Personal Identification Number
        Then  the syntax should match "210678 R \d{5}"

    Scenario: PICT Case 26 of 31
        Given the value "07.10.1978" is set for the "preset.dob" parameter
        Given the value "26.01.2003" is set for the "person.dob" parameter
        Given the value "D" is set for the "preset.last_name" parameter
        Given the value "Echo" is set for the "person.last_name" parameter
        Given the value "13071065" is set for the "location.ags" parameter
        When  I want the generator to build a Personal Identification Number
        Then  the syntax should match "260103 E \d{5}"

    Scenario: PICT Case 27 of 31
        Given the value "17" is set for the "preset.age_from" parameter
        Given the value "64" is set for the "preset.age_to" parameter
        Given the value "01.12.1998" is set for the "preset.dob" parameter
        Given the value "A" is set for the "preset.last_name" parameter
        Given the value "05913000" is set for the "location.ags" parameter
        When  I want the generator to build a Personal Identification Number
        Then  the syntax should match "011298 A \d{5}"

    Scenario: PICT Case 28 of 31
        Given the value "35" is set for the "preset.age_to" parameter
        Given the value "Ü" is set for the "preset.last_name" parameter
        When  I want the generator to build a Personal Identification Number
        Then  the syntax should match "\d{6} U \d{5}"

    Scenario: PICT Case 29 of 31
        Given the value "21" is set for the "preset.age_from" parameter
        Given the value "64" is set for the "preset.age_to" parameter
        Given the value "05.06.1999" is set for the "person.dob" parameter
        Given the value "Özcan" is set for the "person.last_name" parameter
        Given the value "08317121" is set for the "location.ags" parameter
        When  I want the generator to build a Personal Identification Number
        Then  the syntax should match "050699 O \d{5}"

    Scenario: PICT Case 30 of 31
        Given the value "36" is set for the "preset.age_from" parameter
        Given the value "51" is set for the "preset.age_to" parameter
        Given the value "10.08.2000" is set for the "person.dob" parameter
        When  I want the generator to build a Personal Identification Number
        Then  the syntax should match "100800 [A-Z] \d{5}"

    Scenario: PICT Case 31 of 31
        Given the value "41" is set for the "preset.age_from" parameter
        Given the value "03.06.1976" is set for the "preset.dob" parameter
        Given the value "14.09.1983" is set for the "person.dob" parameter
        Given the value "November" is set for the "preset.last_name" parameter
        Given the value "09672140" is set for the "location.ags" parameter
        When  I want the generator to build a Personal Identification Number
        Then  the syntax should match "140983 N \d{5}"
