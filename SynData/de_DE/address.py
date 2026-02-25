import pandas as pd
import random
import pathlib

from typing import Literal

class Address(object):
    CLASS_PATH = pathlib.Path(__file__).parent.resolve()

    AGS_CITIES_FILE = "/data/address_ags_cities.csv"
    STREETS_FILE = "/data/address_streets.csv"

    @staticmethod
    def get_address_data(item_data: dict) -> dict:
        retval = {
            "address.address"         : "", 
            "address.address_country" : "", 
            "address.street_address"  : "", 
            "address.street"          : "", 
            "address.house_number"    : "", 
            "address.postcode_city"   : "", 
            "address.postcode"        : "", 
            "address.city"            : "", 
            "address.state"           : "", 
            "address.country"         : "Deutschland", 
            "address.country_code"    : "DE" 
        }
        data = pd.read_csv(f"{Address.CLASS_PATH}{Address.STREETS_FILE}", index_col=False, sep=',', low_memory=False, 
                           dtype= {"street":str,"nr_min":int, "nr_max":int, "nr_mode":str, "postcode": str, "city": str, "ags":str})
        for key in item_data.keys():
            match key:
                case "location.ags":
                    data = data.query(f"ags == '{item_data.get(key)}'")
        row = random.randrange(0, data.shape[0])
        # Acquisition of nuclear information from the random data set 
        if (None == item_data.get("location.ags")): 
            retval["location.ags"] = str(data["ags"].iloc[row])
        retval["address.street"] = str(data["street"].iloc[row])
        retval["address.postcode"] = str(data["postcode"].iloc[row])
        retval["address.city"] = str(data["city"].iloc[row])
        retval["address.house_number"] = Address.build_random_house_number(int(str(data["nr_min"].iloc[row])), int(str(data["nr_max"].iloc[row])), data["nr_mode"].iloc[row])
        # A second file must be accessed for the federal state.
        data_state = pd.read_csv(f"{Address.CLASS_PATH}{Address.AGS_CITIES_FILE}", index_col=False, sep=',',
                                 dtype={"ags":str, "postcode":str, "city":str, "type":str, "county":str, "state":str})
        data_state = data_state.query('ags == "' + str(data["ags"].iloc[row]) + '"')
        retval["address.state"] = str(data_state["state"].iloc[0])
        # Forming the composite information 
        retval["address.address"] = f"{retval["address.street"]} {retval["address.house_number"]}\n{retval["address.postcode"]} {retval["address.city"]}"
        retval["address.address_country"] = f"{retval["address.street"]} {retval["address.house_number"]}\n{retval["address.postcode"]} {retval["address.city"]}\n{retval["address.country"]}"
        retval["address.street_address"] = f"{retval["address.street"]} {retval["address.house_number"]}"
        retval["address.postcode_city"] = f"{retval["address.postcode"]} {retval["address.city"]}"
        return retval
        
    @staticmethod
    def get_location(item_data:dict) -> str:
        data = pd.read_csv(f"{Address.CLASS_PATH}{Address.AGS_CITIES_FILE}", index_col=False, sep=',', low_memory=False, 
                           dtype={"ags":str, "postcode":str, "city":str, "type":str, "county":str, "state":str})
        for key in item_data.keys():
            if ( 0 < data.shape[0] ):
                match key:
                    case "filter.city":
                        data = data.query(f"city == '{item_data.get(key)}'")
                    case "filter.state_code":
                        data = data.query(f"state_code == '{item_data.get(key)}'")
        if ( 0 < data.shape[0] ):
            row = random.randrange(0, data.shape[0])
            return str(data["ags"].iloc[row])
        else:
            return ""

    @staticmethod
    def build_random_house_number(min: int, max: int, mode: Literal["all", "odd", "even"]) -> str:
        extensions = ["a", "b", "c", "d", "e", "f", "g", "h"]
        match mode:
            case "odd": 
                if(1 == min % 2):
                    retval = f"{random.randrange(min, max+1, 2)}"
                else: 
                    retval = f"{random.randrange(min+1, max+1, 2)}"
            case "even":
                if(0 == min % 2):
                    retval = f"{random.randrange(min, max+1, 2)}"
                else: 
                    retval = f"{random.randrange(min+1, max+1, 2)}"
            case _:
                retval = f"{random.randrange(min, max+1)}"
        if(4 > random.randrange(0, 100)):
            retval = f"{retval}{extensions[random.randrange(0, len(extensions))]}"
        if(50 > random.randrange(0,100)):
            retval = retval.upper()
        return retval

