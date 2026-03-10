import pytest

from pytest_bdd import given

from ..mock.syndatamock import SynDataMock


sut = SynDataMock()

# Fixtures

@pytest.fixture
def syndata():
    return sut

def pytest_bdd_step_error(request, feature, scenario, step, step_func, step_func_args, exception):
    print(sut.data)
    print(sut.context)

# Hooks
def pytest_bdd_before_scenario(request, feature, scenario):
    sut.set_test_suite(feature)
    sut.set_test_case(scenario)
    

