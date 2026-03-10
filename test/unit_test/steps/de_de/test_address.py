import pytest
import re
from pytest_bdd import scenarios, given, when, then, scenarios, parsers

from SynData.de_DE.address import Address


scenarios('../../features/de_de/address/')

@pytest.fixture
def adr_parameters():
    item_data = {}
    return {"item_data":item_data, "min":1 , "max":100, "mode":"all"}



@given(parsers.cfparse('the minimum should be "{min:Number}"', extra_types={"Number": int}))
def set_adr_parameter_min(adr_parameters, min):
    adr_parameters["min"] = min

@given(parsers.cfparse('the maximum should be "{max:Number}"', extra_types={"Number": int}))
def set_adr_parameter_max(adr_parameters, max):
    adr_parameters["max"] = max

@given(parsers.cfparse('the mode should be "{mode}"'))
def set_adr_parameter_mode(adr_parameters, mode):
    adr_parameters["mode"] = mode

@when(parsers.cfparse('a random house number is generated'))
def build_random_house_number(adr_parameters):
    adr_parameters["result"] = Address.build_random_house_number(adr_parameters.get("min"),adr_parameters.get("max"),adr_parameters.get("mode"))

@then(parsers.cfparse('the syntax should match "{expected_regex}"'))
def check_house_number_by_regex(adr_parameters, expected_regex):
    assert re.match(expected_regex, adr_parameters["result"])

@then(parsers.cfparse('the house number should be empty'))
def check_house_number_empty(adr_parameters):
    assert adr_parameters["result"] == ""


@given(parsers.cfparse('no filter statements are set'))
def set_adr_location_filter_empty(adr_parameters):
    adr_parameters["item_data"] = {}

@given(parsers.cfparse('the location is to be in the state of "{state_code}"'))
def set_adr_location_filter_state_code(adr_parameters, state_code):
    adr_parameters["item_data"]["filter.state_code"] = state_code

@given(parsers.cfparse('the location is to be in the city of "{city}"'))
def set_adr_location_filter_city(adr_parameters, city):
    adr_parameters["item_data"]["filter.city"] = city

@when(parsers.cfparse('a random location is generated based on ags'))
def build_random_location(adr_parameters):
    adr_parameters["result"] = Address.get_location(adr_parameters.get("item_data", {}))
    assert adr_parameters["result"] != None

@then(parsers.cfparse('the location should match "{expected_regex}"'))
def check_location_by_regex(adr_parameters, expected_regex):
    assert re.match(expected_regex, adr_parameters["result"])

@then(parsers.cfparse('the location should be "{expected_value}"'))
def check_location_by_value(adr_parameters, expected_value):
    assert expected_value == adr_parameters["result"]

@then(parsers.cfparse('the location should be empty'))
def check_location_empty(adr_parameters):
    assert adr_parameters["result"] == ""

