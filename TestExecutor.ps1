Import-Module Pester

# paths to include for code coverage report
$filesCovered = @("$PSScriptRoot\scripts\*.psm1","$PSScriptRoot\scripts\*.ps1")

#check and create artifacts folder
$artifactFolder = "$PSScriptRoot\artifacts"
if (!(test-path -path $artifactFolder)) {new-item -path $artifactFolder -itemtype directory}

# run pester test cases
$testOutputFile = "$PSScriptRoot\artifacts\TestResults.xml"
$results = Invoke-Pester -EnableExit -OutputFile $testOutputFile -OutputFormat NUnitXml -PassThru -CodeCoverage $filesCovered

#run reportunit.exe to generate test report using input '$testOutputFile' in same folder
.\reportgenerator\ReportUnit.exe "$testOutputFile"


#output coverage result to different files from '$results.CodeCoverage' variable
$results.CodeCoverage.HitCommands | ConvertTo-Html | Out-File -FilePath "$PSScriptRoot\artifacts\HitCommands.html"
if($results.CodeCoverage.MissedCommands -ne $null){
$results.CodeCoverage.MissedCommands | ConvertTo-Html | Out-File -FilePath "$PSScriptRoot\artifacts\MissedCommands.html"}
$results.CodeCoverage.AnalyzedFiles | Out-File -FilePath "$PSScriptRoot\artifacts\AnalyzedFiles.txt"

#calculate coverage percentage
$Percentage = ($results.CodeCoverage.NumberOfCommandsExecuted / $results.CodeCoverage.NumberOfCommandsAnalyzed)*100
$results.CodeCoverage | Add-Member Percentage ($Percentage | % { '{0:0.##}' -f $_ })
$results.CodeCoverage | ConvertTo-Html  | Out-File -FilePath "$PSScriptRoot\artifacts\CoverageReport.html"