Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco install -y chef-client --version 14.12.9

Write-Output "Setting Administrator Password"
([ADSI]'WinNT://localhost/Administrator, user').psbase.Invoke('SetPassword', 'Cod3Can!')
