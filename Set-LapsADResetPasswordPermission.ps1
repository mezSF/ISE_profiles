
    Set-LapsADResetPasswordPermission -Identity LapsTestOU -AllowedPrincipals "Domain Admins"

#   Name       DistinguishedName
#    ----       -----------------
 #   LapsTestOU OU=LapsTestOU,DC=laps,DC=com
# 
 #   This example shows how to run the cmdlet with an isolated name that successfully maps to a well-known user or group.


    Set-LapsADResetPasswordPermission -Identity LapsTestOU -AllowedPrincipals @("S-1-5-21-2889755270-1324585639-743026605-1215")
    
   <## Name       DistinguishedName
    ----       -----------------
    LapsTestOU OU=LapsTestOU,DC=laps,DC=com
    
    This example shows how to run the cmdlet specifying a user SID as input.##>


    Set-LapsADResetPasswordPermission -Identity 'OU=LapsTestOU,DC=laps,DC=com' -AllowedPrincipals @("laps.com\LapsAdmin1", "LapsAdmin2@laps.com")
   <## 
    Name       DistinguishedName
    ----       -----------------
    LapsTestOU OU=LapsTestOU,DC=laps,DC=com
    
    This example shows how to run the cmdlet specifying two fully qualified user names in different formats.
    ##>

Set-LapsADResetPasswordPermission -Identity LapsTestOU -AllowedPrincipals @("LapsAdministratorsGroup")
<## 
    
    Set-LapsADReadPasswordPermission : The 'LapsAdministratorsGroup' account appears to be an isolated
    name but is not a well-known name. Please use a fully qualified name instead, such as
    "LapsAdministratorsGroup@contoso.com" or "contoso\LapsAdministratorsGroup"
    At line:1 char:1
    + Set-LapsADReadPasswordPermission -Identity LapsTestOU -AllowedPrincip ...
    + ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        + CategoryInfo          : InvalidArgument: (:) [Set-LapsADReadPasswordPermission], LapsPowershellException
        + FullyQualifiedErrorId : Invalid principal specified,Microsoft.Windows.LAPS.SetLapsADReadPasswordPermission
    
    This example shows a failure caused by specifying an isolated name that didn't resolve to a well-known or built-in account. The fix for this error would be to add a domain name qualifier to the input name, for example "LapsAdministratorsGroup@laps.com".


RelatedLinks
    Online Version: https://learn.microsoft.com/powershell/module/laps/set-lapsadresetpasswordpermission?view=windowsserver2022-ps&wt.mc_id=ps-gethelp
    Windows LAPS Overview https://go.microsoft.com/fwlink/?linkid=2233901



##>