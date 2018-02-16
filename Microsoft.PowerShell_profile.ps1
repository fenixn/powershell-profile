# Quickly edit this profile
function EditProfile {
    & c:
    & cd $env:USERPROFILE\Documents\WindowsPowerShell
    & powershell_ise.exe .\Microsoft.PowerShell_profile.ps1
}
New-Alias -Name pse -Value EditProfile

function ReloadProfile {
    @(
        $Profile.AllUsersAllHosts,
        $Profile.AllUsersCurrentHost,
        $Profile.CurrentUserAllHosts,
        $Profile.CurrentUserCurrentHost
    ) | % {
        if(Test-Path $_){
            Write-Verbose "Running $_"
            . $_
        }
    } 
}
New-Alias -Name psr -Value ReloadProfile

# Git functions
function GitStatus { 
    & git status $args
}
New-Alias -Name s -Value GitStatus

function GitAddAll {
    & git add .
}
New-Alias -Name aa -Value GitAddAll

function GitCommit { 
    & git commit -m $args 
}
New-Alias -Name c -Value GitCommit

function GitPushOrigin {
    & git push origin $args
}
New-Alias -Name p -Value GitPushOrigin

function GitPullOrigin {
    & git pull origin $args
}
New-Alias -Name pl -Value GitPullOrigin

function GitCheckout {
    & git co $args
}
New-Alias -Name co -Value GitCheckout

function GitBranch {
    & git branch $args
}
New-Alias -Name b -Value GitBranch

function GitMerge {
    & git merge $args
}
New-Alias -Name m -Value GitMerge



# WordPress functions
function WordPressPlugins {
    & cd .\wp-content\plugins
}
New-Alias -Name cdwpp -Value WordPressPlugins

function WordPressThemes {
    & cd .\wp-content\themes
}
New-Alias -Name cdwpt -Value WordPressThemes



# Directory transversal functions

# Invoke the up commands to travel up directories. 
for($i = 1; $i -le 10; $i++) {
    $up = "".PadLeft($i,"u")
    $upnum = "up$i"
    $d = $up.Replace("u","../")
    Invoke-Expression "function $up { push-location $d }"
    Invoke-Expression "function $upnum { push-location $d }"
}
Invoke-Expression "function up { push-location '../' }"

