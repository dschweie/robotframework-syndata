import pytest
import re
from pytest_bdd import scenarios, given, when, then, scenarios, parsers


from SynData.common.finance import Finance

CONST_REGEX_COUNTRY_CODE = "^(A[DEFGLMORTUZ])|(B[ABDEFGHIJNORSTWYZ])|(C[ADFGHILMNORUVYZ])|(D[EJKMOZ])|(E[CEGRST])|(F[IJMR])|(G[ABDEHMNQRTWY])|(H[NRTU])|(I[DELNQRST])|(J[MOP])|(K[EGHIMNPRWZ])|(L[ABCIKRSTUVY])|(M[ACDEGHKLMNRTUVWXYZ])|(N[AEGILOPRZ])|(OM)|(P[AEGHKLTWY])|(QA)|(R[OSUW])|(S[ABCDEGIKLMNORSTVYZ])|(T[DGHJLMNORTVZ])|(U[AGSYZ])|(V[CENU])|(WS)|(YE)|(Z[AMW])$"

scenarios('../../features/common/finance_all_create_iban.feature')

@pytest.fixture
def fin_parameters():
    return {"country":"", "sequence":""}

# @then(parsers.cfparse('"{text}" should be translated to "{expected_code}"'))

@given(parsers.cfparse('the country code is "{country_code}"'))
def set_fin_parameter_country_code(fin_parameters, country_code):
    fin_parameters["country"] = country_code

@given(parsers.cfparse('the payload is "{sequence}"'))
def set_fin_parameter_sequence(fin_parameters, sequence):
    fin_parameters["sequence"] = sequence

@then(parsers.cfparse('the IBAN should be "{expected_iban}"'))
def build_iban(fin_parameters, expected_iban):
    assert re.match(CONST_REGEX_COUNTRY_CODE, fin_parameters.get("country")), f"The string '{fin_parameters.get("country")}' is not a valid Alpha-2-Code for an existing country."
    assert re.match("^[0-9]{1,30}$", fin_parameters.get("sequence")), f"The character string '{fin_parameters.get("sequence")}' may contain a maximum of 30 characters and only numbers."
    # later version must also support letters in sequence:
    # assert re.match(fin_parameters.get("sequence"), "^[A-Z0-9]{30}$"), f"The character string '{fin_parameters.get("sequence")}' may contain a maximum of 30 characters and may only contain letters (A-Z) or numbers."
    assert Finance.create_iban(fin_parameters.get("country"), fin_parameters.get("sequence")) == expected_iban
    
