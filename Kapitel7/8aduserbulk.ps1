Import-Module ActiveDirectory
  
# Importiere CSV:
$ADUsers = Import-Csv "C:\Users\Administrator\PowerShell\Kapitel7\8users.csv" -Delimiter ";"

# UPN-Suffix
$UPN = "domain.de"

# Loop über AD-User
foreach ($User in $ADUsers) {

    # Nicht unbedingt notwendig, aber elegantere Var-Bezeichnungen
    $username = $User.username
    $password = $User.password
    $firstname = $User.firstname
    $lastname = $User.lastname
    $initials = $User.initials
    $OU = $User.ou 
    $email = $User.email
    $streetaddress = $User.streetaddress
    $city = $User.city
    $zipcode = $User.zipcode
    $state = $User.state
    $telephone = $User.telephone
    $jobtitle = $User.jobtitle
    $company = $User.company
    $department = $User.department

    # Warnung, falls Benutzer schon existiert!
    if (Get-ADUser -Filter { SamAccountName -eq $username }) {
        Write-Warning "A user account with username $username already exists in Active Directory."
    }
    else {

        # Wenn Benutzer noch nicht existiert:
        New-ADUser `
            -SamAccountName $username `
            -UserPrincipalName "$username@$UPN" `
            -Name "$firstname $lastname" `
            -GivenName $firstname `
            -Surname $lastname `
            -Initials $initials `
            -Enabled $True `
            -DisplayName "$lastname, $firstname" `
            -Path $OU `
            -City $city `
            -PostalCode $zipcode `
            -Company $company `
            -State $state `
            -StreetAddress $streetaddress `
            -OfficePhone $telephone `
            -EmailAddress $email `
            -Title $jobtitle `
            -Department $department `
            -AccountPassword (ConvertTo-secureString $password -AsPlainText -Force) -ChangePasswordAtLogon $True

        # Ausgabe:
        Write-Host "The user account $username is created." -ForegroundColor Cyan
    }
}
