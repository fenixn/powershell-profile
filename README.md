# powershell-profile
This powershell profile allows the use of aliases for git commands.

## Setup
Place the Microsoft.PowerShell_profile.ps1 file into the C:\Users\{Your Username}\Documents\WindowsPowerShell directory. If the file already exists, you can append the functions in the file to your existing profile. Now when you run PowerShell, the profile will be loaded automatically by PowerShell and the shortcut commands will be available to use.

## Commands
Alias: gits <br>
Command: git status
<br><br>

Alias: gitc <br>
Command: git commit -m <br>
Example:
```shell
gitc "Commit message"
```
=> git commit -m "Commit message"
<br><br>

Alias: gitps <br>
Command: git push origin <br>
Example:
```shell
gitps master
```
=> git push origin master
<br><br>

Alias: gitpl <br>
Command: git pull origin <br>
Example:
```shell
gitpl master
```
=> git pull origin master
<br><br>

Alias: gitch <br>
Command: git checkout <br>
Example:
```shell
gitch master
```
=> git checkout master
<br><br>

Alias: gitb <br>
Command: git branch <br>
Example:
```shell
gitb --remote
```
=> git branch --remote
