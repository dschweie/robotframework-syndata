import pandas as pd
import random
import pathlib

from typing import Literal

class Country(object):
    # The data used in this class comes from the following URL:
    # https://stefangabos.github.io/world_countries/

    CLASS_PATH = pathlib.Path(__file__).parent.resolve()

    @staticmethod
    def get_country_name(item_data: dict, language: str) -> str:
        data = pd.read_csv(f"{Country.CLASS_PATH}/data/countries.csv", index_col="id", sep=',', low_memory=False)
        # TODO: Currently the data will not be filtered. This has to be added.
        names = data[language.lower()].array
        if(1 > len(names)):
            names = data["en"].array
        return names[random.randrange(0, len(names))]
        
    @staticmethod
    def get_country_code(item_data: dict, code: Literal["ALPHA-2", "ALPHA-3"] ="ALPHA-2"):
        data = pd.read_csv(f"{Country.CLASS_PATH}/data/countries.csv", index_col="id", sep=',', low_memory=False)
        # TODO: Currently the data will not be filtered. This has to be added.
        if(code == "ALPHA-2"):
            codes = data["alpha2"].array
        else:
            codes = data["alpha3"].array
        return str(codes[random.randrange(0, len(codes))]).upper()



   
