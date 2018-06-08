$psFileToTest = "$PSScriptRoot\..\scripts\Add-Numbers.ps1"
.$psFileToTest

Describe 'Add Numbers' {
    
    Context 'Adding two positive numbers' {
        It 'Returns 4 for input (2,2)' {
            $result = Add-Numbers 2 2
            $result | Should be 4
        }
    }
}