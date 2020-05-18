@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco install -y googlechrome
choco install -y git.install
choco install -y vscode
choco install -y ditto
choco install -y lightshot
choco install -y peazip
choco install -y vlc

# Fornax
# choco install -y openvpn
# choco install -y dbeaver

# DH
# choco install -y slack
# choco install -y awscli
# choco install -y postman
# choco install -y terraform
