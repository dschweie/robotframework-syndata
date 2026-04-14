import random

class BasicPerson(object):

    @staticmethod
    def get_sex(item_data:dict) -> str:
        match(str(item_data.get("preset.sex", "*")).lower()):
            case "m" | "male" | "männlich": 
                return "m"
            case "f" | "female" | "w" | "weiblich":
                return "f"
            case "d" | "divers":
                return "d"
            case _:
                return str(random.choices(["m", "f", "d"], weights=[49, 50, 1], k=1)[0])

