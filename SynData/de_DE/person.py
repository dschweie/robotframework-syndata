import pandas as pd
from datetime import datetime, timedelta
import random
import string
import pathlib
from ..utils.stringtools import StringTools
from ..utils.persontools import BasicPerson

class Person(BasicPerson):
    CLASS_PATH = pathlib.Path(__file__).parent.resolve()

    @staticmethod 
    def get_name(item_data: dict) -> str:
        first_name = Person.get_first_name(item_data)
        last_name = Person.get_last_name(item_data)
        return f"{first_name} {last_name}"

    @staticmethod
    def get_first_name(item_data: dict) -> str:
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
            return str(data.iat[random.randrange(0, data.shape[0]), 0])
    
    @staticmethod 
    def get_last_name(item_data: dict) -> str:
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
            return str(data.iat[random.randrange(0, data.shape[0]), 0])

    @staticmethod
    def get_date_of_birth(item_data:dict) -> str :
        value_from = int(item_data.get("preset.age_from", "0"))*365
        value_to = int(item_data.get("preset.age_to", "100"))*365
        delta_days = random.randint(max(min(value_from,value_to), 0), max(value_from,value_to))
        dob = datetime.now() - timedelta(days=delta_days)
        return dob.strftime("%d.%m.%Y")

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

class Soldier(Person):
    @staticmethod
    def get_personal_identification_number(item_data:dict) -> str:
        item_data["preset.age_from"] = item_data.get("preset.age_from", "17")
        item_data["preset.age_to"] = item_data.get("preset.age_to", "64")
        date_of_birth = str(item_data.get("person.dob", item_data.get("preset.dob", Person.get_date_of_birth(item_data))))
        year_of_birth = int(date_of_birth[-4:])
        date_string: str = f"{date_of_birth[0:2]}{date_of_birth[3:5]}{date_of_birth[-2:]}"
        last_name = str(item_data.get("person.last_name", item_data.get("preset.last_name", random.choice(string.ascii_uppercase))))
        char_last_name: str = StringTools.translate_to_ascii(last_name.upper())[0]
        district: str = item_data.get("preset.kwea", Soldier.translate_location_to_registration_district(location=item_data.get("location.ags", "-"), year_of_birth=year_of_birth))
        follow_number: str = random.choices(population=["1", "2", "3", "4", "5", "6", "7", "8", "9"], weights=[32, 16, 8, 4, 2, 1, 1, 1, 1], k=1)[0]
        print(f"{date_string}{char_last_name}{district}{follow_number}")
        check_digit = Soldier.calculate_check_digit_personal_identification_number(f"{date_string}{char_last_name}{district}{follow_number}")
        print(f"{date_string} {char_last_name} {district}{follow_number}{check_digit}")
        return f"{date_string} {char_last_name} {district}{follow_number}{check_digit}"
    
    @staticmethod
    def calculate_check_digit_personal_identification_number(value:str) -> str:
        factor = [2, 3, 4, 5, 6, 7, 1, 6, 7, 2, 3]
        checksum = 0
        for idx, char in enumerate(iterable=value.upper()):
            match(char):
                case             "S":
                    checksum += factor[idx] * 4
                case       "J" | "T":
                    checksum += factor[idx] * 6
                case       "K" | "U":
                    checksum += factor[idx] * 8
                case       "L" | "V":
                    checksum += factor[idx] * 10
                case "A" | "M" | "W":
                    checksum += factor[idx] * 12
                case "B" | "N" | "X":
                    checksum += factor[idx] * 14
                case "C" | "O" | "Y":
                    checksum += factor[idx] * 16
                case "D" | "P" | "Z":
                    checksum += factor[idx] * 18
                case "E" | "Q":
                    checksum += factor[idx] * 20
                case "F" | "R":
                    checksum += factor[idx] * 22
                case "G":
                    checksum += factor[idx] * 24
                case "H":
                    checksum += factor[idx] * 26
                case "I":
                    checksum += factor[idx] * 28
                case _:
                    checksum += factor[idx] * int(char)
        return f"{(11 - (checksum % 11)) % 10}"

    @staticmethod
    def translate_location_to_registration_district(location: str, year_of_birth: int) -> str:
        state = location[0:2]
        if year_of_birth < 1996:
            kweas = {}
            match (state):
                case "01": # Schleswig-Holstein
                    kweas.update({"106":"Kiel", "112":"Schleswig"})
                case "02": # Freie und Hansestadt Hamburg
                    kweas.update({"101":"Hamburg"})
                case "03": # Niedersachsen
                    kweas.update({"213":"Oldenburg", 
                                  "210":"Meppen",
                                  "207":"Hannover",
                                  "202":"Braunschweig",
                                  "209":"Lüneburg",
                                  "215":"Stade"})
                case "04": # Freie Hansestadt Bremen
                    kweas.update({"213":"Oldenburg"})
                case "05": # Nordrhein-Westfalen
                    kweas.update({"310":"Düsseldorf", 
                                  "318":"Köln",
                                  "302":"Arnsberg",
                                  "308":"Dortmund",
                                  "315":"Herford",
                                  "316":"Jülich",
                                  "322":"Mönchengladbach",
                                  "323":"Münster",
                                  "324":"Recklinghausen"})
                case "06": # Hessen
                    kweas.update({"417":"Wiesbaden", 
                                  "416":"Wetzlar",
                                  "401":"Darmstadt",
                                  "402":"Gelnhausen",
                                  "408":"Kassel"})
                case "07": # Rheinland-Pfalz
                    kweas.update({"409":"Koblenz", 
                                  "407":"Kaiserslautern"})
                case "08": # Baden-Württemberg
                    kweas.update({"513":"Stuttgart", 
                                  "510":"Ravensburg", 
                                  "508":"Mannheim", 
                                  "505":"Karlsruhe", 
                                  "502":"Donaueschingen", 
                                  "501":"Schwäbisch Gmünd", 
                                  "503":"Freiburg"})
                case "09": # Freistaat Bayern
                    kweas.update({"612":"München", 
                                  "629":"Ingolstadt",
                                  "611":"Kempten",
                                  "617":"Traunstein",
                                  "615":"Nürnberg",
                                  "604":"Bamberg",
                                  "619":"Würzburg",
                                  "618":"Weiden",
                                  "616":"Regensburg"})
                case "10": # Saarland
                    kweas.update({"424":"Saarlouis"})
                case "11" if year_of_birth > 1973: # Berlin
                    kweas.update({"725":"Berlin"})
                case "12" if year_of_birth > 1973: # Brandenburg
                    kweas.update({"717":"Potsdam", "704":"Cottbus"})
                case "13" if year_of_birth > 1973: # Mecklenburg-Vorpommern
                    kweas.update({"128":"Schwerin"})
                case "14" if year_of_birth > 1973: # Freistaat Sachsen
                    kweas.update({"705":"Dresden", "712":"Leipzig"})
                case "15" if year_of_birth > 1973: # Sachsen-Anhalt
                    kweas.update({"713":"Magdeburg"})
                case "16" if year_of_birth > 1973: # Freistaat Thüringen
                    kweas.update({"707":"Erfurt"})
                case _:
                    kweas.update({"106":"Kiel", 
                                  "112":"Schleswig",
                                  "101":"Hamburg",
                                  "213":"Oldenburg", 
                                  "210":"Meppen",
                                  "207":"Hannover",
                                  "202":"Braunschweig",
                                  "209":"Lüneburg",
                                  "215":"Stade", 
                                  "213":"Oldenburg",
                                  "310":"Düsseldorf", 
                                  "318":"Köln",
                                  "302":"Arnsberg",
                                  "308":"Dortmund",
                                  "315":"Herford",
                                  "316":"Jülich",
                                  "322":"Mönchengladbach",
                                  "323":"Münster",
                                  "324":"Recklinghausen",
                                  "417":"Wiesbaden", 
                                  "416":"Wetzlar",
                                  "401":"Darmstadt",
                                  "402":"Gelnhausen",
                                  "408":"Kassel",
                                  "409":"Koblenz", 
                                  "407":"Kaiserslautern",
                                  "513":"Stuttgart", 
                                  "510":"Ravensburg", 
                                  "508":"Mannheim", 
                                  "505":"Karlsruhe", 
                                  "502":"Donaueschingen", 
                                  "501":"Schwäbisch Gmünd", 
                                  "503":"Freiburg",
                                  "612":"München", 
                                  "629":"Ingolstadt",
                                  "611":"Kempten",
                                  "617":"Traunstein",
                                  "615":"Nürnberg",
                                  "604":"Bamberg",
                                  "619":"Würzburg",
                                  "618":"Weiden",
                                  "616":"Regensburg", 
                                  "424":"Saarlouis"})
            retval = random.choice(list(kweas.keys()))
        else:
            karrcs = {"830":"Berlin", 
                      "840":"Düsseldorf",
                      "850":"Erfurt",
                      "820":"Hannover",
                      "860":"Mainz",
                      "880":"München",
                      "870":"Stuttgart",
                      "810":"Wilhelmshafen"}
            retval = random.choice(list(karrcs.keys()))
        return retval
    

