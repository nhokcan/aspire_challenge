# aspire_challenge
The challenge for small test base on challenge: ./QA Development Challenge 3.pdf

### Prerequisites
* Python > 3.6
* pipenv > 8.3

### Installing pipenv
brew install pipenv

### Installing pipenv development packages in project
pipenv install -d

### Running command
pipenv run robot -v

### Chrome Driver:
Please make sure chromedriver your are using should be matched with your Chrome version and put it into `Resources/bin/Darwin/chromedriver`
Download from: https://chromedriver.chromium.org/downloads

### Running tests
pipenv run robot  --outputdir ./Report/aspire_challenge  --variablefile ./Resources/Variables/local.py  -i  aspire_challenge  -v headless:False  -v BROWSER:chrome -v remote_debug_port:9223  ./selenium_aspire
