# Forum

[![Python Version](https://img.shields.io/badge/python-3.9-brightgreen.svg)](https://python.org)



## Clone the Project From github

First, clone the repository to your local machine:

```bash
https://github.com/abdullahalmomin/-FlaskyAutomation.git
```


## Running the project locally by following steps:

* Go to project's root folder and run the following command to create virtual environment:

```bash
python3.9 -m venv venv
```

* Activate virtual environment by running following command:
```bash
source venv/bin/activate
```

* Install the requirements:

```bash
pip install -r requirements.txt
```

*Go to the main project (FlaskyAutomation) directory and run command
`robot -d Results .\Tests`


To run the project every time after setup, you must first activate the virtual environment and then run the server by following two command:

* To run the Api.py file you have to open the project in an editor like pycharm then just run the Api.py file
* To run the unit test file (test_Api.py) Go to the main project (FlaskyAutomation) directory and run command `pytest .\APIAutomation\
`

