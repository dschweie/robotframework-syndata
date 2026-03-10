import re
import datetime
import pathlib
import pandas as pd
from pandas import Timestamp
from SynData import SynData

class SynDataMock(SynData):
    
    def __init__(self):
        super().__init__()
        self.trace = pd.DataFrame(columns=["timestamp","level","message"])
        self.test_suite_name = ""
        self.test_case_name = ""


    def add_rbt_log_message(self, message: str, level):
        self.trace.loc[len(self.trace)] = [pd.Timestamp(datetime.datetime.now().timestamp(), unit="s"), level, message]

    def get_rbt_variable_value(self, variable: str) -> str:
        match variable:
            case "${SUITE NAME}":
                return str(self.test_suite_name)
            case "${TEST NAME}":
                return str(self.test_case_name)
            case "${OUTPUT DIR}":
                return f"{pathlib.Path(__file__).parent.resolve()}/../../../results/"
            case _: 
                x = re.findall("\\$\\{(.*)\\}", variable)
                if(0 == len(x)):
                    return "None"
                else:
                    return x[0]

    def get_rbt_log_count(self) -> int:
        return len(self.trace)
    
    def get_internal_log_count(self, level:str):
        match(level.upper):
            case "ALL":
                retval = self.trace
            case _:
                retval = self.trace.query(f"level == '{level}'")
        return len(retval)
                
    def set_test_suite(self, name:str):
        self.test_suite_name = name

    def set_test_case(self, name:str):
        self.test_case_name = name

    #def get_current_test_suite(self):
    #    return self.test_suite_name

    #def get_current_test_case(self):
    #    return self.test_case_name
    