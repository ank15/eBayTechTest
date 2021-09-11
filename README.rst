=============================================
EBay Website testing with Robot Framework
=============================================
This Framework is designed to automate tests for eBay shopping site.

Test cases
==========

* Test case files are located in eBayWebTests.robot testsuite file under ebay-web-tests directory.
* Common robot keywords and locators are located under resources folder.
* Common python library to get driver path is located under library folder.


Preconditions
============

Python 3.9 and pip package should be installed.
Install robotframework and other libraries using below command:

'pip install -r requirements.txt'


OR

execute 'testrun.sh' file from EbayRobotTests directory to install all required libraries and execute all tests
To Execute testrun.sh file :
1. Change the file permission : 'chmod u+x testrun.sh'
2. Execute testrun.sh file :    './testrun.sh'

Running tests
============

Run below command from EbayRobotTests directory to execute all tests:
'robot --loglevel DEBUG  --outputdir  outputs'

OR

execute 'testrun.sh' file from EbayRobotTests directory to install all required libraries and execute all tests

Test Results
============

Result logs and reports can be found under output folder.
Screenshots from the failed tests can be found in screenshots folder.

Note :  TEST_CASE_2/'Verify Login Without Username And Password' is failing due to google captcha.


Framework Enhancement
=====================

1. Tests could be executed by setting ${browser} value and adding python library to get different browser driver path
   Chrome browser is used by default.
2. Page object model can be implemented.
3. Generic keyword could be added to select specific item from search result.



