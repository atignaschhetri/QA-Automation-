OrangeHRM QA Automation – Robot Framework

This project contains automated test scripts for the OrangeHRM application, developed using the Robot Framework, SeleniumLibrary, and JSON-based DDT (Data-Driven Testing).
The framework supports modular keyword-driven automation, making test scripts easy to read, maintain, and scale.

Project File structure 
```
PythonProject1/
│
├── .venv/                          # Virtual environment (ignored by Git)
│   ├── Lib/
│   └── Scripts/
│
├── data_folder/                    # Test data files (JSON, Excel)
│   ├── Book1.xlsx
│   └── data.json
│
├── helper/                         # Python helper utilities
│   ├── __init__.py
│   └── read_data.py
│
├── pages/                          # Page Object Model (POM) structure
│   ├── login_page/
│   │   ├── login_fogetpw_keyword.robot
│   │   └── login_keyword.robot
│   └── admin_page.robot
│
├── Test/                           # All executable Robot test cases
│   ├── add_employee.robot
│   ├── login_forgotpw.robot
│   ├── login_json.robot
│   ├── login_main.robot
│   ├── screenshot_capture.robot
│   ├── alert.robot
│   └── firsttest.robot

```

Test cases for Project

Please follow the link to access the test cases for this project 

```
https://docs.google.com/spreadsheets/d/1ijtS1EcLm8glSSXzWDZfCkSLV6PaFzy-11aHlSXFmsk/edit?usp=sharing
```

