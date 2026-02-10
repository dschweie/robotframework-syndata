import pandas as pd
import random
import pathlib

from typing import Literal

class Address(object):
    CLASS_PATH = pathlib.Path(__file__).parent.resolve()

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
        data = pd.read_csv(f"{Address.CLASS_PATH}/data/address_streets.csv", index_col=False, sep=',', low_memory=False, 
                           dtype= {"street":str,"nr_min":int, "nr_max":int, "nr_mode":str, "postcode": str, "city": str, "ags":str})
        # TODO: Currently the data will not be filtered. This has to be added.
        row = random.randrange(0, data.shape[0])
        # Acquisition of nuclear information from the random data set 
        retval["address.street"] = data.iat[row, 0]
        retval["address.postcode"] = data.iat[row, 4]
        retval["address.city"] = data.iat[row, 5]
        retval["address.house_number"] = Address.build_random_house_number(int(data.iat[row, 1]), int(data.iat[row, 2]), data.iat[row, 3])
        # A second file must be accessed for the federal state.
        data_state = pd.read_csv(f"{Address.CLASS_PATH}/data/address_city_county_state.csv", index_col=False, sep=',',
                                 dtype={"osm_id":str, "ags":str, "city":str, "postcode":str, "county":str, "state":str})
        data_state = data_state.query('postcode == "' + str(retval["address.postcode"]) + '" and ags == "' + str(data.iat[row, 6]) + '"')
        if( 1 < data.shape[0] ):
            # It may be that several small towns have the same postal code, and 
            # for this reason, further filtering is necessary.
            data_state = data_state.query('city == "' + retval["address.city"] + '"')
        retval["address.state"] = data_state.iat[0,5]
        # Forming the composite information 
        retval["address.address"] = f"{retval["address.street"]} {retval["address.house_number"]}\n{retval["address.postcode"]} {retval["address.city"]}"
        retval["address.address_country"] = f"{retval["address.street"]} {retval["address.house_number"]}\n{retval["address.postcode"]} {retval["address.city"]}\n{retval["address.country"]}"
        retval["address.street_address"] = f"{retval["address.street"]} {retval["address.house_number"]}"
        retval["address.postcode_city"] = f"{retval["address.postcode"]} {retval["address.city"]}"
        return retval
        
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

