import pytest
import re
from pytest_bdd import scenarios, given, when, then, scenarios, parsers

from SynData.de_DE.person import Soldier


scenarios('../../features/de_de/person/')

@pytest.fixture
def person_parameters():
    item_data = {}
    return {"item_data":item_data, "min":1 , "max":100, "mode":"all"}

@given(parsers.cfparse('the value "{value}" is set for the "{parameter}" parameter'))
def set_parameter(person_parameters: dict, parameter:str, value:str):
    person_parameters["item_data"][parameter] = value

@when(parsers.cfparse('I want the generator to build a Personal Identification Number'))
def generate_personal_identification_number(person_parameters):
    print(person_parameters.get("item_data"))
    person_parameters["result"] = Soldier.get_personal_identification_number(person_parameters.get("item_data", {}))

@when(parsers.cfparse('the personal identification number starts with "{value}"'))
def store_part_pk(person_parameters: dict, value:str):
    person_parameters["pk_part"] = value

@then(parsers.cfparse('the syntax should match "{expected_regex}"'))
def check_personal_identification_number_by_regex(person_parameters, expected_regex):
    assert re.match(expected_regex, person_parameters["result"])

@then(parsers.cfparse('then the check digit should be "{expected_digit}"'))
def check_check_digit_personal_identification_number(person_parameters: dict[str, str], expected_digit:str):
    got_digit = Soldier.calculate_check_digit_personal_identification_number(person_parameters["pk_part"])
    assert got_digit == expected_digit
