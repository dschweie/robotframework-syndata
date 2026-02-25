import pandas as pd
import random
import pathlib
import secrets
import string
import re

from typing import Literal

class Traffic(object):
    CLASS_PATH = pathlib.Path(__file__).parent.resolve()

    @staticmethod
    def get_license_plate(item_data: dict) -> str:
        type_id = random.randrange(0, 100)
        if (2 > type_id):
            return Traffic.compile_license_plate_historic_vehicle(item_data)
        elif (35 > type_id):
            return Traffic.compile_license_plate_electric_vehicle(item_data)
        else:
            return Traffic.compile_license_plate_standard(item_data)

    @staticmethod
    def compile_license_plate_standard(item_data: dict) -> str:
        dm = Traffic.get_random_distinguishing_mark(item_data)
        le = Traffic.get_random_letters(item_data)
        while(not (Traffic.is_combination_of_letters_socially_acceptable(f"{dm} {le}"))):
            le = Traffic.get_random_letters(item_data)
        nu = Traffic.get_random_numbers(min=1, max=min(4,(8 - len(dm) - len(le))))
        return f"{dm} {le} {nu}"
    
    @staticmethod
    def compile_license_plate_historic_vehicle(item_data: dict) -> str:
        dm = Traffic.get_random_distinguishing_mark(item_data)
        le = Traffic.get_random_letters(item_data)
        while(not (Traffic.is_combination_of_letters_socially_acceptable(f"{dm} {le}"))):
            le = Traffic.get_random_letters(item_data)
        nu = Traffic.get_random_numbers(min=1, max=min(4,(7 - len(dm) - len(le))))
        return f"{dm} {le} {nu}H"
    
    @staticmethod
    def compile_license_plate_electric_vehicle(item_data: dict) -> str:
        dm = Traffic.get_random_distinguishing_mark(item_data)
        le = Traffic.get_random_letters(item_data)
        while(not (Traffic.is_combination_of_letters_socially_acceptable(f"{dm} {le}"))):
            le = Traffic.get_random_letters(item_data)
        nu = Traffic.get_random_numbers(min=1, max=min(4,(7 - len(dm) - len(le))))
        return f"{dm} {le} {nu}E"
    
    @staticmethod
    def get_random_distinguishing_mark(item_data: dict) -> str:
        labels = pd.read_csv(f"{Traffic.CLASS_PATH}/data/traffic_license_plates.csv", index_col=False, sep=',', low_memory=False, 
                                 dtype= {"ags":str, "city":str, "county":str, "state_code":str, "label":str})
        for key in item_data.keys():
            match key:
                case "location.ags":
                    labels = labels.query(f"ags == '{item_data.get(key)}'")
        row = random.randrange(0, labels.shape[0])
        return str(labels["label"].iloc[row])
    
    @staticmethod
    def get_random_letters(item_data: dict) -> str:
        string.ascii_uppercase
        return ''.join(secrets.choice(string.ascii_uppercase) for i in range(random.randint(1,2)))
    
    @staticmethod
    def get_random_numbers(min:int=1, max:int=4) -> str:
        retval = ''.join(secrets.choice(string.digits) for i in range(random.randint(min,max)))
        while (re.match(r"((8)*[18]8(8)*)|(0\d*)",retval)):
            retval = ''.join(secrets.choice(string.digits) for i in range(random.randint(min,max)))
        return retval
    
    @staticmethod
    def is_combination_of_letters_socially_acceptable(combination: str) -> bool:
        """
        In Germany, there is a regulation that recommends that registration 
        authorities do not assign certain combinations of letters. These are 
        abbreviations that could, for example, establish a connection to 
        National Socialism. However, insults should also be avoided.
        
        This method uses a regular expression to check whether the generated 
        combination is offensive.
        
        The method returns True if the combination is acceptable.
        """
        return not(re.match(r"^((.{1,3}\s(AH|HH|HJ|IS|KZ|NS|SA|SS|SD))|(S\s(A|S|D|ED))|(K\sZ)|(H\sJ)|(N\s(PD|S[U]?))|(WAF\sFE)|(SK\sIN)|(IZ\sAN)|(HEI\sL)|(SU\sFF)|(BUL\sLE)|(AC\sAB)|(MO\sRD))$", combination))



