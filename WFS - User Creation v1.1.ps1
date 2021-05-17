[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

$form = New-Object Windows.Forms.Form



$form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedDialog
$form.MaximizeBox = $False
$form.MinimizeBox = $False

$form.Text = "Script Import Utilisateur v1.1  - Gerhard Eibl -"

$form.Size = New-Object System.Drawing.Size(450,700)

$button_ok = New-Object System.Windows.Forms.Button
$button_ok.Text = "Ok"
$button_ok.Size = New-Object System.Drawing.Size(400,40)
$button_ok.Location = New-Object System.Drawing.Size(20,560)

$button_fermer = New-Object System.Windows.Forms.Button
$button_fermer.Text = "Fermer"
$button_fermer.Size = New-Object System.Drawing.Size(400,40)
$button_fermer.Location = New-Object System.Drawing.Size(20,610)

#$button_file = New-Object System.Windows.Forms.Button
#$button_file.Text = "Fichier.csv"
#$button_file.Size = New-Object System.Drawing.Size(80,20)
#$button_file.Location = New-Object System.Drawing.Size(260,447)

$button_file = New-Object System.Windows.Forms.Button
$button_file.Text = "Ouvrir"
$button_file.Size = New-Object System.Drawing.Size(80,20)
$button_file.Location = New-Object System.Drawing.Point(240,510)
$button_file.Autosize = $true

$button_execute = New-Object System.Windows.Forms.Button
$button_execute.Text = "Exécuter"
$button_execute.Size = New-Object System.Drawing.Size(80,20)
$button_execute.Location = New-Object System.Drawing.Point(340,510)
$button_execute.Autosize = $true

$button_Test = New-Object System.Windows.Forms.Button
$button_Test.Text = "Test"
$button_Test.Size = New-Object System.Drawing.Size(40,20)
$button_Test.Location = New-Object System.Drawing.Point(275,403)
$button_Test.Autosize = $true

$label_prez = New-Object System.Windows.Forms.Label
$label_prez.Text = "Veuillez renseigner le nom de l'utilisateur:"
$label_prez.Size = New-Object System.Drawing.Size(250,20)
$label_prez.Location = New-Object System.Drawing.Point(20,40)
$label_prez.AutoSize = $true

$label_prez2 = New-Object System.Windows.Forms.Label
$label_prez2.Text = "Veuillez renseigner le prénom de l'utilisateur:"
$label_prez2.Size = New-Object System.Drawing.Size(250,20)
$label_prez2.Location = New-Object System.Drawing.Point(20,80)
$label_prez2.AutoSize = $true

$label_prez3 = New-Object System.Windows.Forms.Label
$label_prez3.Text = "Veuillez renseigner le login de l'utilisateur:"
$label_prez3.Size = New-Object System.Drawing.Size(250,20)
$label_prez3.Location = New-Object System.Drawing.Point(20,120)
$label_prez3.AutoSize = $true

$label_prez4 = New-Object System.Windows.Forms.Label
$label_prez4.Text = "Veuillez renseigner le tel fixe de l'utilisateur:"
$label_prez4.Size = New-Object System.Drawing.Size(250,20)
$label_prez4.Location = New-Object System.Drawing.Point(20,160)
$label_prez4.AutoSize = $true

$label_prez5 = New-Object System.Windows.Forms.Label
$label_prez5.Text = "Veuillez renseigner le tel mobile de l'utilisateur:"
$label_prez5.Size = New-Object System.Drawing.Size(250,20)
$label_prez5.Location = New-Object System.Drawing.Point(20,200)
$label_prez5.AutoSize = $true

$label_prez6 = New-Object System.Windows.Forms.Label
$label_prez6.Text = "Veuillez renseigner la fonction de l'utilisateur:"
$label_prez6.Size = New-Object System.Drawing.Size(250,20)
$label_prez6.Location = New-Object System.Drawing.Point(20,240)
$label_prez6.AutoSize = $true

$label_prez7 = New-Object System.Windows.Forms.Label
$label_prez7.Text = "Veuillez renseigner la première UO:"
$label_prez7.Size = New-Object System.Drawing.Size(250,20)
$label_prez7.Location = New-Object System.Drawing.Point(20,280)
$label_prez7.AutoSize = $true

$label_prez8 = New-Object System.Windows.Forms.Label
$label_prez8.Text = "Veuillez renseigner le département de l'utilisateur:"
$label_prez8.Size = New-Object System.Drawing.Size(250,20)
$label_prez8.Location = New-Object System.Drawing.Point(20,320)
$label_prez8.AutoSize = $true

$label_prez9 = New-Object System.Windows.Forms.Label
$label_prez9.Text = "Veuillez renseigner le MDP de l'utilisateur:"
$label_prez9.Size = New-Object System.Drawing.Size(250,20)
$label_prez9.Location = New-Object System.Drawing.Point(20,360)
$label_prez9.AutoSize = $true

$label_prez10 = New-Object System.Windows.Forms.Label
$label_prez10.Text = "Souhaitez vous créer un lecteur pour l'utilisateur ?"
$label_prez10.Size = New-Object System.Drawing.Size(250,20)
$label_prez10.Location = New-Object System.Drawing.Point(20,450)
$label_prez10.AutoSize = $true

$label_prez11 = New-Object System.Windows.Forms.Label
$label_prez11.Text = "Utiliser un fichier .CSV pour importation"
$label_prez11.Size = New-Object System.Drawing.Size(250,20)
$label_prez11.Location = New-Object System.Drawing.Point(20,490)
$label_prez11.AutoSize = $true

$textbox_nom = New-Object System.Windows.Forms.TextBox
$textbox_nom.Name = '$textbox_sw'
$textbox_nom.Text = ""
$textbox_nom.Size = New-Object System.Drawing.Size(140,20)
$textbox_nom.Location = New-Object System.Drawing.Point(275,40)
$textbox_nom.Autosize = $true
$nom = $textbox_nom.Text

$textbox_nom2 = New-Object System.Windows.Forms.TextBox
$textbox_nom2.Name = '$textbox_sw2'
$textbox_nom2.Text = ""
$textbox_nom2.Size = New-Object System.Drawing.Size(140,20)
$textbox_nom2.Location = New-Object System.Drawing.Point(275,80)
$textbox_nom2.Autosize = $true
$login = $textbox_nom2.Text

$textbox_nom3 = New-Object System.Windows.Forms.TextBox
$textbox_nom3.Name = '$textbox_sw3'
$textbox_nom3.Text = ""
$textbox_nom3.Size = New-Object System.Drawing.Size(140,20)
$textbox_nom3.Location = New-Object System.Drawing.Point(275,120)
$textbox_nom3.Autosize = $true
$mdp = $textbox_nom3.Text

$textbox_nom4 = New-Object System.Windows.Forms.TextBox
$textbox_nom4.Name = '$textbox_sw4'
$textbox_nom4.Text = ""
$textbox_nom4.Size = New-Object System.Drawing.Size(140,20)
$textbox_nom4.Location = New-Object System.Drawing.Point(275,160)
$textbox_nom4.Autosize = $true

$textbox_nom5 = New-Object System.Windows.Forms.TextBox
$textbox_nom5.Name = '$textbox_sw5'
$textbox_nom5.Text = ""
$textbox_nom5.Size = New-Object System.Drawing.Size(140,20)
$textbox_nom5.Location = New-Object System.Drawing.Point(275,200)
$textbox_nom5.Autosize = $true

$textbox_nom6 = New-Object System.Windows.Forms.TextBox
$textbox_nom6.Name = '$textbox_sw6'
$textbox_nom6.Text = ""
$textbox_nom6.Size = New-Object System.Drawing.Size(140,20)
$textbox_nom6.Location = New-Object System.Drawing.Point(275,240)
$textbox_nom6.Autosize = $true

$textbox_nom7 = New-Object System.Windows.Forms.TextBox
$textbox_nom7.Name = '$textbox_sw7'
$textbox_nom7.Text = ""
$textbox_nom7.Size = New-Object System.Drawing.Size(140,20)
$textbox_nom7.Location = New-Object System.Drawing.Point(275,280)
$textbox_nom7.Autosize = $true

$textbox_nom8 = New-Object System.Windows.Forms.TextBox
$textbox_nom8.Name = '$textbox_sw8'
$textbox_nom8.Text = ""
$textbox_nom8.Size = New-Object System.Drawing.Size(140,20)
$textbox_nom8.Location = New-Object System.Drawing.Point(275,320)
$textbox_nom8.Autosize = $true

$textbox_nom9 = New-Object System.Windows.Forms.TextBox
$textbox_nom9.Name = '$textbox_sw9'
$textbox_nom9.PasswordChar = '*'
$textbox_nom9.Text = ""
$textbox_nom9.Size = New-Object System.Drawing.Size(140,20)
$textbox_nom9.Location = New-Object System.Drawing.Point(275,360)
$textbox_nom9.Autosize = $true

$textbox_nom10 = New-Object System.Windows.Forms.TextBox
$textbox_nom10.Name = '$textbox_sw10'
$textbox_nom10.PasswordChar = '*'
$textbox_nom10.Text = ""
$textbox_nom10.Size = New-Object System.Drawing.Size(140,20)
$textbox_nom10.Location = New-Object System.Drawing.Point(275,382)
$textbox_nom10.Autosize = $true

$textbox_nom11 = New-Object System.Windows.Forms.TextBox
$textbox_nom11.Name = '$textbox_sw11'
$textbox_nom11.Text = ""
$textbox_nom11.Size = New-Object System.Drawing.Size(80,20)
$textbox_nom11.Location = New-Object System.Drawing.Point(320,405)
$textbox_nom11.Autosize = $true
$textbox_nom11.ReadOnly = $true

$textbox_file = New-Object System.Windows.Forms.TextBox
$textbox_file.Name = '$textbox_fl'
$textbox_file.Size = New-Object System.Drawing.Size(200,30)
$textbox_file.Location = New-Object System.Drawing.Point(230,487)
$textbox_file.Autosize = $true
$textbox_file.ReadOnly = $true


$checkbox_un = New-Object System.Windows.Forms.CheckBox
$checkbox_un.Name = 'checkbox_un'
$checkbox_un.Text = 'Oui'
$checkbox_un.Size = New-Object System.Drawing.Size(80,20)
$checkbox_un.Location = New-Object System.Drawing.Point(280,450)
$checkbox_un.AutoSize = $true

$checkbox_deux = New-Object System.Windows.Forms.CheckBox
$checkbox_deux.Name = 'checkbox_deux'
$checkbox_deux.Text = 'Non'
$checkbox_deux.Size = New-Object System.Drawing.Size(80,20)
$checkbox_deux.Location = New-Object System.Drawing.Point(340,450)
$checkbox_deux.AutoSize = $true


$checkbox_un.Add_CheckStateChanged({

$checkbox_deux.Checked = $checkbox_un.Unchecked })

$checkbox_deux.Add_CheckStateChanged({

$checkbox_un.Checked = $checkbox_deux.Unchecked })


$button_fermer.Add_Click(
{
$form.Close();
})



$checkbox_un.Add_CheckStateChanged({

 If ($checkbox_un.Checked){

 $button_ok.Add_Click({



#Variables pour la commande New-ADUser.

$nom = $textbox_nom.Text

$prenom = $textbox_nom2.Text

$login = $textbox_nom3.Text

$tel = $textbox_nom4.Text

$tel2 = $textbox_nom5.Text

$fonction = $textbox_nom6.Text

$site = $textbox_nom7.Text

$departement = $textbox_nom8.Text

$mdp = $textbox_nom9.Text

$mail = ($login + "@acme.fr")

$nomcomplet = ($nom + " " + $prenom)


#Commande de création de l'utilisateur.

New-ADUser -Name $nomcomplet `
           -GivenName $nom `
           -Surname $prenom `
           -Title $fonction `
           -Department $departement `
           -EmailAddress $mail `
           -OfficePhone $tel `
           -MobilePhone $tel2 `
           -SamAccountName $login `
           -UserPrincipalName $login@ACME.fr `
           -AccountPassword (ConvertTo-SecureString -AsPlainText $mdp -Force) `
           -PasswordNeverExpires $false `
           -CannotChangePassword $false `
           -ChangePasswordAtLogon $true `
           -Enabled $true `
           -HomeDrive "S:" `
           -HomeDirectory "\\SRV-AD-01\$login$" `
           -Path ("OU=$departement, OU=$site, DC=ACME, DC=org") `
           


#Commande pour créer un dossier lecteur de l'utilisateur + récupération d'erreurs [ErrObj1] si existantes.

New-Item "C:\Partage\$login" -ItemType Directory 

#Commande pour créer le partage du lecteur à l'utilisateur et l'administrateur + récupération d'erreurs [ErrObj2] si existantes.

New-SmbShare -Name "$login$" -Path C:\Partage\$login -FullAccess "Administrateur",$login -FolderEnumerationMode AccessBased 

})

} Else {}

}) 



$checkbox_deux.Add_CheckStateChanged({

If ($checkbox_deux.Checked){

$button_ok.Add_Click({

#Variables pour la commande New-ADUser.

$nom = $textbox_nom.Text

$prenom = $textbox_nom2.Text

$login = $textbox_nom3.Text

$tel = $textbox_nom4.Text

$tel2 = $textbox_nom5.Text

$fonction = $textbox_nom6.Text

$site = $textbox_nom7.Text

$departement = $textbox_nom8.Text

$mdp = $textbox_nom9.Text

$mail = ($login + "@acme.fr")

$nomcomplet = ($nom + " " + $prenom)


#Commande de création de l'utilisateur.

New-ADUser -Name $nomcomplet `
           -GivenName $nom `
           -Surname $prenom `
           -Title $fonction `
           -Department $departement `
           -EmailAddress $mail `
           -OfficePhone $tel `
           -MobilePhone $tel2 `
           -SamAccountName $login `
           -UserPrincipalName $login@ACME.fr `
           -AccountPassword (ConvertTo-SecureString -AsPlainText $mdp -Force) `
           -PasswordNeverExpires $false `
           -CannotChangePassword $false `
           -ChangePasswordAtLogon $true `
           -Enabled $true `
           -Path ("OU=$departement, OU=$site, DC=ACME, DC=org") `

})

} Else {}

}) 


$button_Test.Add_Click( { 

    if ( $textbox_nom9.Text.Trim() -ceq $textbox_nom10.Text.Trim() ) {
        $textbox_nom11.Text = 'Match'
    }
    else {
        $textbox_nom11.Text = 'Incorrect'
    }


 } )

Function Get-Filename($initialDirectory)
{
[System.Reflection.Assembly]::LoadWithPartialName("System.windows.forms") |
 Out-Null
 $OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog
 $OpenFileDialog.initialDirectory = $initialDirectory
 $OpenFileDialog.filter = "CSV (*.csv) | *.csv"
 $OpenFileDialog.ShowDialog() | Out-Null
 $OpenFileDialog.filename
 }

$button_file.Add_Click(
{
$textbox_file.Text = Get-Filename -initialDirectory ""
})

$button_execute.Add_Click(
{
$ADUsers = Import-csv -Path $textbox_file.Text -Delimiter ";"

$Path = "OU=PARIS,DC=ACME,DC=org"

	foreach ($User in $ADUsers) {

$nom = $User.Nom

$prenom = $User.Prenom

$login = $User.Login

$tel = $User.Tel01

$tel2 = $User.Tel02

$fonction = $User.Fonction

$departement = $User.Departement

$mdp = $User.MDP

$mail = ($login + "@acme.fr")

$nomcomplet = ($nom + " " + $prenom)


#Création des unités d'organisation
    New-ADOrganizationalUnit -Name $User.Departement -path $Path



#Création des différents groupes
    New-ADGroup -Name ('GG_'+ $User.Departement) -GroupScope Global -Path ("OU=" + $User.Departement + "," + $Path)



#Création des utilisateurs

New-ADUser -Name $nomcomplet `
           -GivenName $nom `
           -Surname $prenom `
           -Title $fonction `
           -Department $departement `
           -EmailAddress $mail `
           -OfficePhone $tel `
           -MobilePhone $tel2 `
           -SamAccountName $login `
           -UserPrincipalName $login@ACME.fr `
           -AccountPassword (ConvertTo-SecureString -AsPlainText $mdp -Force) `
           -PasswordNeverExpires $false `
           -CannotChangePassword $false `
           -ChangePasswordAtLogon $true `
           -Enabled $true `
           -HomeDrive "S:" `
           -HomeDirectory "\\SRV-AD-01\$login$" `
           -Path ("OU=" + $User.Departement + "," + $Path) `

    Add-ADGroupMember -Identity ('GG_'+ $User.Departement) -Members $User.Nom

#Commande pour créer un dossier lecteur de l'utilisateur + récupération d'erreurs [ErrObj1] si existantes.

New-Item "C:\Partage\$login" -ItemType Directory 

#Commande pour créer le partage du lecteur à l'utilisateur et l'administrateur + récupération d'erreurs [ErrObj2] si existantes.

New-SmbShare -Name "$login$" -Path C:\Partage\$login -FullAccess "Administrateur",$login -FolderEnumerationMode AccessBased
    
    }
    })

$form.Controls.Add($button_ok)
$form.Controls.Add($button_fermer)
$form.Controls.Add($button_file)
$form.Controls.Add($button_execute)
$form.Controls.Add($button_Test)
$form.Controls.Add($label_prez)
$form.Controls.Add($label_prez2)
$form.Controls.Add($label_prez3)
$form.Controls.Add($label_prez4)
$form.Controls.Add($label_prez5)
$form.Controls.Add($label_prez6)
$form.Controls.Add($label_prez7)
$form.Controls.Add($label_prez8)
$form.Controls.Add($label_prez9)
$form.Controls.Add($label_prez10)
$form.Controls.Add($label_prez11)
$form.Controls.Add($textbox_nom)
$form.Controls.Add($textbox_nom2)
$form.Controls.Add($textbox_nom3)
$form.Controls.Add($textbox_nom4)
$form.Controls.Add($textbox_nom5)
$form.Controls.Add($textbox_nom6)
$form.Controls.Add($textbox_nom7)
$form.Controls.Add($textbox_nom8)
$form.Controls.Add($textbox_nom9)
$form.Controls.Add($textbox_nom10)
$form.Controls.Add($textbox_nom11)
$form.controls.Add($textbox_file)
$form.Controls.Add($checkbox_un)
$form.Controls.Add($checkbox_deux)


$form.ShowDialog()



