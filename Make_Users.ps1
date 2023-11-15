$PASSWORD_FOR_USERS = "Password1" # password for the users
$user_names = Get-Content C:\users\cchoquette\Desktop\names.txt #gets the users from the names.txt

$password = ConvertTo-SecureString $PASSWORD_FOR_USERS -AsPlainText -Force #makes a secure password for power shell
New-ADOrganizationalUnit -Name _USERS # makes a new OU called _USERS

foreach ($i in $user_names) { # iterates through the names.txt and splits by the space
    $user_details = $i.Split(" ")
    $first = $user_details[0].ToLower() # this is the first name of the user
    $last = $user_details[1].ToLower() # this is the last name of the user
    $username = $first.Substring(0,1).ToLower() + $last.ToLower() # this makes a user name for the user with JDoe
    Write-Host "creating user: $($username)" -BackgroundColor Black -ForegroundColor Red # prints out the user cerated

    New-AdUser -AccountPassword $password ` # makes password
                -GivenName $first ` # makes first name
                -Surname $last ` # makes last anem
                -DisplayName $username ` # gies screen name
                -Name $username ` # gives the full name
                -EmployeeID $username ` # gives a ID
                -PasswordNeverExpires $true ` # check boc that password doesnt expire
                -Path "ou=_USERS,$(([ADSI]`"").distinguishedName)" # puts users in _USER path
                -Enabled $true
}

Write-Host "users have been created" -BackgroundColor Green -ForegroundColor Black # shows completion of script