# Menu.ps1
# scelta di comandi
switch ($args[0])
{
"D" {Get-Date}
"U" {$env:username}
"L" {Get-ChildItem}
"C" {Get-Location}
default {write-host "D = data odierna"
		 write-host "U = utente collegato"
		 write-host "L = lista dei file"
		 write-host "C = directory corrente"
		}
}
