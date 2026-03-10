Feature: The license plate number must not violate public decency.

    According to §9 of the german Fahrzeug-Zulassungsverordnung, distinguishing 
    marks, identification numbers, and combinations of distinguishing marks and 
    identification numbers that violate public decency are not permitted. The 
    administrative regulation for the Fahrzeug-Zulassungsverordnung recommends 
    that registration authorities do not assign letter pairs that refer to 
    National Socialist organizations.

    In addition, no combinations should be possible that are swear words or 
    words that should not be associated with a vehicle.
    
    This is to ensure that the SynData library does not generate such 
    combinations. For this reason, a method should be able to check letter 
    combinations for invalid letter combinations.

  @datadriven @negative @r01 @recommended
  Scenario: 0001 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R01 : B01 kind of distinguishing mark = all ; B03 general letter combinations = vpd
    Given the letters for license plate are "KL HH"
    Then  the combination should be considered socially unacceptable!

  @datadriven @r02 @recommended
  Scenario: 0002 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R02 : B01 kind of distinguishing mark = all ; B03 general letter combinations = ok1
    Given the letters for license plate are "REI K"
    Then  the combination should be accepted

  @datadriven @r03 @recommended
  Scenario: 0003 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R03 : B01 kind of distinguishing mark = all ; B03 general letter combinations = ok2
    Given the letters for license plate are "PEG MA"
    Then  the combination should be accepted

  @negative @recommended
  Scenario: 0004 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R04 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = AC ; B04 letters for Aachen (AC) = AB
    Given the letters for license plate are "AC AB"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r05 @recommended
  Scenario: 0005 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R05 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = AC ; B04 letters for Aachen (AC) = vpd
    Given the letters for license plate are "AC AH"
    Then  the combination should be considered socially unacceptable!

  @datadriven @r06 @recommended
  Scenario: 0006 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R06 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = AC ; B04 letters for Aachen (AC) = ok1
    Given the letters for license plate are "AC R"
    Then  the combination should be accepted

  @datadriven @r07 @recommended
  Scenario: 0007 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R07 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = AC ; B04 letters for Aachen (AC) = ok2
    Given the letters for license plate are "AC HK"
    Then  the combination should be accepted

  @negative @recommended
  Scenario: 0008 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R08 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = BUL ; B05 letters for Landkreis Schwandorf (BUL) = LE
    Given the letters for license plate are "BUL LE"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r09 @recommended
  Scenario: 0009 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R09 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = BUL ; B05 letters for Landkreis Schwandorf (BUL) = vpd
    Given the letters for license plate are "BUL NS"
    Then  the combination should be considered socially unacceptable!

  @datadriven @r10 @recommended
  Scenario: 0010 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R10 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = BUL ; B05 letters for Landkreis Schwandorf (BUL) = ok1
    Given the letters for license plate are "BUL E"
    Then  the combination should be accepted

  @datadriven @r11 @recommended
  Scenario: 0011 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R11 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = BUL ; B05 letters for Landkreis Schwandorf (BUL) = ok2
    Given the letters for license plate are "BUL EV"
    Then  the combination should be accepted

  @negative @recommended
  Scenario: 0012 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R12 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = H ; B06 letters for Hannover (H) = J
    Given the letters for license plate are "H J"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r13 @recommended
  Scenario: 0013 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R13 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = H ; B06 letters for Hannover (H) = vpd
    Given the letters for license plate are "H SD"
    Then  the combination should be considered socially unacceptable!

  @datadriven @r14 @recommended
  Scenario: 0014 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R14 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = H ; B06 letters for Hannover (H) = ok1
    Given the letters for license plate are "H M"
    Then  the combination should be accepted

  @datadriven @r15 @recommended
  Scenario: 0015 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R15 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = H ; B06 letters for Hannover (H) = ok2
    Given the letters for license plate are "H SQ"
    Then  the combination should be accepted

  @negative @recommended
  Scenario: 0016 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R16 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = HEI ; B07 letters for Kreis Dithmarschen (HEI) = L
    Given the letters for license plate are "HEI L"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r17 @recommended
  Scenario: 0017 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R17 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = HEI ; B07 letters for Kreis Dithmarschen (HEI) = vpd
    Given the letters for license plate are "HEI KZ"
    Then  the combination should be considered socially unacceptable!

  @datadriven @r18 @recommended
  Scenario: 0018 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R18 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = HEI ; B07 letters for Kreis Dithmarschen (HEI) = ok1
    Given the letters for license plate are "HEI U"
    Then  the combination should be accepted

  @datadriven @r19 @recommended
  Scenario: 0019 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R19 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = HEI ; B07 letters for Kreis Dithmarschen (HEI) = ok2
    Given the letters for license plate are "HEI ZE"
    Then  the combination should be accepted

  @negative @recommended
  Scenario: 0020 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R20 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = IZ ; B08 letters for Kreis Steinburg (IZ) = AN
    Given the letters for license plate are "IZ AN"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r21 @recommended
  Scenario: 0021 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R21 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = IZ ; B08 letters for Kreis Steinburg (IZ) = vpd
    Given the letters for license plate are "IZ HJ"
    Then  the combination should be considered socially unacceptable!

  @datadriven @r22 @recommended
  Scenario: 0022 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R22 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = IZ ; B08 letters for Kreis Steinburg (IZ) = ok1
    Given the letters for license plate are "IZ X"
    Then  the combination should be accepted

  @datadriven @r23 @recommended
  Scenario: 0023 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R23 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = IZ ; B08 letters for Kreis Steinburg (IZ) = ok2
    Given the letters for license plate are "IZ EH"
    Then  the combination should be accepted

  @negative @recommended
  Scenario: 0024 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R24 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = K ; B09 letters for Cologne (K) = Z
    Given the letters for license plate are "K Z"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r25 @recommended
  Scenario: 0025 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R25 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = K ; B09 letters for Cologne (K) = vpd
    Given the letters for license plate are "K IS"
    Then  the combination should be considered socially unacceptable!

  @datadriven @r26 @recommended
  Scenario: 0026 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R26 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = K ; B09 letters for Cologne (K) = ok1
    Given the letters for license plate are "K I"
    Then  the combination should be accepted

  @datadriven @r27 @recommended
  Scenario: 0027 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R27 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = K ; B09 letters for Cologne (K) = ok2
    Given the letters for license plate are "K QR"
    Then  the combination should be accepted

  @negative @recommended
  Scenario: 0028 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R28 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = MO ; B10 letters for Kreis Wesel (MO) = RD
    Given the letters for license plate are "MO RD"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r29 @recommended
  Scenario: 0029 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R29 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = MO ; B10 letters for Kreis Wesel (MO) = vpd
    Given the letters for license plate are "MO SA"
    Then  the combination should be considered socially unacceptable!

  @datadriven @r30 @recommended
  Scenario: 0030 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R30 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = MO ; B10 letters for Kreis Wesel (MO) = ok1
    Given the letters for license plate are "MO H"
    Then  the combination should be accepted

  @datadriven @r31 @recommended
  Scenario: 0031 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R31 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = MO ; B10 letters for Kreis Wesel (MO) = ok2
    Given the letters for license plate are "MO SY"
    Then  the combination should be accepted

  @negative @recommended
  Scenario: 0032 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R32 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = N ; B11 letters for Nuremburg (N) = PD
    Given the letters for license plate are "N PD"
    Then  the combination should be considered socially unacceptable!

  @negative @recommended
  Scenario: 0033 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R33 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = N ; B11 letters for Nuremburg (N) = S
    Given the letters for license plate are "N S"
    Then  the combination should be considered socially unacceptable!

  @negative @recommended
  Scenario: 0034 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R34 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = N ; B11 letters for Nuremburg (N) = SU
    Given the letters for license plate are "N SU"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r35 @recommended
  Scenario: 0035 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R35 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = N ; B11 letters for Nuremburg (N) = vpd
    Given the letters for license plate are "N SD"
    Then  the combination should be considered socially unacceptable!

  @datadriven @r36 @recommended
  Scenario: 0036 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R36 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = N ; B11 letters for Nuremburg (N) = ok1
    Given the letters for license plate are "N O"
    Then  the combination should be accepted

  @datadriven @r37 @recommended
  Scenario: 0037 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R37 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = N ; B11 letters for Nuremburg (N) = ok2
    Given the letters for license plate are "N XL"
    Then  the combination should be accepted

  @negative @recommended
  Scenario: 0038 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R38 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = S ; B12 letters for Stuttgart (S) = A
    Given the letters for license plate are "S A"
    Then  the combination should be considered socially unacceptable!

  @negative @recommended
  Scenario: 0039 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R39 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = S ; B12 letters for Stuttgart (S) = S
    Given the letters for license plate are "S S"
    Then  the combination should be considered socially unacceptable!

  @negative @recommended
  Scenario: 0040 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R40 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = S ; B12 letters for Stuttgart (S) = D
    Given the letters for license plate are "S D"
    Then  the combination should be considered socially unacceptable!

  @negative @recommended
  Scenario: 0041 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R41 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = S ; B12 letters for Stuttgart (S) = ED
    Given the letters for license plate are "S ED"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r42 @recommended
  Scenario: 0042 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R42 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = S ; B12 letters for Stuttgart (S) = vpd
    Given the letters for license plate are "S AH"
    Then  the combination should be considered socially unacceptable!

  @datadriven @r43 @recommended
  Scenario: 0043 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R43 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = S ; B12 letters for Stuttgart (S) = ok1
    Given the letters for license plate are "S T"
    Then  the combination should be accepted

  @datadriven @r44 @recommended
  Scenario: 0044 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R44 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = S ; B12 letters for Stuttgart (S) = ok2
    Given the letters for license plate are "S NK"
    Then  the combination should be accepted

  @negative @recommended
  Scenario: 0045 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R45 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SU ; B13 letters for Rhein-Sieg-Kreis (SU) = FF
    Given the letters for license plate are "SU FF"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r46 @recommended
  Scenario: 0046 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R46 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SU ; B13 letters for Rhein-Sieg-Kreis (SU) = vpd
    Given the letters for license plate are "SU IS"
    Then  the combination should be considered socially unacceptable!

  @datadriven @r47 @recommended
  Scenario: 0047 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R47 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SU ; B13 letters for Rhein-Sieg-Kreis (SU) = ok1
    Given the letters for license plate are "SU P"
    Then  the combination should be accepted

  @datadriven @r48 @recommended
  Scenario: 0048 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R48 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SU ; B13 letters for Rhein-Sieg-Kreis (SU) = ok2
    Given the letters for license plate are "SU AI"
    Then  the combination should be accepted

  @negative @recommended
  Scenario: 0049 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R49 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SK ; B14 letters for Saalekreis (SK) = IN
    Given the letters for license plate are "SK IN"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r50 @recommended
  Scenario: 0050 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R50 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SK ; B14 letters for Saalekreis (SK) = vpd
    Given the letters for license plate are "SK HH"
    Then  the combination should be considered socially unacceptable!

  @datadriven @r51 @recommended
  Scenario: 0051 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R51 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SK ; B14 letters for Saalekreis (SK) = ok1
    Given the letters for license plate are "SK W"
    Then  the combination should be accepted

  @datadriven @r52 @recommended
  Scenario: 0052 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R52 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SK ; B14 letters for Saalekreis (SK) = ok2
    Given the letters for license plate are "SK QI"
    Then  the combination should be accepted

  @negative @recommended
  Scenario: 0053 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R53 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = WAF ; B15 letters for Kreis Warendorf (WAF) = FE
    Given the letters for license plate are "WAF FE"
    Then  the combination should be considered socially unacceptable!

  @negative @recommended
  Scenario: 0054 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R54 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = WAF ; B15 letters for Kreis Warendorf (WAF) = vpd
    Given the letters for license plate are "WAF KZ"
    Then  the combination should be considered socially unacceptable!

  @datadriven @r55 @recommended
  Scenario: 0055 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R55 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = WAF ; B15 letters for Kreis Warendorf (WAF) = ok1
    Given the letters for license plate are "WAF C"
    Then  the combination should be accepted

  @datadriven @r56 @recommended
  Scenario: 0056 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R56 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = WAF ; B15 letters for Kreis Warendorf (WAF) = ok2
    Given the letters for license plate are "WAF ON"
    Then  the combination should be accepted

  @datadriven @negative @r01
  Scenario: 0057 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R01 : B01 kind of distinguishing mark = all ; B03 general letter combinations = vpd
    Given the letters for license plate are "L SA"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r01
  Scenario: 0058 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R01 : B01 kind of distinguishing mark = all ; B03 general letter combinations = vpd
    Given the letters for license plate are "NF NS"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r01
  Scenario: 0059 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R01 : B01 kind of distinguishing mark = all ; B03 general letter combinations = vpd
    Given the letters for license plate are "TF HJ"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r01
  Scenario: 0060 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R01 : B01 kind of distinguishing mark = all ; B03 general letter combinations = vpd
    Given the letters for license plate are "VG IS"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r01
  Scenario: 0061 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R01 : B01 kind of distinguishing mark = all ; B03 general letter combinations = vpd
    Given the letters for license plate are "OE KZ"
    Then  the combination should be considered socially unacceptable!

  @datadriven @r02
  Scenario: 0062 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R02 : B01 kind of distinguishing mark = all ; B03 general letter combinations = ok1
    Given the letters for license plate are "W Q"
    Then  the combination should be accepted

  @datadriven @r02
  Scenario: 0063 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R02 : B01 kind of distinguishing mark = all ; B03 general letter combinations = ok1
    Given the letters for license plate are "BGD G"
    Then  the combination should be accepted

  @datadriven @r02
  Scenario: 0064 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R02 : B01 kind of distinguishing mark = all ; B03 general letter combinations = ok1
    Given the letters for license plate are "SC N"
    Then  the combination should be accepted

  @datadriven @r02
  Scenario: 0065 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R02 : B01 kind of distinguishing mark = all ; B03 general letter combinations = ok1
    Given the letters for license plate are "SRB V"
    Then  the combination should be accepted

  @datadriven @r02
  Scenario: 0066 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R02 : B01 kind of distinguishing mark = all ; B03 general letter combinations = ok1
    Given the letters for license plate are "DM Y"
    Then  the combination should be accepted

  @datadriven @r03
  Scenario: 0067 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R03 : B01 kind of distinguishing mark = all ; B03 general letter combinations = ok2
    Given the letters for license plate are "ALF VN"
    Then  the combination should be accepted

  @datadriven @r03
  Scenario: 0068 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R03 : B01 kind of distinguishing mark = all ; B03 general letter combinations = ok2
    Given the letters for license plate are "ANA ME"
    Then  the combination should be accepted

  @datadriven @r03
  Scenario: 0069 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R03 : B01 kind of distinguishing mark = all ; B03 general letter combinations = ok2
    Given the letters for license plate are "LDK RZ"
    Then  the combination should be accepted

  @datadriven @r03
  Scenario: 0070 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R03 : B01 kind of distinguishing mark = all ; B03 general letter combinations = ok2
    Given the letters for license plate are "LB EK"
    Then  the combination should be accepted

  @datadriven @r03
  Scenario: 0071 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R03 : B01 kind of distinguishing mark = all ; B03 general letter combinations = ok2
    Given the letters for license plate are "MAK OF"
    Then  the combination should be accepted

  @datadriven @negative @r05
  Scenario: 0072 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R05 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = AC ; B04 letters for Aachen (AC) = vpd
    Given the letters for license plate are "AC HH"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r05
  Scenario: 0073 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R05 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = AC ; B04 letters for Aachen (AC) = vpd
    Given the letters for license plate are "AC HJ"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r05
  Scenario: 0074 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R05 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = AC ; B04 letters for Aachen (AC) = vpd
    Given the letters for license plate are "AC SA"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r05
  Scenario: 0075 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R05 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = AC ; B04 letters for Aachen (AC) = vpd
    Given the letters for license plate are "AC NS"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r05
  Scenario: 0076 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R05 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = AC ; B04 letters for Aachen (AC) = vpd
    Given the letters for license plate are "AC SD"
    Then  the combination should be considered socially unacceptable!

  @datadriven @r06
  Scenario: 0077 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R06 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = AC ; B04 letters for Aachen (AC) = ok1
    Given the letters for license plate are "AC F"
    Then  the combination should be accepted

  @datadriven @r06
  Scenario: 0078 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R06 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = AC ; B04 letters for Aachen (AC) = ok1
    Given the letters for license plate are "AC B"
    Then  the combination should be accepted

  @datadriven @r06
  Scenario: 0079 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R06 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = AC ; B04 letters for Aachen (AC) = ok1
    Given the letters for license plate are "AC C"
    Then  the combination should be accepted

  @datadriven @r06
  Scenario: 0080 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R06 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = AC ; B04 letters for Aachen (AC) = ok1
    Given the letters for license plate are "AC Y"
    Then  the combination should be accepted

  @datadriven @r06
  Scenario: 0081 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R06 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = AC ; B04 letters for Aachen (AC) = ok1
    Given the letters for license plate are "AC W"
    Then  the combination should be accepted

  @datadriven @r07
  Scenario: 0082 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R07 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = AC ; B04 letters for Aachen (AC) = ok2
    Given the letters for license plate are "AC BJ"
    Then  the combination should be accepted

  @datadriven @r07
  Scenario: 0083 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R07 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = AC ; B04 letters for Aachen (AC) = ok2
    Given the letters for license plate are "AC SC"
    Then  the combination should be accepted

  @datadriven @r07
  Scenario: 0084 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R07 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = AC ; B04 letters for Aachen (AC) = ok2
    Given the letters for license plate are "AC WK"
    Then  the combination should be accepted

  @datadriven @r07
  Scenario: 0085 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R07 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = AC ; B04 letters for Aachen (AC) = ok2
    Given the letters for license plate are "AC AY"
    Then  the combination should be accepted

  @datadriven @r07
  Scenario: 0086 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R07 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = AC ; B04 letters for Aachen (AC) = ok2
    Given the letters for license plate are "AC LY"
    Then  the combination should be accepted

  @datadriven @negative @r09
  Scenario: 0087 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R09 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = BUL ; B05 letters for Landkreis Schwandorf (BUL) = vpd
    Given the letters for license plate are "BUL AH"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r09
  Scenario: 0088 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R09 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = BUL ; B05 letters for Landkreis Schwandorf (BUL) = vpd
    Given the letters for license plate are "BUL IS"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r09
  Scenario: 0089 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R09 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = BUL ; B05 letters for Landkreis Schwandorf (BUL) = vpd
    Given the letters for license plate are "BUL HJ"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r09
  Scenario: 0090 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R09 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = BUL ; B05 letters for Landkreis Schwandorf (BUL) = vpd
    Given the letters for license plate are "BUL KZ"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r09
  Scenario: 0091 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R09 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = BUL ; B05 letters for Landkreis Schwandorf (BUL) = vpd
    Given the letters for license plate are "BUL SA"
    Then  the combination should be considered socially unacceptable!

  @datadriven @r10
  Scenario: 0092 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R10 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = BUL ; B05 letters for Landkreis Schwandorf (BUL) = ok1
    Given the letters for license plate are "BUL M"
    Then  the combination should be accepted

  @datadriven @r10
  Scenario: 0093 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R10 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = BUL ; B05 letters for Landkreis Schwandorf (BUL) = ok1
    Given the letters for license plate are "BUL J"
    Then  the combination should be accepted

  @datadriven @r10
  Scenario: 0094 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R10 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = BUL ; B05 letters for Landkreis Schwandorf (BUL) = ok1
    Given the letters for license plate are "BUL N"
    Then  the combination should be accepted

  @datadriven @r10
  Scenario: 0095 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R10 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = BUL ; B05 letters for Landkreis Schwandorf (BUL) = ok1
    Given the letters for license plate are "BUL G"
    Then  the combination should be accepted

  @datadriven @r10
  Scenario: 0096 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R10 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = BUL ; B05 letters for Landkreis Schwandorf (BUL) = ok1
    Given the letters for license plate are "BUL T"
    Then  the combination should be accepted

  @datadriven @r11
  Scenario: 0097 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R11 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = BUL ; B05 letters for Landkreis Schwandorf (BUL) = ok2
    Given the letters for license plate are "BUL EQ"
    Then  the combination should be accepted

  @datadriven @r11
  Scenario: 0098 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R11 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = BUL ; B05 letters for Landkreis Schwandorf (BUL) = ok2
    Given the letters for license plate are "BUL JK"
    Then  the combination should be accepted

  @datadriven @r11
  Scenario: 0099 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R11 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = BUL ; B05 letters for Landkreis Schwandorf (BUL) = ok2
    Given the letters for license plate are "BUL FG"
    Then  the combination should be accepted

  @datadriven @r11
  Scenario: 0100 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R11 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = BUL ; B05 letters for Landkreis Schwandorf (BUL) = ok2
    Given the letters for license plate are "BUL WE"
    Then  the combination should be accepted

  @datadriven @r11
  Scenario: 0101 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R11 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = BUL ; B05 letters for Landkreis Schwandorf (BUL) = ok2
    Given the letters for license plate are "BUL DX"
    Then  the combination should be accepted

  @datadriven @negative @r13
  Scenario: 0102 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R13 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = H ; B06 letters for Hannover (H) = vpd
    Given the letters for license plate are "H AH"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r13
  Scenario: 0103 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R13 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = H ; B06 letters for Hannover (H) = vpd
    Given the letters for license plate are "H HH"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r13
  Scenario: 0104 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R13 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = H ; B06 letters for Hannover (H) = vpd
    Given the letters for license plate are "H NS"
    Then  the combination should be considered socially unacceptable!

  @datadriven @r14
  Scenario: 0105 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R14 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = H ; B06 letters for Hannover (H) = ok1
    Given the letters for license plate are "H U"
    Then  the combination should be accepted

  @datadriven @r14
  Scenario: 0106 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R14 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = H ; B06 letters for Hannover (H) = ok1
    Given the letters for license plate are "H E"
    Then  the combination should be accepted

  @datadriven @r14
  Scenario: 0107 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R14 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = H ; B06 letters for Hannover (H) = ok1
    Given the letters for license plate are "H H"
    Then  the combination should be accepted

  @datadriven @r14
  Scenario: 0108 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R14 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = H ; B06 letters for Hannover (H) = ok1
    Given the letters for license plate are "H B"
    Then  the combination should be accepted

  @datadriven @r14
  Scenario: 0109 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R14 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = H ; B06 letters for Hannover (H) = ok1
    Given the letters for license plate are "H Z"
    Then  the combination should be accepted

  @datadriven @r15
  Scenario: 0110 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R15 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = H ; B06 letters for Hannover (H) = ok2
    Given the letters for license plate are "H YQ"
    Then  the combination should be accepted

  @datadriven @r15
  Scenario: 0111 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R15 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = H ; B06 letters for Hannover (H) = ok2
    Given the letters for license plate are "H OU"
    Then  the combination should be accepted

  @datadriven @r15
  Scenario: 0112 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R15 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = H ; B06 letters for Hannover (H) = ok2
    Given the letters for license plate are "H RT"
    Then  the combination should be accepted

  @datadriven @r15
  Scenario: 0113 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R15 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = H ; B06 letters for Hannover (H) = ok2
    Given the letters for license plate are "H TT"
    Then  the combination should be accepted

  @datadriven @r15
  Scenario: 0114 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R15 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = H ; B06 letters for Hannover (H) = ok2
    Given the letters for license plate are "H JB"
    Then  the combination should be accepted

  @datadriven @negative @r17
  Scenario: 0115 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R17 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = HEI ; B07 letters for Kreis Dithmarschen (HEI) = vpd
    Given the letters for license plate are "HEI SD"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r17
  Scenario: 0116 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R17 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = HEI ; B07 letters for Kreis Dithmarschen (HEI) = vpd
    Given the letters for license plate are "HEI NS"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r17
  Scenario: 0117 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R17 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = HEI ; B07 letters for Kreis Dithmarschen (HEI) = vpd
    Given the letters for license plate are "HEI SA"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r17
  Scenario: 0118 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R17 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = HEI ; B07 letters for Kreis Dithmarschen (HEI) = vpd
    Given the letters for license plate are "HEI IS"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r17
  Scenario: 0119 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R17 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = HEI ; B07 letters for Kreis Dithmarschen (HEI) = vpd
    Given the letters for license plate are "HEI HJ"
    Then  the combination should be considered socially unacceptable!

  @datadriven @r18
  Scenario: 0120 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R18 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = HEI ; B07 letters for Kreis Dithmarschen (HEI) = ok1
    Given the letters for license plate are "HEI P"
    Then  the combination should be accepted

  @datadriven @r18
  Scenario: 0121 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R18 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = HEI ; B07 letters for Kreis Dithmarschen (HEI) = ok1
    Given the letters for license plate are "HEI R"
    Then  the combination should be accepted

  @datadriven @r18
  Scenario: 0122 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R18 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = HEI ; B07 letters for Kreis Dithmarschen (HEI) = ok1
    Given the letters for license plate are "HEI A"
    Then  the combination should be accepted

  @datadriven @r18
  Scenario: 0123 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R18 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = HEI ; B07 letters for Kreis Dithmarschen (HEI) = ok1
    Given the letters for license plate are "HEI D"
    Then  the combination should be accepted

  @datadriven @r18
  Scenario: 0124 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R18 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = HEI ; B07 letters for Kreis Dithmarschen (HEI) = ok1
    Given the letters for license plate are "HEI O"
    Then  the combination should be accepted

  @datadriven @r19
  Scenario: 0125 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R19 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = HEI ; B07 letters for Kreis Dithmarschen (HEI) = ok2
    Given the letters for license plate are "HEI PW"
    Then  the combination should be accepted

  @datadriven @r19
  Scenario: 0126 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R19 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = HEI ; B07 letters for Kreis Dithmarschen (HEI) = ok2
    Given the letters for license plate are "HEI KJ"
    Then  the combination should be accepted

  @datadriven @r19
  Scenario: 0127 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R19 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = HEI ; B07 letters for Kreis Dithmarschen (HEI) = ok2
    Given the letters for license plate are "HEI CA"
    Then  the combination should be accepted

  @datadriven @r19
  Scenario: 0128 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R19 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = HEI ; B07 letters for Kreis Dithmarschen (HEI) = ok2
    Given the letters for license plate are "HEI JH"
    Then  the combination should be accepted

  @datadriven @r19
  Scenario: 0129 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R19 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = HEI ; B07 letters for Kreis Dithmarschen (HEI) = ok2
    Given the letters for license plate are "HEI QY"
    Then  the combination should be accepted

  @datadriven @negative @r21
  Scenario: 0130 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R21 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = IZ ; B08 letters for Kreis Steinburg (IZ) = vpd
    Given the letters for license plate are "IZ KZ"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r21
  Scenario: 0131 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R21 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = IZ ; B08 letters for Kreis Steinburg (IZ) = vpd
    Given the letters for license plate are "IZ AH"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r21
  Scenario: 0132 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R21 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = IZ ; B08 letters for Kreis Steinburg (IZ) = vpd
    Given the letters for license plate are "IZ HH"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r21
  Scenario: 0133 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R21 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = IZ ; B08 letters for Kreis Steinburg (IZ) = vpd
    Given the letters for license plate are "IZ SD"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r21
  Scenario: 0134 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R21 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = IZ ; B08 letters for Kreis Steinburg (IZ) = vpd
    Given the letters for license plate are "IZ SA"
    Then  the combination should be considered socially unacceptable!

  @datadriven @r22
  Scenario: 0135 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R22 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = IZ ; B08 letters for Kreis Steinburg (IZ) = ok1
    Given the letters for license plate are "IZ V"
    Then  the combination should be accepted

  @datadriven @r22
  Scenario: 0136 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R22 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = IZ ; B08 letters for Kreis Steinburg (IZ) = ok1
    Given the letters for license plate are "IZ Q"
    Then  the combination should be accepted

  @datadriven @r22
  Scenario: 0137 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R22 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = IZ ; B08 letters for Kreis Steinburg (IZ) = ok1
    Given the letters for license plate are "IZ L"
    Then  the combination should be accepted

  @datadriven @r22
  Scenario: 0138 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R22 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = IZ ; B08 letters for Kreis Steinburg (IZ) = ok1
    Given the letters for license plate are "IZ K"
    Then  the combination should be accepted

  @datadriven @r22
  Scenario: 0139 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R22 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = IZ ; B08 letters for Kreis Steinburg (IZ) = ok1
    Given the letters for license plate are "IZ F"
    Then  the combination should be accepted

  @datadriven @r23
  Scenario: 0140 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R23 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = IZ ; B08 letters for Kreis Steinburg (IZ) = ok2
    Given the letters for license plate are "IZ TG"
    Then  the combination should be accepted

  @datadriven @r23
  Scenario: 0141 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R23 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = IZ ; B08 letters for Kreis Steinburg (IZ) = ok2
    Given the letters for license plate are "IZ UZ"
    Then  the combination should be accepted

  @datadriven @r23
  Scenario: 0142 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R23 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = IZ ; B08 letters for Kreis Steinburg (IZ) = ok2
    Given the letters for license plate are "IZ CZ"
    Then  the combination should be accepted

  @datadriven @r23
  Scenario: 0143 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R23 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = IZ ; B08 letters for Kreis Steinburg (IZ) = ok2
    Given the letters for license plate are "IZ ZK"
    Then  the combination should be accepted

  @datadriven @r23
  Scenario: 0144 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R23 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = IZ ; B08 letters for Kreis Steinburg (IZ) = ok2
    Given the letters for license plate are "IZ KP"
    Then  the combination should be accepted

  @datadriven @negative @r25
  Scenario: 0145 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R25 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = K ; B09 letters for Cologne (K) = vpd
    Given the letters for license plate are "K NS"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r25
  Scenario: 0146 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R25 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = K ; B09 letters for Cologne (K) = vpd
    Given the letters for license plate are "K KZ"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r25
  Scenario: 0147 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R25 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = K ; B09 letters for Cologne (K) = vpd
    Given the letters for license plate are "K HH"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r25
  Scenario: 0148 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R25 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = K ; B09 letters for Cologne (K) = vpd
    Given the letters for license plate are "K AH"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r25
  Scenario: 0149 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R25 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = K ; B09 letters for Cologne (K) = vpd
    Given the letters for license plate are "K SD"
    Then  the combination should be considered socially unacceptable!

  @datadriven @r26
  Scenario: 0150 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R26 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = K ; B09 letters for Cologne (K) = ok1
    Given the letters for license plate are "K X"
    Then  the combination should be accepted

  @datadriven @r27
  Scenario: 0151 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R27 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = K ; B09 letters for Cologne (K) = ok2
    Given the letters for license plate are "K FN"
    Then  the combination should be accepted

  @datadriven @r27
  Scenario: 0152 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R27 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = K ; B09 letters for Cologne (K) = ok2
    Given the letters for license plate are "K VP"
    Then  the combination should be accepted

  @datadriven @r27
  Scenario: 0153 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R27 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = K ; B09 letters for Cologne (K) = ok2
    Given the letters for license plate are "K HW"
    Then  the combination should be accepted

  @datadriven @r27
  Scenario: 0154 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R27 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = K ; B09 letters for Cologne (K) = ok2
    Given the letters for license plate are "K LU"
    Then  the combination should be accepted

  @datadriven @r27
  Scenario: 0155 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R27 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = K ; B09 letters for Cologne (K) = ok2
    Given the letters for license plate are "K WJ"
    Then  the combination should be accepted

  @datadriven @negative @r29
  Scenario: 0156 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R29 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = MO ; B10 letters for Kreis Wesel (MO) = vpd
    Given the letters for license plate are "MO IS"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r29
  Scenario: 0157 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R29 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = MO ; B10 letters for Kreis Wesel (MO) = vpd
    Given the letters for license plate are "MO HJ"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r29
  Scenario: 0158 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R29 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = MO ; B10 letters for Kreis Wesel (MO) = vpd
    Given the letters for license plate are "MO AH"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r29
  Scenario: 0159 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R29 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = MO ; B10 letters for Kreis Wesel (MO) = vpd
    Given the letters for license plate are "MO HH"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r29
  Scenario: 0160 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R29 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = MO ; B10 letters for Kreis Wesel (MO) = vpd
    Given the letters for license plate are "MO SD"
    Then  the combination should be considered socially unacceptable!

  @datadriven @r30
  Scenario: 0161 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R30 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = MO ; B10 letters for Kreis Wesel (MO) = ok1
    Given the letters for license plate are "MO I"
    Then  the combination should be accepted

  @datadriven @r30
  Scenario: 0162 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R30 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = MO ; B10 letters for Kreis Wesel (MO) = ok1
    Given the letters for license plate are "MO A"
    Then  the combination should be accepted

  @datadriven @r30
  Scenario: 0163 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R30 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = MO ; B10 letters for Kreis Wesel (MO) = ok1
    Given the letters for license plate are "MO J"
    Then  the combination should be accepted

  @datadriven @r30
  Scenario: 0164 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R30 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = MO ; B10 letters for Kreis Wesel (MO) = ok1
    Given the letters for license plate are "MO Y"
    Then  the combination should be accepted

  @datadriven @r30
  Scenario: 0165 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R30 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = MO ; B10 letters for Kreis Wesel (MO) = ok1
    Given the letters for license plate are "MO P"
    Then  the combination should be accepted

  @datadriven @r31
  Scenario: 0166 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R31 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = MO ; B10 letters for Kreis Wesel (MO) = ok2
    Given the letters for license plate are "MO TP"
    Then  the combination should be accepted

  @datadriven @r31
  Scenario: 0167 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R31 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = MO ; B10 letters for Kreis Wesel (MO) = ok2
    Given the letters for license plate are "MO HI"
    Then  the combination should be accepted

  @datadriven @r31
  Scenario: 0168 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R31 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = MO ; B10 letters for Kreis Wesel (MO) = ok2
    Given the letters for license plate are "MO WG"
    Then  the combination should be accepted

  @datadriven @r31
  Scenario: 0169 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R31 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = MO ; B10 letters for Kreis Wesel (MO) = ok2
    Given the letters for license plate are "MO EM"
    Then  the combination should be accepted

  @datadriven @r31
  Scenario: 0170 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R31 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = MO ; B10 letters for Kreis Wesel (MO) = ok2
    Given the letters for license plate are "MO TW"
    Then  the combination should be accepted

  @datadriven @negative @r35
  Scenario: 0171 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R35 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = N ; B11 letters for Nuremburg (N) = vpd
    Given the letters for license plate are "N KZ"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r35
  Scenario: 0172 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R35 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = N ; B11 letters for Nuremburg (N) = vpd
    Given the letters for license plate are "N IS"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r35
  Scenario: 0173 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R35 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = N ; B11 letters for Nuremburg (N) = vpd
    Given the letters for license plate are "N SA"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r35
  Scenario: 0174 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R35 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = N ; B11 letters for Nuremburg (N) = vpd
    Given the letters for license plate are "N HJ"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r35
  Scenario: 0175 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R35 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = N ; B11 letters for Nuremburg (N) = vpd
    Given the letters for license plate are "N NS"
    Then  the combination should be considered socially unacceptable!

  @datadriven @r36
  Scenario: 0176 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R36 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = N ; B11 letters for Nuremburg (N) = ok1
    Given the letters for license plate are "N B"
    Then  the combination should be accepted

  @datadriven @r36
  Scenario: 0177 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R36 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = N ; B11 letters for Nuremburg (N) = ok1
    Given the letters for license plate are "N W"
    Then  the combination should be accepted

  @datadriven @r36
  Scenario: 0178 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R36 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = N ; B11 letters for Nuremburg (N) = ok1
    Given the letters for license plate are "N H"
    Then  the combination should be accepted

  @datadriven @r36
  Scenario: 0179 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R36 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = N ; B11 letters for Nuremburg (N) = ok1
    Given the letters for license plate are "N R"
    Then  the combination should be accepted

  @datadriven @r36
  Scenario: 0180 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R36 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = N ; B11 letters for Nuremburg (N) = ok1
    Given the letters for license plate are "N V"
    Then  the combination should be accepted

  @datadriven @r37
  Scenario: 0181 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R37 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = N ; B11 letters for Nuremburg (N) = ok2
    Given the letters for license plate are "N RJ"
    Then  the combination should be accepted

  @datadriven @r37
  Scenario: 0182 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R37 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = N ; B11 letters for Nuremburg (N) = ok2
    Given the letters for license plate are "N DU"
    Then  the combination should be accepted

  @datadriven @r37
  Scenario: 0183 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R37 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = N ; B11 letters for Nuremburg (N) = ok2
    Given the letters for license plate are "N IZ"
    Then  the combination should be accepted

  @datadriven @r37
  Scenario: 0184 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R37 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = N ; B11 letters for Nuremburg (N) = ok2
    Given the letters for license plate are "N XS"
    Then  the combination should be accepted

  @datadriven @r37
  Scenario: 0185 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R37 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = N ; B11 letters for Nuremburg (N) = ok2
    Given the letters for license plate are "N NC"
    Then  the combination should be accepted

  @datadriven @negative @r42
  Scenario: 0186 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R42 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = S ; B12 letters for Stuttgart (S) = vpd
    Given the letters for license plate are "S IS"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r42
  Scenario: 0187 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R42 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = S ; B12 letters for Stuttgart (S) = vpd
    Given the letters for license plate are "S NS"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r42
  Scenario: 0188 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R42 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = S ; B12 letters for Stuttgart (S) = vpd
    Given the letters for license plate are "S SD"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r42
  Scenario: 0189 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R42 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = S ; B12 letters for Stuttgart (S) = vpd
    Given the letters for license plate are "S HH"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r42
  Scenario: 0190 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R42 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = S ; B12 letters for Stuttgart (S) = vpd
    Given the letters for license plate are "S KZ"
    Then  the combination should be considered socially unacceptable!

  @datadriven @r43
  Scenario: 0191 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R43 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = S ; B12 letters for Stuttgart (S) = ok1
    Given the letters for license plate are "S E"
    Then  the combination should be accepted

  @datadriven @r43
  Scenario: 0192 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R43 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = S ; B12 letters for Stuttgart (S) = ok1
    Given the letters for license plate are "S Q"
    Then  the combination should be accepted

  @datadriven @r43
  Scenario: 0193 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R43 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = S ; B12 letters for Stuttgart (S) = ok1
    Given the letters for license plate are "S O"
    Then  the combination should be accepted

  @datadriven @r43
  Scenario: 0194 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R43 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = S ; B12 letters for Stuttgart (S) = ok1
    Given the letters for license plate are "S I"
    Then  the combination should be accepted

  @datadriven @r43
  Scenario: 0195 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R43 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = S ; B12 letters for Stuttgart (S) = ok1
    Given the letters for license plate are "S C"
    Then  the combination should be accepted

  @datadriven @r44
  Scenario: 0196 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R44 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = S ; B12 letters for Stuttgart (S) = ok2
    Given the letters for license plate are "S YY"
    Then  the combination should be accepted

  @datadriven @r44
  Scenario: 0197 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R44 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = S ; B12 letters for Stuttgart (S) = ok2
    Given the letters for license plate are "S EZ"
    Then  the combination should be accepted

  @datadriven @r44
  Scenario: 0198 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R44 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = S ; B12 letters for Stuttgart (S) = ok2
    Given the letters for license plate are "S GI"
    Then  the combination should be accepted

  @datadriven @r44
  Scenario: 0199 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R44 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = S ; B12 letters for Stuttgart (S) = ok2
    Given the letters for license plate are "S AP"
    Then  the combination should be accepted

  @datadriven @r44
  Scenario: 0200 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R44 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = S ; B12 letters for Stuttgart (S) = ok2
    Given the letters for license plate are "S BD"
    Then  the combination should be accepted

  @datadriven @negative @r46
  Scenario: 0201 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R46 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SU ; B13 letters for Rhein-Sieg-Kreis (SU) = vpd
    Given the letters for license plate are "SU AH"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r46
  Scenario: 0202 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R46 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SU ; B13 letters for Rhein-Sieg-Kreis (SU) = vpd
    Given the letters for license plate are "SU HJ"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r46
  Scenario: 0203 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R46 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SU ; B13 letters for Rhein-Sieg-Kreis (SU) = vpd
    Given the letters for license plate are "SU SA"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r46
  Scenario: 0204 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R46 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SU ; B13 letters for Rhein-Sieg-Kreis (SU) = vpd
    Given the letters for license plate are "SU SD"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r46
  Scenario: 0205 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R46 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SU ; B13 letters for Rhein-Sieg-Kreis (SU) = vpd
    Given the letters for license plate are "SU HH"
    Then  the combination should be considered socially unacceptable!

  @datadriven @r47
  Scenario: 0206 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R47 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SU ; B13 letters for Rhein-Sieg-Kreis (SU) = ok1
    Given the letters for license plate are "SU G"
    Then  the combination should be accepted

  @datadriven @r47
  Scenario: 0207 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R47 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SU ; B13 letters for Rhein-Sieg-Kreis (SU) = ok1
    Given the letters for license plate are "SU S"
    Then  the combination should be accepted

  @datadriven @r47
  Scenario: 0208 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R47 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SU ; B13 letters for Rhein-Sieg-Kreis (SU) = ok1
    Given the letters for license plate are "SU M"
    Then  the combination should be accepted

  @datadriven @r47
  Scenario: 0209 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R47 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SU ; B13 letters for Rhein-Sieg-Kreis (SU) = ok1
    Given the letters for license plate are "SU L"
    Then  the combination should be accepted

  @datadriven @r47
  Scenario: 0210 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R47 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SU ; B13 letters for Rhein-Sieg-Kreis (SU) = ok1
    Given the letters for license plate are "SU D"
    Then  the combination should be accepted

  @datadriven @r48
  Scenario: 0211 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R48 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SU ; B13 letters for Rhein-Sieg-Kreis (SU) = ok2
    Given the letters for license plate are "SU JP"
    Then  the combination should be accepted

  @datadriven @r48
  Scenario: 0212 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R48 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SU ; B13 letters for Rhein-Sieg-Kreis (SU) = ok2
    Given the letters for license plate are "SU DQ"
    Then  the combination should be accepted

  @datadriven @r48
  Scenario: 0213 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R48 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SU ; B13 letters for Rhein-Sieg-Kreis (SU) = ok2
    Given the letters for license plate are "SU IW"
    Then  the combination should be accepted

  @datadriven @r48
  Scenario: 0214 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R48 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SU ; B13 letters for Rhein-Sieg-Kreis (SU) = ok2
    Given the letters for license plate are "SU YB"
    Then  the combination should be accepted

  @datadriven @r48
  Scenario: 0215 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R48 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SU ; B13 letters for Rhein-Sieg-Kreis (SU) = ok2
    Given the letters for license plate are "SU MH"
    Then  the combination should be accepted

  @datadriven @negative @r50
  Scenario: 0216 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R50 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SK ; B14 letters for Saalekreis (SK) = vpd
    Given the letters for license plate are "SK NS"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r50
  Scenario: 0217 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R50 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SK ; B14 letters for Saalekreis (SK) = vpd
    Given the letters for license plate are "SK IS"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r50
  Scenario: 0218 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R50 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SK ; B14 letters for Saalekreis (SK) = vpd
    Given the letters for license plate are "SK AH"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r50
  Scenario: 0219 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R50 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SK ; B14 letters for Saalekreis (SK) = vpd
    Given the letters for license plate are "SK SA"
    Then  the combination should be considered socially unacceptable!

  @datadriven @negative @r50
  Scenario: 0220 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R50 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SK ; B14 letters for Saalekreis (SK) = vpd
    Given the letters for license plate are "SK HJ"
    Then  the combination should be considered socially unacceptable!

  @datadriven @r51
  Scenario: 0221 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R51 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SK ; B14 letters for Saalekreis (SK) = ok1
    Given the letters for license plate are "SK N"
    Then  the combination should be accepted

  @datadriven @r51
  Scenario: 0222 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R51 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SK ; B14 letters for Saalekreis (SK) = ok1
    Given the letters for license plate are "SK Z"
    Then  the combination should be accepted

  @datadriven @r51
  Scenario: 0223 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R51 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SK ; B14 letters for Saalekreis (SK) = ok1
    Given the letters for license plate are "SK T"
    Then  the combination should be accepted

  @datadriven @r51
  Scenario: 0224 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R51 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SK ; B14 letters for Saalekreis (SK) = ok1
    Given the letters for license plate are "SK F"
    Then  the combination should be accepted

  @datadriven @r51
  Scenario: 0225 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R51 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SK ; B14 letters for Saalekreis (SK) = ok1
    Given the letters for license plate are "SK K"
    Then  the combination should be accepted

  @datadriven @r52
  Scenario: 0226 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R52 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SK ; B14 letters for Saalekreis (SK) = ok2
    Given the letters for license plate are "SK CG"
    Then  the combination should be accepted

  @datadriven @r52
  Scenario: 0227 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R52 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SK ; B14 letters for Saalekreis (SK) = ok2
    Given the letters for license plate are "SK NY"
    Then  the combination should be accepted

  @datadriven @r52
  Scenario: 0228 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R52 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SK ; B14 letters for Saalekreis (SK) = ok2
    Given the letters for license plate are "SK PX"
    Then  the combination should be accepted

  @datadriven @r52
  Scenario: 0229 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R52 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SK ; B14 letters for Saalekreis (SK) = ok2
    Given the letters for license plate are "SK EO"
    Then  the combination should be accepted

  @datadriven @r52
  Scenario: 0230 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R52 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = SK ; B14 letters for Saalekreis (SK) = ok2
    Given the letters for license plate are "SK ZM"
    Then  the combination should be accepted

  @datadriven @r55
  Scenario: 0231 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R55 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = WAF ; B15 letters for Kreis Warendorf (WAF) = ok1
    Given the letters for license plate are "WAF U"
    Then  the combination should be accepted

  @datadriven @r55
  Scenario: 0232 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R55 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = WAF ; B15 letters for Kreis Warendorf (WAF) = ok1
    Given the letters for license plate are "WAF X"
    Then  the combination should be accepted

  @datadriven @r55
  Scenario: 0233 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R55 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = WAF ; B15 letters for Kreis Warendorf (WAF) = ok1
    Given the letters for license plate are "WAF T"
    Then  the combination should be accepted

  @datadriven @r55
  Scenario: 0234 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R55 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = WAF ; B15 letters for Kreis Warendorf (WAF) = ok1
    Given the letters for license plate are "WAF H"
    Then  the combination should be accepted

  @datadriven @r55
  Scenario: 0235 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R55 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = WAF ; B15 letters for Kreis Warendorf (WAF) = ok1
    Given the letters for license plate are "WAF K"
    Then  the combination should be accepted

  @datadriven @r56
  Scenario: 0236 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R56 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = WAF ; B15 letters for Kreis Warendorf (WAF) = ok2
    Given the letters for license plate are "WAF KQ"
    Then  the combination should be accepted

  @datadriven @r56
  Scenario: 0237 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R56 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = WAF ; B15 letters for Kreis Warendorf (WAF) = ok2
    Given the letters for license plate are "WAF FH"
    Then  the combination should be accepted

  @datadriven @r56
  Scenario: 0238 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R56 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = WAF ; B15 letters for Kreis Warendorf (WAF) = ok2
    Given the letters for license plate are "WAF GQ"
    Then  the combination should be accepted

  @datadriven @r56
  Scenario: 0239 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R56 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = WAF ; B15 letters for Kreis Warendorf (WAF) = ok2
    Given the letters for license plate are "WAF HX"
    Then  the combination should be accepted

  @datadriven @r56
  Scenario: 0240 combination_of_letters_socially_acceptable
    combination_of_letters_socially_acceptable
    R56 : B01 kind of distinguishing mark = concrete ; B02 distinguishing mark = WAF ; B15 letters for Kreis Warendorf (WAF) = ok2
    Given the letters for license plate are "WAF QE"
    Then  the combination should be accepted
