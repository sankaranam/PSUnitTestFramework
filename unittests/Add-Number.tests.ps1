$psFileToTest = "$PSScriptRoot\..\scripts\Add-Numbers.ps1"
.$psFileToTest

Describe 'Add Number' {
    
    Context 'Adding two positive numbers' {
        It 'Returns 4 for input (2,2)' {
            $result = Add-Number 2 2
            $result | Should be 4
        }
    }
}