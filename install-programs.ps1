
# install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

refreshenv

choco install -y ((Get-Content $PSScriptRoot\chocolatey-packages.list | where { $_ -match '(^[a-zA-Z0-9-_.]+$)' }) -join ' ')
