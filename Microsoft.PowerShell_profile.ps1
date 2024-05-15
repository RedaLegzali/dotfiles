oh-my-posh init pwsh | Invoke-Expression
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/star.omp.json" | Invoke-Expression

Import-Module PSReadLine
Import-Module DockerCompletion
Import-Module $env:ChocolateyInstall\helpers\chocolateyProfile.psm1

# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

Set-PSReadLineOption -PredictionSource History
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

# rbenv for Windows
$env:RBENV_ROOT = "C:\Ruby-on-Windows"
& "$env:RBENV_ROOT\rbenv\bin\rbenv.ps1" init
