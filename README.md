# PSUnitTestFramework
This repo has sample powershell scripts with pester unit testing framework integrated to generate test and coverage reports

# Steps
1. Clone the repo to ur local machine.
2. Open powershell editor and execute TestExecutor.ps1
3. Observe a folder named "artifacts" will be created
4. Check all the files in that folder.

a. AnalyzedFiles.txt  - this text file list all the files which were used to generate code coverage reports
b. CoverageReport.html - shows the code coverage report. When file is opened in browser, the last column in the file shows the percentage of the code coverage
c. HitCommands.html - has all the PS code that was his during pester test execution, helps cross verify coverage report
d. TestResults.html - has the test execution results. If any pester test case fails then its easy to narrow down on the test case.

