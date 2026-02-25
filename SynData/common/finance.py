import pandas as pd
import random
import pathlib
import os
import string

class Finance(object):

    CLASS_PATH = pathlib.Path(__file__).parent.resolve()
    DICT_NUMBERS = { "A":10 , "B":11 , "C":12 , "D":13 , "E":14 ,
                     "F":15 , "G":16 , "H":17 , "I":18 , "J":19 ,
                     "K":20 , "L":21 , "M":22 , "N":23 , "O":24 ,
                     "P":25 , "Q":26 , "R":27 , "S":28 , "T":29 ,
                     "U":30 , "V":31 , "W":32 , "X":33 , "Y":34 ,
                     "Z":35                                       }

    @staticmethod
    def create_iban(country_code: str, sequence: str) -> str:
        part_country = str(Finance.DICT_NUMBERS[country_code[0:1]]) + str(Finance.DICT_NUMBERS[country_code[1:2]]) 
        dividend = int(sequence + part_country + "00")
        checksum = str(98 - (dividend % 97)).zfill(2)
        return country_code + checksum + sequence
    
    @staticmethod
    def get_bank_and_bic(country_code: str) -> dict:
        retval = { "finance.bank_bic":"", "finance.bank_name":"" }
        file_bank = f"{Finance.CLASS_PATH}/data/finance_banks_{country_code.lower()}.csv"
        if os.path.isfile(file_bank):
            data = pd.read_csv(file_bank, index_col=False, sep=',', low_memory=False)
            row = random.randrange(0, data.shape[0])
            retval["finance.bank_bic"] = str(data.iat[row, 1])
            retval["finance.bank_name"] = str(data.iat[row, 2])
        else:
            cs_code = string.ascii_uppercase
            cs_loc = string.ascii_uppercase + string.digits
            retval["finance.bank_bic"] = f"{''.join(random.choices(cs_code, k=4))}{country_code}{''.join(random.choices(cs_loc, k=2))}XXX".upper()
        return retval

