# powershell-profile
This powershell profile allows the use of aliases for git commands and adds other useful aliases and functions for web development.

## Setup
1. Open up Powershell
2. Change directory to your docouments
```shell
cd $env:USERPROFILE\Documents
```
3. Make the WindowsPowerShell directory and change to it
```shell
md WindowsPowerShell
cd WindowsPowerShell
```
4. Create the PowerShell profile and open it on the PowerShell editor
```shell
New-Item Microsoft.PowerShell_profile.ps1 -ItemType "file"
powershell_ise.exe .\Microsoft.PowerShell_profile.ps1
```

5. Set up the Execution Policy to allow your profile to run. To require that only scripts downloaded by the internet need to be signed by a trusted publisher, run the Execution policy below. If you followed the steps above, then you have created your own profile so it will be allowed to execute.
```shell
Set-ExecutionPolicy RemoteSigned CurrentUser
```

6. Copy the functions you want into your profile. You can run the following command to refresh your profile on PowerShell.
```shell
. $profile
```

Now when you run PowerShell, the profile will be loaded automatically by PowerShell and the shortcut commands will be available to use.

## Git Commands
Alias: gits <br>
Command: git status
<br><br>

Alias: gita <br>
Command: git add <br>
```shell
gita ./*txt
```
=> git add ./*txt
<br><br>

Alias: gitaa <br>
Command: git add all <br>
```shell
gitaa
```
=> git add .

Alias: gitc <br>
Command: git commit -m <br>
```shell
gitc "Commit message"
```
=> git commit -m "Commit message"
<br><br>

Alias: gitps <br>
Command: git push origin <br>
```shell
gitps master
```
=> git push origin master
<br><br>

Alias: gitpl <br>
Command: git pull origin <br>
```shell
gitpl master
```
=> git pull origin master
<br><br>

Alias: gitch <br>
Command: git checkout <br>
```shell
gitch master
```
=> git checkout master
<br><br>

Alias: gitb <br>
Command: git branch <br>
```shell
gitb --remote
```
=> git branch --remote
<br><br>

Alias: gitm <br>
Command: git merge <br>
```shell
gitm dev
```
=> git merge dev

## WordPress Commands
Alias: cdwpp <br>
Command: cd .\wp-content\plugins <br>
If you use this alias from the root directory of your WordPress installation, then it will change the directory to the plugins directory
<br><br>

Alias: cdwpt <br>
Command: cd .\wp-content\themes <br>
If you use this alias from the root directory of your WordPress installation, then it will change the directory to the themes directory
<br><br>

## Directory Transversal Commands
Alias: up <br>
Command: "../" <br>
The up command will allow you to go up one directory from your current path
<br><br>

Alias: upnum <br>
Command: "../" repeated by num <br>
```shell
up2
```
The up2 command will allow you to go up two directories form your current path. The max number you can use is up10, which will allow you to go up 10 directories from your current path.
<br><br>
