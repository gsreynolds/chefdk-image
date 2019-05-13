Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco install -y chef-workstation vscode conemu googlechrome

Invoke-WebRequest "https://raw.githubusercontent.com/gsreynolds/chefdk-image/chef-jumpstart/test_kitchen-templates/kitchen-template-jumpstart.yml" -OutFile 'C:\\Users\\Administrator\kitchen-template.yml'

Write-Output "Setting Administrator Password"
([ADSI]'WinNT://localhost/Administrator, user').psbase.Invoke('SetPassword', 'Cod3Can!')

git config --global user.email "chef-training@example.com"
git config --global user.name "Chef Training"
