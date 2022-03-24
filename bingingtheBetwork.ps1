#
function MainInput {
"Tryna ping??? Enter a class C network /24"
$1stoctet = read-host "Enter yer 1st octet lad" 
$2ndoctet = Read-Host "Enter yer second octet lad"
$3rdoctet = Read-host "Enter yer third octet lad" 
$firsttree = $1stoctet+'.'+$2ndoctet+'.'+$3rdoctet+'.' 
"Is this yer first three? $firsttree"
YesNo
}
function YesNo {
$HostConfirm2 = read-host "Y/N?"
switch ($HostConfirm2) {
    condition {$HostConfirm2 =   }
    Default {}
}    
<#$HostConfirm = read-host "Y/N?"
    if ($HostConfirm = 'Y') {
        1..254 | foreach { $status=Test-Connection "$firsttree$_" -TimeoutSeconds 2 -Count 1 -quiet; "$firsttree$_ $status"}
    }
    elseif ($HostConfirm = "N,n"){
        "input a propa IP ya bloke!"
            MainInput
            }
    else {
        "You're A Propa Twat."
            MainInput
                }
#>
}
MainInput

#1..254 | foreach { $status=Test-Connection "$firsttree$_" -TimeoutSeconds 2 -Count 1 -quiet; "$firsttree$_ $status"
#}