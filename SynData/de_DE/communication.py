import random
from ..utils.stringtools import StringTools

class Communication(object):

    @staticmethod
    def build_random_mail(item_data:dict, first_name:str, last_name:str) -> str:
        provider_list = [ "yahoo.com", "web.de", "gmail.com", "t-online.de", "gmx.de", "posteo.com", "mailbox.org" ]
        return f"{StringTools().build_email_local_part(first_name, last_name)}@{provider_list[random.randrange(0, len(provider_list))].lower()}"
    
    @staticmethod
    def build_random_mobile_number(item_data:dict) -> str:
        return "+49 170 3045803"
