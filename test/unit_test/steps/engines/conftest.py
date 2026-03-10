import re
import ast
import pathlib
from typing import Literal

import pytest
import warnings

from pytest_bdd import given, when, then, parsers

from ...mock.syndatamock import SynDataMock


instance_mock = SynDataMock()
pytest_bdd_feature = ""
pytest_bdd_scenario = ""

PATH = pathlib.Path(__file__).parent.resolve()

# Fixtures

@pytest.fixture
def engine_fixture():
    data = {
        "instance":instance_mock, 
        "configuration":{
            "mode":"default", 
            "localization":"en_US", 
            "logging":False, 
            "logfile":None, 
            "replay_file":None
        },
        "engine":{"localization":"en_US", "keyword":"", "item":"", "item_data":{}}}
    return data


# Hooks
def pytest_bdd_step_error(request, feature, scenario, step, step_func, step_func_args, exception):
    if("engine_fixture" in request.fixturenames):
        instance = request.getfixturevalue("engine_fixture")["instance"]
        print(f"trace messages:\n{instance.trace[["level", "message"]].values}")

def pytest_bdd_before_step(request, feature, scenario, step, step_func):
    instance_mock.set_test_suite(str(feature.name))
    instance_mock.set_test_case(str(scenario.name))

@given(parsers.cfparse('SynData is in "{mode}" mode and the localization is "{localization}"'))
def prepare_instance(engine_fixture, mode:str, localization:str):
    instance = engine_fixture["instance"]
    engine_fixture["configuration"]["mode"] = mode
    engine_fixture["configuration"]["localization"] = localization
    instance.set_configuration(engine_fixture["configuration"]["mode"], engine_fixture["configuration"]["localization"], engine_fixture["configuration"]["logging"], engine_fixture["configuration"]["logfile"], engine_fixture["configuration"]["replay_file"])

@given(parsers.cfparse('SynData is configured with:'))
def prepare_instance_with_datatable(engine_fixture, datatable):
    engine_fixture["log_counter"] = {}
    engine_fixture["log_counter"]["info"] = engine_fixture["instance"].get_internal_log_count("INFO")
    engine_fixture["log_counter"]["debug"] = engine_fixture["instance"].get_internal_log_count("DEBUG")
    engine_fixture["log_counter"]["warn"] = engine_fixture["instance"].get_internal_log_count("WARN")
    configuration_items = ["mode", "localization", "logging", "logfile", "replay_file"]
    for item in configuration_items:
        if (0 < datatable[0].count(item)):
            match(item):
                case "replay_file":
                    engine_fixture["configuration"][item] = f"{PATH}/../../../data/unit_tests/{datatable[1][datatable[0].index(item)]}"
                case _:
                    engine_fixture["configuration"][item] = datatable[1][datatable[0].index(item)]
    instance = engine_fixture["instance"]
    instance.set_configuration(engine_fixture["configuration"]["mode"], engine_fixture["configuration"]["localization"], engine_fixture["configuration"]["logging"], engine_fixture["configuration"]["logfile"], engine_fixture["configuration"]["replay_file"])


@given(parsers.cfparse('that logging for SynData should be done in "{logfile}"'))
def prepare_instance_activate_logging(engine_fixture, logfile):
    engine_fixture["log_counter"] = {}
    engine_fixture["log_counter"]["info"] = engine_fixture["instance"].get_internal_log_count("INFO")
    engine_fixture["log_counter"]["debug"] = engine_fixture["instance"].get_internal_log_count("DEBUG")
    engine_fixture["log_counter"]["warn"] = engine_fixture["instance"].get_internal_log_count("WARN")
    engine_fixture["configuration"]["logging"] = True
    engine_fixture["configuration"]["logfile"] = logfile
    engine_fixture["configuration"]["logpath"] = engine_fixture["instance"].get_rbt_variable_value("${OUTPUT DIR}")
    engine_fixture["instance"].set_configuration( mode=engine_fixture["configuration"]["mode"] , 
                                                  localization=engine_fixture["configuration"]["localization"], 
                                                  logging=False, 
                                                  logfile=None, 
                                                  replay_file=None  )

@given(parsers.cfparse('that no logging for SynData should be done'))
def prepare_instance_deactivate_logging(engine_fixture):
    engine_fixture["log_counter"] = {}
    engine_fixture["log_counter"]["info"] = engine_fixture["instance"].get_internal_log_count("INFO")
    engine_fixture["log_counter"]["debug"] = engine_fixture["instance"].get_internal_log_count("DEBUG")
    engine_fixture["log_counter"]["warn"] = engine_fixture["instance"].get_internal_log_count("WARN")
    engine_fixture["configuration"]["logging"] = False
    engine_fixture["instance"].set_configuration( mode=engine_fixture["configuration"]["mode"] , 
                                                  localization=engine_fixture["configuration"]["localization"], 
                                                  logging=engine_fixture["configuration"]["logging"], 
                                                  logfile=engine_fixture["configuration"]["logfile"], 
                                                  replay_file=engine_fixture["configuration"]["replay_file"]  )


