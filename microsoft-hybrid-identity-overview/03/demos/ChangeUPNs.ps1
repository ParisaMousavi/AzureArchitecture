
$LocalUsers = Get-ADUser -Filter {UserPrincipalName -like "*contoso.local"} -Properties userPrincipalName -ResultSetSize $null
$LocalUsers | foreach {$newUpn = $_.UserPrincipalName.Replace("contoso.local","azure.contoso.com"); $_ | Set-ADUser -UserPrincipalName $newUpn}
