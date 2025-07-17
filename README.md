# web-selenium-demo-Hank

Selenium + Python + pytest demo for login failure handling and HTML report generation.

## Features

- Visit login page
- Submit invalid credentials
- Assert error message is shown
- Capture screenshot on failure
- Generate self-contained HTML report with timestamp
- Auto-open report (Windows only, via PowerShell)

## Setup


git clone https://github.com/PanfactoryTW/web-selenium-demo-Hank.git
cd web-selenium-demo-Hank
python -m venv venv
venv\Scripts\activate
pip install -r requirements.txt

## Run Tests
```
pytest --html=reports/test_report.html --self-contained-html
```

With auto-report (Windows):
```
.\run_test_report.ps1
```

## Structure
```
web-selenium-demo-Hank/
├── tests/
├── reports/
├── screenshots/
├── run_test_report.ps1
├── requirements.txt
└── README.md
```
