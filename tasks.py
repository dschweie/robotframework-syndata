import re
import os
from invoke import task, Collection

@task
def gentest(c):
    c.run(f"{os.getenv("LFET_HOME")}/lfetconsole.bat -GenTest \"./lfet/ItemBuilderEngineFaker.lfet\" -Group \"robot\" -Config \"acceptance tests\"")
    c.run(f"{os.getenv("LFET_HOME")}/lfetconsole.bat -GenTest \"./lfet/ItemBuilderEngineGermany.lfet\" -Group \"robot\" -Config \"acceptance tests\"")

@task
def gensrc(c):
    c.run(f"{os.getenv("LFET_HOME")}/lfetconsole.bat -gs \"./lfet\" -src python -crmf")    

@task(pre=[gensrc])
def p_install(c):
    c.run("poetry build")
    c.run("poetry install")

@task(pre=[p_install])
def p_test(c, gentest=False):
    if gentest:
        c.run(f"{os.getenv("LFET_HOME")}/lfetconsole.bat -GenTest \"./lfet/ItemBuilderEngineFaker.lfet\" -Group \"robot\" -Config \"acceptance tests\"")
        c.run(f"{os.getenv("LFET_HOME")}/lfetconsole.bat -GenTest \"./lfet/ItemBuilderEngineGermany.lfet\" -Group \"robot\" -Config \"acceptance tests\"")
    c.run("poetry run robot -d ./results/ -L DEBUG ./test/acceptance_test/")

@task
def libdoc(c):
    c.run("libdoc --name SynData ./SynData ./doc/SynData.html")

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
