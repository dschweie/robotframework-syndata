
import random

class StringTools:
    
    instance = None

    dictionary = {  u'Ä':'Ae',  u'Ö':'Oe',  u'Ü':'Ue', 
                    u'ä':'ae',  u'ö':'oe',  u'ü':'ue',
                    u'ß':'ss',  u' ':None                          }
    translation_map:dict[int, str] = {}

    def __new__(cls):
        if cls.instance is None:
            cls.instance = super().__new__(cls)
            cls.translation_map = {ord(key):val for key, val in cls.dictionary.items()}
        return cls.instance

    def build_email_local_part(self, first_name:str, last_name:str) -> str:
        pattern_list = [    "1111", "3214", "2111", "1214", "1221", "2214",
                            "1112", "3214", "2112", "1214", "1222", "2214",
                            "1113", "3214", "2113", "1214", "1223", "2214",
                            "1114", "3214", "2114", "1214", "1224", "2214",
                            "1114", "3211", "2114", "1214", "1224", "2211",
                            "1114", "3212", "2114", "1214", "1224", "2212",
                            "1114", "3213", "2114", "1214", "1224", "2213",
                            "1114", "3214", "2114", "1214", "1224", "2214"    ]
        pattern = pattern_list[random.randrange(0, len(pattern_list))]
        retval = ""
        # Selection of the portion from the first name
        match(pattern[0:1]):
            case "1":
                retval += first_name
            case "2":
                retval += first_name[0:1]
        # Optionally, a point is used as a separator
        match(pattern[1:2]):
            case "1":   # point added
                retval += "."
        # Selection of the portion from the last name
        match(pattern[2:3]):
            case "1":   # lastname added
                retval += last_name
        # Optionally, a sequence of digits is added
        match(pattern[3:4]):
            case "1":   # a single digit is appended
                retval += f"{random.randrange(1, 10)}"
            case "2":   # a two-digit number is appended
                retval += f"{random.randrange(10, 100)}"
            case "3":   # a four-digit number is appended
                retval += f"{random.randrange(1000, 2500)}"
        # set all characters to lower:
        retval = retval.lower()
        # remove non-ascii by translation and en- and decoding
        retval = retval.translate(self.translation_map).encode(encoding="ascii",errors="ignore").decode() 
        return retval