@given(parsers.cfparse('in SynData the context "{context}" with focus "{focus}" and localization "{localization}" is set'))
def set_context(engine_fixture, context: str, focus: Literal["global", "suite", "test"], localization: str ):
    engine_fixture["instance"].Set_Context(context=context, focus=focus, localization=localization)
    assert context == engine_fixture["instance"].Get_Context()
                                          
@given(parsers.cfparse('no context is set'))
@given(parsers.cfparse('in SynData no context is set'))
def instance_release_context(engine_fixture):
    engine_fixture["instance"].Release_Context()
    assert None == engine_fixture["instance"].context

@given(parsers.cfparse('in SynData items are stored'))
def instance_store_data(engine_fixture, datatable):
    instance = engine_fixture["instance"]
    data_json = ast.literal_eval(datatable[1][datatable[0].index("data_json")])
    for key in data_json.keys():
        instance.add_item(key, data_json.get(key))

@then(parsers.cfparse('there must be no entry in the internal log'))
def check_instance_rbt_log_empty(engine_fixture):
    assert int(engine_fixture["log_counter"]["info"]) == int(engine_fixture["instance"].get_internal_log_count("INFO"))

@then(parsers.cfparse('rule from decision table "{table}" has been executed'))
@then(parsers.cfparse('rule "{rule:Number}" of "{rules:Number}" from decision table "{table}" has been executed', extra_types=dict(Number=int)))
def check_internal_debug_log(engine_fixture, rule:int = -1, rules:int = -1, table:str = ""):
    if((-1 == rule) and (-1 == rules)):
        exp_regex = f"^\\[SynData\\] Decision table {table}.+\\srule \\d+ of \\d+ has been executed"
    else:
        exp_regex = f"^\\[SynData\\] Decision table {table}.+\\srule {rule} of {rules} has been executed"
    debug_lines_before = int(engine_fixture["log_counter"]["debug"])
    debug_lines_now = int(engine_fixture["instance"].get_internal_log_count("DEBUG"))
    if(debug_lines_before < debug_lines_now):
        check_marker = False
        log = engine_fixture["instance"].trace.query("level == 'DEBUG'")
        for row in range(debug_lines_before, debug_lines_now):
            check_marker |= (None != re.match(exp_regex, str(log["message"].iloc[row])))
        assert check_marker, f"There is no debug message found! ({exp_regex})"
    else:
        assert False, "During test execution no debug message was added!"

@then(parsers.cfparse('the "{level}" with id "{message_id}" must be in the internal log'))
def check_internal_log_for_message_id(engine_fixture, level:str, message_id:str):
    match(level.lower()):
        case "warn" | "warning": 
            level = "warn"
        case "debug" | "debug message":
            level = "debug"
        case _:
            level = "info"
    mes_count_start = int(engine_fixture["log_counter"][level])
    mes_count_end = int(engine_fixture["instance"].get_internal_log_count(level.upper()))
    if(mes_count_start < mes_count_end):
        check_marker = False
        log = engine_fixture["instance"].trace.query(f"level == '{level.upper()}'")
        for row in range(mes_count_start, mes_count_end):
            check_marker |= (None != re.match(f"^\\[{message_id}\\].*$", str(log["message"].iloc[row])))
        assert check_marker, f"The message '{message_id}' with level '{level.upper()}' was not found!"
    else:
        assert False, f"During test execution no '{level.upper()}' message was added!"

@then(parsers.cfparse('the result for "{item}" should match "{exp_regex}"'))
def check_result_by_regex(engine_fixture, item, exp_regex):
    assert None != re.match(exp_regex, engine_fixture["result"])

@then(parsers.cfparse('the result for "{item}" should be equal to "{exp_value}"'))
def check_result_by_equals(engine_fixture, item, exp_value):
    assert str(exp_value) == str(engine_fixture["result"]) , f"the result for '{item}' was '{engine_fixture["result"]}' and not '{exp_value}'!"

@then(parsers.cfparse('the internal storage for the following items should be checked:'))
def check_items_in_storage(engine_fixture, datatable):
    instance = engine_fixture["instance"]
    data_json = ast.literal_eval(datatable[1][datatable[0].index("data_json")])
    for key in data_json.keys():
        match(data_json.get(key)):
            case "#stored":
                assert instance.is_item_stored(key)
            case "#retval":
                assert engine_fixture["result"] == instance.get_item(key)
            case _:
                assert data_json.get(key) == instance.get_item(key)

#rule "${*LFET.Regel}" of "${*LFET.Regeln}" has been executed
#instance.add_rbt_log_message("[SynData] Decision table $$EtName ($$Version), rule $$Rule of $$Rules has been executed", "DEBUG")