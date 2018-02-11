# powershell-profile
This powershell profile allows the use of aliases for git commands.

## Setup
Place the Microsoft.PowerShell_profile.ps1 file into the C:\Users\{Your Username}\Documents\WindowsPowerShell directory. If the file already exists, you can append the functions in the file to your existing profile. Now when you run PowerShell, the profile will be loaded automatically by PowerShell and the shortcut commands will be available to use.

## Commands
Alias: gits
Command: git status

Alias: gitc
Command: git commit -m
Example:
```shell
gitc "Commit message"
```
=> git commit -m "Commit message"

Alias: gitps
Command: git push origin
Example:
```shell
gitps master
```
=> git push origin master

Alias: gitpl
Command: git pull origin
Example:
```shell
gitpl master
```
=> git pull origin master

Alias: gitch
Command: git checkout
Example:
```shell
gitch master
```
=> git checkout master

Alias: gitb
Command: git branch
Example:
```shell
gitb --remote
```
=> git branch --remote
