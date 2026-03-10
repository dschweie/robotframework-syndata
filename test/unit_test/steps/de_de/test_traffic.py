import pytest
import re
from pytest_bdd import scenarios, given, when, then, scenarios, parsers

from SynData.de_DE.traffic import Traffic


scenarios('../../features/de_de/traffic/')

@pytest.fixture
def traffic_parameters():
    return {}



@given(parsers.cfparse('the official municipality code should be "{ags_code}"'))
def set_filter_ags_location(traffic_parameters, ags_code):
    if(None == traffic_parameters.get("item_data", None)):
        traffic_parameters["item_data"] = {}    
    traffic_parameters["item_data"]["location.ags"] = ags_code

@given(parsers.cfparse('the letters for license plate are "{letters}"'))
def set_letters_license_plate(traffic_parameters, letters):
    traffic_parameters["letters"] = letters

@when(parsers.cfparse('a license plate string is generated for "{kind}" vehicle'))
@when(parsers.cfparse('a license plate string is generated a standard vehicle'))
def generate_random_license_plate(traffic_parameters, kind="standard"):
    match (kind.lower()):
        case "electric": 
            traffic_parameters["result"] = Traffic.compile_license_plate_electric_vehicle(traffic_parameters.get("item_data",{}))
        case "historic": 
            traffic_parameters["result"] = Traffic.compile_license_plate_historic_vehicle(traffic_parameters.get("item_data",{}))
        case _: 
            traffic_parameters["result"] = Traffic.compile_license_plate_standard(traffic_parameters.get("item_data",{}))

@then(parsers.cfparse('the license plate string should match "{expected_regex}"'))
def check_result_by_regex(traffic_parameters, expected_regex):
    assert re.match(expected_regex, traffic_parameters.get("result",""))

@then(parsers.cfparse('the combination of letters and numbers must be socially acceptable'))
def check_result_for_acceptance(traffic_parameters):
    assert not re.match(r"^((.{1,3}\s(AH|HH|HJ|IS|KZ|NS|SA|SS|SD))|(S\s(A|S|D|ED))|(K\sZ)|(H\sJ)|(N\s(PD|S[U]?))|(WAF\sFE)|(SK\sIN)|(IZ\sAN)|(HEI\sL)|(SU\sFF)|(BUL\sLE)|(AC\sAB)|(MO\sRD))\s(((8)*[18]8(8)*)|(0\d*))[EH]?$", traffic_parameters.get("result", ""))

@then(parsers.cfparse('the combination should be accepted'))
def check_letters_accepted(traffic_parameters):
    assert Traffic.is_combination_of_letters_socially_acceptable(traffic_parameters["letters"])

@then(parsers.cfparse('the combination should be considered socially unacceptable!'))
def check_letters_socially_unacceptable(traffic_parameters):
    assert not Traffic.is_combination_of_letters_socially_acceptable(traffic_parameters["letters"])

@then(parsers.cfparse('the result should be an empty string'))
def check_empty_result(traffic_parameters):
    assert "" == traffic_parameters.get("result")

