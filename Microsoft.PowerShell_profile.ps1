Import-Module oh-my-posh
Import-Module PSReadLine
Set-PoshPrompt -Theme amro
Set-PSReadLineOption -PredictionSource History
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
