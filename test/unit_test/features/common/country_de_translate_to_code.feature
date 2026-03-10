# language: en

Feature: Converting strings into state codes 


  Scenario: Get DE-BW with german name
    Then "Baden-Württemberg" should be translated to "DE-BW"

  Scenario: Get DE-BW with english name
    Then "Baden-Württemberg" should be translated to "DE-BW"

  Scenario: Get DE-BW with code
    Then "DE-BW" should be translated to "DE-BW"



  Scenario: Get DE-BY with german name
    Then "Bayern" should be translated to "DE-BY"

  Scenario: Get DE-BY with english name
    Then "Bavaria" should be translated to "DE-BY"

  Scenario: Get DE-BY with code
    Then "DE-BY" should be translated to "DE-BY"


  Scenario: Get DE-BE with name
    # The name is identical in English and German.
    Then "Berlin" should be translated to "DE-BE"

  Scenario: Get DE-BE with code
    Then "DE-BE" should be translated to "DE-BE"


  Scenario: Get DE-BB with name
    # The name is identical in English and German.
    Then "Brandenburg" should be translated to "DE-BB"

  Scenario: Get DE-BB with code
    Then "DE-BB" should be translated to "DE-BB"


  Scenario: Get DE-HB with name
    # The name is identical in English and German.
    Then "Bremen" should be translated to "DE-HB"

  Scenario: Get DE-HB with code
    Then "DE-HB" should be translated to "DE-HB"


  Scenario: Get DE-HH with name
    # The name is identical in English and German.
    Then "Hamburg" should be translated to "DE-HH"

  Scenario: Get DE-HH with code
    Then "DE-HH" should be translated to "DE-HH"


  Scenario: Get DE-HE with german name
    Then "Hessen" should be translated to "DE-HE"

  Scenario: Get DE-HE with english name
    Then "Hesse" should be translated to "DE-HE"

  Scenario: Get DE-HE with code
    Then "DE-HE" should be translated to "DE-HE"


  Scenario: Get DE-MV with german name
    Then "Mecklenburg-Vorpommern" should be translated to "DE-MV"

  Scenario: Get DE-MV with english name
    Then "Mecklenburg-Western Pomerania" should be translated to "DE-MV"

  Scenario: Get DE-MV with code
    Then "DE-MV" should be translated to "DE-MV"


  Scenario: Get DE-NI with german name
    Then "Niedersachsen" should be translated to "DE-NI"

  Scenario: Get DE-NI with english name
    Then "Lower Saxony" should be translated to "DE-NI"

  Scenario: DE-NI Code with code
    Then "DE-NI" should be translated to "DE-NI"


  Scenario: Get DE-NW with german name
    Then "Nordrhein-Westfalen" should be translated to "DE-NW"

  Scenario: Get DE-NW with english name
    Then "North Rhine-Westphalia" should be translated to "DE-NW"

  Scenario: Get DE-NW with code
    Then "DE-NW" should be translated to "DE-NW"


  Scenario: Get DE-RP with german name
    Then "Rheinland-Pfalz" should be translated to "DE-RP"

  Scenario: Get DE-RP with english name
    Then "Rhineland-Palatinate" should be translated to "DE-RP"

  Scenario: Get DE-RP with code
    Then "DE-RP" should be translated to "DE-RP"


  Scenario: Get DE-SL with name
    # The name is identical in English and German.
    Then "Saarland" should be translated to "DE-SL"

  Scenario: Get DE-SL with code
    Then "DE-SL" should be translated to "DE-SL"


  Scenario: Get DE-SN with german name
    Then "Sachsen" should be translated to "DE-SN"

  Scenario: Get DE-SN with english name
    Then "Saxony" should be translated to "DE-SN"

  Scenario: Get DE-SN with code
    Then "DE-SN" should be translated to "DE-SN"


  Scenario: Get DE-ST with german name
    Then "Sachsen-Anhalt" should be translated to "DE-ST"

  Scenario: Get DE-ST with english name
    Then "Saxony-Anhalt" should be translated to "DE-ST"

  Scenario: Get DE-ST with code
    Then "DE-ST" should be translated to "DE-ST"


  Scenario: Get DE-SH with name
    # The name is identical in English and German.
    Then "Schleswig-Holstein" should be translated to "DE-SH"

  Scenario: Get DE-SH with code
    Then "DE-SH" should be translated to "DE-SH"


  Scenario: Get DE-TH with german name
    Then "Thüringen" should be translated to "DE-TH"

  Scenario: Get DE-TH with english name
    Then "Thuringia" should be translated to "DE-TH"

  Scenario: Get DE-TH with code
    Then "DE-TH" should be translated to "DE-TH"

  @negative
  Scenario: Wrong code must be unchanged
    Then "DE-AZ" should be translated to "DE-AZ"

  @negative
  Scenario: Wrong name must be unchanged
    Then "Pfalz" should be translated to "Pfalz"



