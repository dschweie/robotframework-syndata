import ast
import re
import pytest
import pandas as pd
from pytest_bdd import given, when, then, parsers, scenarios
from SynData.item_builder_engine import ItemBuilderEngine

item_builer_engine = ItemBuilderEngine()

scenarios('../../features/engines/ItemBuilderEngine.testcases.feature')

@pytest.fixture
def ibe_engine_fixture(engine_fixture):
    engine_fixture["sut"] = item_builer_engine
    return engine_fixture


@given(parsers.cfparse('the replay file contains the following data:'))
def load_data_into_replay_file(ibe_engine_fixture, datatable):
    instance = ibe_engine_fixture["instance"]
    list_timestamps = []
    list_items = []
    list_values = []
    list_test_suites = []
    list_test_cases = []
    list_keywords = []
    for row in range (1, len(datatable)):
        list_timestamps.append("2026-02-05 09:00:00+01:00")
        list_items.append("")
        list_values.append("")
        list_test_suites.append("Test Suite")
        list_test_cases.append("Test Case")
        list_keywords.append("")
        for col in range (len(datatable[0])):
            match(str(datatable[0][col])):
                case "timestamp":
                    list_timestamps[-1] = datatable[row][col]
                case "item":
                    list_items[-1] = datatable[row][col]
                case "value":
                    list_values[-1] = datatable[row][col]
                case "test_suite":
                    match(datatable[row][col]):
                        case "#current":
                            list_test_suites[-1] = instance.get_current_test_suite()
                        case _:
                            list_test_suites[-1] = datatable[row][col]
                case "test_case":
                    match(datatable[row][col]):
                        case "#current":
                            list_test_cases[-1] = instance.get_current_test_case()
                        case _:
                            list_test_cases[-1] = datatable[row][col]
                case "keyword":
                    list_keywords[-1] = datatable[row][col]

        pass
    data = pd.DataFrame( {"timestamp":list_timestamps, "item":list_items, "value":list_values, "test_suite":list_test_suites, "test_case":list_test_cases, "keyword":list_keywords } )
    data.to_csv(instance.get_replay_file(), index_label="index")

@given(parsers.cfparse('data for given test case is read'))
def read_replay_file(ibe_engine_fixture):
    instance = ibe_engine_fixture["instance"]
    sut = ibe_engine_fixture["sut"]
    sut.init_first_row(instance)
    

@given(parsers.cfparse('the builder engine is called:'))
@when(parsers.cfparse('the builder engine is called:'))
def execute_with_table(ibe_engine_fixture, datatable):
    p_keyword = datatable[1][datatable[0].index("keyword")]
    p_item = datatable[1][datatable[0].index("item")]
    p_item_data = ast.literal_eval(datatable[1][datatable[0].index("item_data")])
    fix_instance = ibe_engine_fixture["instance"]
    fix_sut = ibe_engine_fixture["sut"]
    ibe_engine_fixture["result"] = fix_sut.execute(
                                    instance=fix_instance, 
                                    localization=fix_instance.get_current_localization(), 
                                    keyword=p_keyword, 
                                    item=p_item, 
                                    item_data=p_item_data
                                )
