[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

$form = New-Object Windows.Forms.Form



$form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedDialog
$form.MaximizeBox = $False
$form.MinimizeBox = $False

$form.Text = "Script Import Utilisateur Alpha 0.1"

$form.Size = New-Object System.Drawing.Size(400,370)

$button_ok = New-Object System.Windows.Forms.Button
$button_ok.Text = "Ok"
$button_ok.Size = New-Object System.Drawing.Size(350,40)
$button_ok.Location = New-Object System.Drawing.Size(20,230)

$button_fermer = New-Object System.Windows.Forms.Button
$button_fermer.Text = "Fermer"
$button_fermer.Size = New-Object System.Drawing.Size(350,40)
$button_fermer.Location = New-Object System.Drawing.Size(20,280)

$label_prez = New-Object System.Windows.Forms.Label
$label_prez.Text = "Veuillez renseigner le nom de l'utilisateur:"
$label_prez.Size = New-Object System.Drawing.Size(250,20)
$label_prez.Location = New-Object System.Drawing.Point(20,40)
$label_prez.AutoSize = $true

$label_prez2 = New-Object System.Windows.Forms.Label
$label_prez2.Text = "Veuillez renseigner le login de l'utilisateur:"
$label_prez2.Size = New-Object System.Drawing.Size(250,20)
$label_prez2.Location = New-Object System.Drawing.Point(20,80)
$label_prez2.AutoSize = $true

$label_prez3 = New-Object System.Windows.Forms.Label
$label_prez3.Text = "Veuillez renseigner le MDP de l'utilisateur:"
$label_prez3.Size = New-Object System.Drawing.Size(250,20)
$label_prez3.Location = New-Object System.Drawing.Point(20,120)
$label_prez3.AutoSize = $true

$textbox_nom = New-Object System.Windows.Forms.TextBox
$textbox_nom.Name = '$textbox_sw'
$textbox_nom.Text = ""
$textbox_nom.Size = New-Object System.Drawing.Size(140,20)
$textbox_nom.Location = New-Object System.Drawing.Point(240,40)
$textbox_nom.Autosize = $true
$nom = $textbox_nom.Text

$textbox_nom2 = New-Object System.Windows.Forms.TextBox
$textbox_nom2.Name = '$textbox_sw2'
$textbox_nom2.Text = ""
$textbox_nom2.Size = New-Object System.Drawing.Size(140,20)
$textbox_nom2.Location = New-Object System.Drawing.Point(240,80)
$textbox_nom2.Autosize = $true
$login = $textbox_nom2.Text

$textbox_nom3 = New-Object System.Windows.Forms.TextBox
$textbox_nom3.Name = '$textbox_sw3'
$textbox_nom3.Text = ""
$textbox_nom3.Size = New-Object System.Drawing.Size(140,20)
$textbox_nom3.Location = New-Object System.Drawing.Point(240,120)
$textbox_nom3.Autosize = $true
$mdp = $textbox_nom3.Text

$button_fermer.Add_Click(
{
$form.Close();
})

$button_ok.Add_Click(
{
$nom = $textbox_nom.Text
$login = $textbox_nom2.Text
$mdp = $textbox_nom3.Text



 
New-ADUser -Name $nom `
           -SamAccountName $login `
           -UserPrincipalName $login@ACME.fr `
           -AccountPassword (ConvertTo-SecureString -AsPlainText $mdp -Force) `
           -PasswordNeverExpires $true `
           -CannotChangePassword $true `
           -Enabled $true `
           -HomeDrive "S:" `
           -HomeDirectory "\\WIN-C2FNBRBG6GK\$login" `

New-Item "C:\Partage\$login" -ItemType Directory

New-SmbShare -Name $login -Path C:\Partage\$login -FullAccess $login -FolderEnumerationMode AccessBased
 
})

$form.Controls.Add($button_ok)
$form.Controls.Add($button_fermer)
$form.Controls.Add($label_prez)
$form.Controls.Add($label_prez2)
$form.Controls.Add($label_prez3)
$form.Controls.Add($textbox_nom)
$form.Controls.Add($textbox_nom2)
$form.Controls.Add($textbox_nom3)



$form.ShowDialog()



