import pandas as pd
from datetime import datetime, timedelta
import random
import string
import pathlib
from ..utils.stringtools import StringTools

class Person(object):
    CLASS_PATH = pathlib.Path(__file__).parent.resolve()

    @staticmethod 
    def get_name(item_data: dict):
        first_name = Person.get_first_name(item_data)
        last_name = Person.get_last_name(item_data)
        return f"{first_name} {last_name}"

    @staticmethod
    def get_first_name(item_data: dict):
        data = pd.read_csv(f"{Person.CLASS_PATH}/data/first_names.csv", sep=',', header=0, index_col="idx")
        match str(item_data.get("person.sex", item_data.get("sex","*"))).lower():
            case "f":
                data = data.query('sex == "female"')
            case "m":
                data = data.query('sex == "male"')
        # According to internet research, around 35% to 40% of people in Germany 
        # have two first names. The first names are usually separated by a 
        # space, and only a small proportion use a hyphen.
        marker = random.randrange(0, 100)
        if(marker < 8):
            # In 8% of cases, two first names are connected with a hyphen. 
            first_first_name:str = str(data.iat[random.randrange(0, data.shape[0]), 0])
            if(-1 < first_first_name.find("-")):
                # The list of first names contains common combinations of first 
                # names with hyphens. If one of these names is selected, no 
                # other name should be added.
                return first_first_name
            else:
                second_first_name:str = str(data.iat[random.randrange(0, data.shape[0]), 0])
                while (-1 < second_first_name.find("-")):
                    # The middle name should not contain a hyphen, as this could 
                    # result in a name with three first names.
                    second_first_name = str(data.iat[random.randrange(0, data.shape[0]), 0])
                return f"{first_first_name}-{second_first_name}"
        elif(marker < 35):
            # In 23% of cases, two first names are used without a hyphen. 
            # The lower percentage was deliberately chosen, as often only one 
            # first name is used as a given name.
            first_first_name = str(data.iat[random.randrange(0, data.shape[0]), 0])
            if(-1 < first_first_name.find("-")):
                # The list of first names contains common combinations of first 
                # names with hyphens. If one of these names is selected, no 
                # other name should be added.
                return first_first_name
            else:
                second_first_name = str(data.iat[random.randrange(0, data.shape[0]), 0])
                while (-1 < second_first_name.find("-")):
                    # The middle name should not contain a hyphen, as this could 
                    # result in a name with three first names.
                    second_first_name = str(data.iat[random.randrange(0, data.shape[0]), 0])
                return f"{first_first_name} {second_first_name}"
        else: 
            return data.iat[random.randrange(0, data.shape[0]), 0]
    
    @staticmethod 
    def get_last_name(item_data: dict):
        data = pd.read_csv(f"{Person.CLASS_PATH}/data/last_names.csv", sep=',', header=0, index_col="idx")
        # According to internet research, 7% of women and 2% of men in Germany 
        # have a double surname. A double surname consists of two surnames 
        # separated by a hyphen. Under new family law, children as well as 
        # spouses can take double surnames.
        #
        # For reasons of simplification, double surnames are formed in 4% of 
        # cases.
        marker = random.randrange(0, 100)
        if(marker < 4):
            first_last_name:str = str(data.iat[random.randrange(0, data.shape[0]), 0])
            while (-1 < first_last_name.find(" ")):
                first_last_name = str(data.iat[random.randrange(0, data.shape[0]), 0])
            second_last_name:str = str(data.iat[random.randrange(0, data.shape[0]), 0])
            while (-1 < second_last_name.find(" ")):
                second_last_name = str(data.iat[random.randrange(0, data.shape[0]), 0])
            return f"{first_last_name}-{second_last_name}"
        else: 
            return data.iat[random.randrange(0, data.shape[0]), 0]

    @staticmethod
    def get_date_of_birth(item_data:dict) -> str :
        value_from = int(item_data.get("age_from", "0"))*365
        value_to = int(item_data.get("age_to", "100"))*365
        delta_days = random.randint(max(min(value_from,value_to), 0), max(value_from,value_to))
        dob = datetime.now() - timedelta(days=delta_days)
        return dob.strftime("%d.%m.%Y")

    @staticmethod
    def get_sex(item_data:dict) -> str:
        match(str(item_data.get("preset.sex", "*")).lower()):
            case "m" | "male" | "männlich": 
                return "m"
            case "f" | "female" | "w" | "weiblich":
                return "w"
            case "d" | "divers":
                return "d"
            case _:
                return str(random.choices(["m", "f", "d"], weights=[49, 50, 1], k=1)[0])

    @staticmethod
    def get_social_security_number(item_data:dict) -> str :
        if( "00" == item_data.get("preset.provider", "00") ):
            data = pd.read_csv(f"{Person.CLASS_PATH}/data/person_social_security_number.csv", sep=',', 
                               dtype= {"code":str, "provider":str, "description":str, "branch":str, "region":str})
            provider = data["code"].iloc[random.randrange(0, data.shape[0])]
        else:
            provider = str(item_data.get("preset.provider"))
        date_of_birth = str(item_data.get("person.dob", item_data.get("preset.dob", Person.get_date_of_birth(item_data))))
        date_string = f"{date_of_birth[0:2]}{date_of_birth[3:5]}{date_of_birth[-2:]}"
        match(item_data.get("person.sex", item_data.get("preset.sex", "*"))):
            case "m" | "male" | "männlich" :
                serialnumber = f"{random.randint(0,49)}".zfill(2)
            case _:
                serialnumber = f"{random.randint(50,99)}"
        last_name = str(item_data.get("person.last_name", item_data.get("preset.last_name", random.choice(string.ascii_uppercase))))
        char_last_name = StringTools.translate_to_ascii(last_name.upper())[0]
        check_number = Person.calculate_check_digit_social_security_number(f"{provider}{date_string}{char_last_name}{serialnumber}")
        return f"{provider} {date_string} {char_last_name} {serialnumber}{check_number}"
    
    @staticmethod
    def calculate_check_digit_social_security_number(value:str) -> str:
        translate = [   " ", "A", "B", "C", "D", "E", "F", "G", "H", "I",
                        "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S",
                        "T", "U", "V", "W", "X", "Y", "Z"                   ]
        factor = [2, 1, 2, 5, 7, 1, 2, 1, 2, 1, 2, 1]
        value = value.replace(value[8], str(translate.index(value[8])).zfill(2))
        checksum = 0
        for idx, char in enumerate(value):
            checksum += sum(int(d) for d in str(factor[idx] * int(char)))
        return f"{checksum % 10}"