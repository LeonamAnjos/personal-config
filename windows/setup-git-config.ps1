if (!(Get-Command -Name 'git' -ErrorAction SilentlyContinue)) {
    Write-Error "Git is not installed!" -ErrorAction Stop
}

$commonConfig = (Resolve-Path (Join-Path $PSScriptRoot "..\shared\gitconfig.common")).Path
git config --global include.path $commonConfig

# Windows-specific
git config --global core.longpaths true

# Finish
Write-Output "'.gitconfig' updated successfully!"
