import pandas as pd
import random
import pathlib

from ..common.finance import Finance as gf

from typing import Literal

class Finance(object):
    CLASS_PATH = pathlib.Path(__file__).parent.resolve()

    @staticmethod
    def get_account_data(item_data: dict) -> dict:
        retval = {}
        data_banks = pd.read_csv(f"{Finance.CLASS_PATH}/data/finance_banks.csv", index_col=False, sep=',', low_memory=False, 
                                 dtype= {"blz":str, "city":str, "ags":str, "name":str, "pan":str})
        if(None != item_data.get("location.ags")):
            result = data_banks.query(f"ags == '{item_data.get("location.ags")}'")
            if(0 < result.shape[0]):
                data_banks = result
            else:
                result = data_banks.query(f"ags.str.startswith('{str(item_data.get("location.ags"))[0:5]}')")
                if(0 < result.shape[0]):
                    data_banks = result
        row = random.randrange(0, data_banks.shape[0])
        retval["finance.bank_name"] = data_banks.iat[row,3]
        data_bics = pd.read_csv(f"{Finance.CLASS_PATH}/data/finance_codes_blz_bic.csv", index_col=False, sep=',', low_memory=False, 
                                dtype= {"blz":str, "bic":str})
        data_bics = data_bics.query('blz == "' + str(data_banks.iat[row, 0]) + '"')
        retval["finance.bank_bic"] = data_bics.iat[0,1]
        account = str(random.randrange(100000,10000000000)).zfill(10)
        retval["finance.bank_iban"] = gf.create_iban("DE", str(data_banks.iat[row,0]) + account )
        return retval


