import ast
import re
from pytest_bdd import given, when, then, parsers, scenarios
from SynData.common.item_builder_engine_faker import ItemBuilderEngineFaker

scenarios('../../features/engines/ItemBuilderEngineFaker.testcases.feature')

@when(parsers.cfparse('the builder engine is called:'))
def execute_with_table(engine_fixture, datatable):
    p_keyword = datatable[1][datatable[0].index("keyword")]
    p_item = datatable[1][datatable[0].index("item")]
    p_item_data = ast.literal_eval(datatable[1][datatable[0].index("item_data")])
    engine_fixture["result"] = ItemBuilderEngineFaker.execute(
                                    instance=engine_fixture["instance"], 
                                    localization=engine_fixture["instance"].get_current_localization(), 
                                    keyword=p_keyword, 
                                    item=p_item, 
                                    item_data=p_item_data
                                )
    
#the internal log should contain "info" message "not_consistent"
@then(parsers.cfparse('the internal log should contain "{log_level}" message "{message_category}"'))
def check_internal_log_for_message(engine_fixture, log_level:str, message_category:str):
    log_message = ""
    check_equals = True
    match(message_category):
        case "not_consistent":
            log_message = "The generated test data is not necessarily consistent with other dependent values!"
        case "not_supported":
            log_message = 'The keyword "[^"]+" is not supported for localization "[^"]+".'
            check_equals = False
    log_lines_before = int(engine_fixture["log_counter"][log_level.lower()])
    log_lines_now = int(engine_fixture["instance"].get_internal_log_count(log_level.upper()))
    if(log_lines_before < log_lines_now):
        check_marker = False
        log = engine_fixture["instance"].trace.query(f"level == '{log_level.upper()}'")
        for row in range(log_lines_before, log_lines_now):
            if(check_equals):
                check_marker |= (log_message == str(log["message"].iloc[row]))
            else:
                check_marker |= (None != re.match(log_message, str(log["message"].iloc[row])))
        assert check_marker, f"There is no {log_level} message with category '{message_category}'!"
    else:
        assert False, f"During test execution no {log_level} message was added!"
