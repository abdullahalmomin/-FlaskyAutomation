# Forum

[![Python Version](https://img.shields.io/badge/python-3.9-brightgreen.svg)](https://python.org)



## Clone the Project From github

First, clone the repository to your local machine:

```bash
https://github.com/abdullahalmomin/-FlaskyAutomation.git
```


## Running the project locally by following steps:

* Install the requirements:

```bash
pip install -r requirements.txt
```

Go to the main project (FlaskyAutomation) directory and run command to get the automation report in Results folder
```bash
robot -d Results .\Tests
```

To run the api.py  and test_unit.py file you have to open the
project in an editor e.g. pycharm then go to the terminal from APIAutomation folder
and run command
```bash
pytest --html=api_test_report.html --self-contained-html
```