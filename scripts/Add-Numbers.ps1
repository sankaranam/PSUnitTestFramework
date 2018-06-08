function Add-Numbers {

    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [int]
        $numb1,

        [Parameter(Mandatory = $true)]
        [int]
        $numb2
    )
    return $numb1 + $numb2    
}