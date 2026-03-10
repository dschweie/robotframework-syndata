import ast
from pytest_bdd import given, when, then, parsers, scenarios
from SynData.de_DE.item_builder_engine_germany import ItemBuilderEngineGermany



scenarios('../../features/engines/ItemBuilderEngineGermany.testcases.feature')

@when(parsers.cfparse('the request for "{item}" is called'))
def execute(engine_fixture, item):
    engine_fixture["result"] = ItemBuilderEngineGermany.execute(
                                    instance=engine_fixture["instance"], 
                                    localization="de_DE", 
                                    keyword="Get Address", item=item, item_data={} 
                                )

@when(parsers.cfparse('the builder engine is called:'))
def execute_with_table(engine_fixture, datatable):
    p_keyword = datatable[1][datatable[0].index("keyword")]
    p_item = datatable[1][datatable[0].index("item")]
    p_item_data = ast.literal_eval(datatable[1][datatable[0].index("item_data")])
    engine_fixture["result"] = ItemBuilderEngineGermany.execute(
                                    instance=engine_fixture["instance"], 
                                    localization="de_DE", 
                                    keyword=p_keyword, 
                                    item=p_item, 
                                    item_data=p_item_data
                                )


