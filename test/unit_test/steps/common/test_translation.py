from pytest_bdd import (
    given,
    scenario,
    then,
    when,
    scenarios,
    parsers
)

from SynData.common.country import Country

scenarios('../../features/common/country_de_translate_to_code.feature')

@then(parsers.cfparse('"{text}" should be translated to "{expected_code}"'))
def check_translate_to_code(text, expected_code):
    assert Country.translate_to_state_code(text) == expected_code
