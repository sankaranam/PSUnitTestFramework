# PSUnitTestFramework
This repo has sample powershell scripts with pester unit testing framework integrated to generate test and coverage reports

# Steps
* Clone the repo to ur local machine.
* Open powershell editor and execute TestExecutor.ps1
* Observe a folder named "artifacts" will be created
* Check all the files in that folder.

*Files
- AnalyzedFiles.txt  - this text file list all the files which were used to generate code coverage reports
- CoverageReport.html - shows the code coverage report. When file is opened in browser, the last column in the file shows the percentage of the code coverage
- HitCommands.html - has all the PS code that was his during pester test execution, helps cross verify coverage report
- TestResults.html - has the test execution results. If any pester test case fails then its easy to narrow down on the test case.

# Start your project with inbuilt unit testing and report generation framework
* Download repository and add your powershell scripts in scripts folder
* Unit test for new scripts goes into unittest folder
* And you’re done.
* Just use TestExecutor.ps1 to unit test your scripts and generate reports in artifacts folder.
* This can be integrated into your build pipeline and additional scripts can be written to fail the build on errors/ uncovered code

