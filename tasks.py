import re
import os
import random
import pandas as pd

from invoke.tasks import task

"""
    Overview of the tasks and their dependencies implemented in this file:

                +-> gen_atest       +-> gen_utest
                |                   |
    p_test  -pre+-> p_devtest   -pre+-+
                        |             |
                      post            |
                        V             |                         
                    cre_utest_report  |                     +-> gen_src
                        ^             |                     |
                      post            +---> p_install   -pre+   
                        |             |                     |
    p_retest-pre--> p_redevtest -pre--+                     +-> libdoc
    
    setversion

    Brief description of the most important tasks:
      - p_test
        The complete test of a version is possible with the task p_test. This 
        task also takes the most time, as source code and test cases for the 
        unit test and acceptance test are partially generated.

      - p_retest
        Unlike p_test, no test cases are generated in the p_retest task. This 
        task is suitable for performing confirmation testing. In this task, 
        only changes in the source code are updated via Poetry. The generated 
        test cases remain unchanged.

      - setversion  
        The task is suitable for entering a new version number in the 
        ./pyproject.toml and ./SynData/syndata.py files.
"""

@task
def libdoc(c):
    c.run("libdoc --name SynData ./SynData ./doc/SynData.html")

@task
def gen_src(c):
    c.run(f"{os.getenv("LFET_HOME")}/lfetconsole.bat -gs \"./lfet\" -src python -crmf -sku")    

@task 
def gen_utest(c):
    c.run(f"{os.getenv("LFET_HOME")}/lfetconsole.bat -GenTest \"./lfet/ItemBuilderEngineFaker.lfet\" -Group \"gherkin\" -Config \"unit tests\"")
    c.run(f"{os.getenv("LFET_HOME")}/lfetconsole.bat -GenTest \"./lfet/ItemBuilderEngineGermany.lfet\" -Group \"gherkin\" -Config \"unit tests\"")
    c.run(f"{os.getenv("LFET_HOME")}/lfetconsole.bat -GenTest \"./lfet/ItemBuilderEngine.lfet\" -Group \"gherkin\" -Config \"unit tests\"")
    c.run("move /Y .\\lfet\\*.feature .\\test\\unit_test\\features\\engines")

@task
def gen_atest(c):
    c.run(f"{os.getenv("LFET_HOME")}/lfetconsole.bat -GenTest \"./lfet/ItemBuilderEngineFaker.lfet\" -Group \"robot\" -Config \"acceptance tests\"")
    c.run(f"{os.getenv("LFET_HOME")}/lfetconsole.bat -GenTest \"./lfet/ItemBuilderEngineGermany.lfet\" -Group \"robot\" -Config \"acceptance tests\"")

@task()
def cre_utest_report(c):
    c.run("del .\\results\\unit_test\\c*.*")
    c.run("node index.js")

@task(pre=[gen_src, libdoc])
def p_install(c):
    c.run("poetry build")
    c.run("poetry install")

@task(pre=[p_install, gen_utest], post=[cre_utest_report])
def p_devtest(c):
    c.run("poetry run pytest -v --gherkin-terminal-reporter --cucumberjson=./results/gherkin.json ./test/unit_test/steps/")

@task(pre=[p_install], post=[cre_utest_report])
def p_redevtest(c):
    c.run("poetry run pytest -v --gherkin-terminal-reporter --cucumberjson=./results/gherkin.json ./test/unit_test/steps/")

@task(pre=[p_devtest, gen_atest])
def p_test(c):
    c.run("del .\\results\\SynData*.csv")
    c.run("poetry run robot -d ./results/ -L DEBUG --tagstatexclude rid* --tagstatexclude ddb* --tagstatexclude ddc* ./test/acceptance_test/")

@task(pre=[p_redevtest])
def p_retest(c):
    c.run("del .\\results\\SynData*.csv")
    c.run("poetry run robot -d ./results/ -L DEBUG --tagstatexclude rid* --tagstatexclude ddb* --tagstatexclude ddc* ./test/acceptance_test/")

@task
def setversion(c, version:str =""):
    if(re.fullmatch("\\d+\\.\\d+\\.\\d+", version)):
        with open('./pyproject.toml', 'r+', encoding="utf-8") as f_toml:
            file = f_toml.read()
            file = re.sub("version = \"\\d+\\.\\d+\\.\\d+\"", f"version = \"{version}\"", file)
            f_toml.seek(0)
            f_toml.write(file)
            f_toml.truncate()
        with open('./SynData/syndata.py', 'r+', encoding="utf-8") as f_py:
            file = f_py.read()
            file = re.sub(", version='\\d+\\.\\d+\\.\\d+\',", f", version='{version}',", file)
            f_py.seek(0)
            f_py.write(file)
            f_py.truncate()
        print(f"Version was updated to {version}.")
    else:
        print(f"The syntax '--version {version}' does not meet the requirement for a version number consisting of three digit sequences separated by a dot!.")


@task
def check_blz_bic(c):
    data_banks = pd.read_csv(f"./syndata/de_DE/data/finance_banks.csv", index_col=False, sep=',', low_memory=False, 
                                dtype= {"blz":str, "city":str, "name":str, "pan":str})
    data_bics = pd.read_csv(f"./syndata/de_DE/data/finance_codes_blz_bic.csv", index_col=False, sep=',', low_memory=False, 
                            dtype= {"blz":str, "bic":str})
    for row in range(data_banks.shape[0]):
        result = data_bics.query(f"blz == '{data_banks["blz"].iloc[row]}'")
        if( 0 == len(result)):
            print(f"Bankleitzahl {data_banks["blz"].iloc[row]} liefert keinen Treffer.")

@task 
def check_streets_ags(c):
    last_hit = ""
    current_ags = ""
    streets = pd.read_csv("./syndata/de_DE/data/address_streets.csv", index_col=False, sep=',', low_memory=False, 
                        dtype= {"street":str,"nr_min":int, "nr_max":int, "nr_mode":str, "postcode": str, "city": str, "ags":str})
    ags     = pd.read_csv("./syndata/de_DE/data/address_ags_cities.csv", index_col=False, sep=',',
                        dtype={"ags":str, "postcode":str, "city":str, "type":str, "county":str, "state":str})
    for row in range(streets.shape[0]):
        if(current_ags != streets["ags"].iloc[row]):
            current_ags = streets["ags"].iloc[row]
            result = ags.query(f"ags == '{current_ags}'")
            if( 0 == len(result)):
                if(last_hit != current_ags):
                    print(f"AGS {current_ags} liefert keinen Treffer.")
                    last_hit = current_ags
