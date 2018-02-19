function EditProfile {
    & powershell_ise.exe $profile
}
if (!(Test-Path alias:pse)) { 
    New-Alias -Name pse -Value EditProfile 
} else {
    Set-Alias -Name pse -Value EditProfile
}

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
if (!(Test-Path alias:psr)) { 
    New-Alias -Name psr -Value ReloadProfile 
} else {
    Set-Alias -Name psr -Value ReloadProfile
}

# Import PSColor module. This customizes the colors of the directory listing
Import-Module PSColor

# Git functions
function GitStatus { 
    & git status $args
}

if (!(Test-Path alias:s)) { 
    New-Alias -Name s -Value GitStatus 
} else {
    Set-Alias -Name s -Value GitStatus
}

function GitAddAll {
    & git add .
}
if (!(Test-Path alias:aa)) { 
    New-Alias -Name aa -Value GitAddAll 
} else {
    Set-Alias -Name aa -Value GitAddAll
}

function GitCommit { 
    & git commit -m $args 
}
if (!(Test-Path alias:c)) { 
    New-Alias -Name c -Value GitCommit 
} else {
    Set-Alias -Name c -Value GitCommit
}

function GitPushOrigin {
    & git push origin $args
}
if (!(Test-Path alias:p)) { 
    New-Alias -Name p -Value GitPushOrigin 
} else {
    Set-Alias -Name p -Value GitPushOrigin
}

function GitPushOriginMaster {
    & git push origin master
}
if (!(Test-Path alias:pm)) { 
    New-Alias -Name pm -Value GitPushOriginMaster 
} else {
    Set-Alias -Name pm -Value GitPushOriginMaster
}

function GitPullOrigin {
    & git pull origin $args
}
if (!(Test-Path alias:pl)) { 
    New-Alias -Name pl -Value GitPullOrigin 
} else {
    Set-Alias -Name pl -Value GitPullOrigin
}

function GitPullOriginMaster {
    & git pull origin master
}
if (!(Test-Path alias:pl)) { 
    New-Alias -Name plm -Value GitPullOriginMaster 
} else {
    Set-Alias -Name plm -Value GitPullOriginMaster
}

function GitCheckout {
    & git co $args
}
Set-Alias -Name co -Value GitCheckout
if (!(Test-Path alias:co)) { 
    New-Alias -Name co -Value GitCheckout 
} else {
    Set-Alias -Name co -Value GitCheckout
}

function GitBranch {
    & git branch $args
}
if (!(Test-Path alias:b)) { 
    New-Alias -Name b -Value GitBranch 
} else {
    Set-Alias -Name b -Value GitBranch
}

function GitMerge {
    & git merge $args
}
if (!(Test-Path alias:m)) { 
    New-Alias -Name m -Value GitMerge 
} else {
    Set-Alias -Name m -Value GitMerge
}



# WordPress functions
function WordPressDirectory {
    & d:
    & cd D:\xampp\htdocs\wordpress
}
if (!(Test-Path alias:cdwp)) { 
    New-Alias -Name cdwp -Value WordPressDirectory 
} else {
    Set-Alias -Name cdwp -Value WordPressDirectory
}

function WordPressPlugins {
    & cd .\wp-content\plugins
}
if (!(Test-Path alias:cdwpp)) { 
    New-Alias -Name cdwpp -Value WordPressPlugins 
} else {
    Set-Alias -Name cdwpp -Value WordPressPlugins
}

function WordPressThemes {
    & cd .\wp-content\themes
}
if (!(Test-Path alias:cdwpt)) { 
    New-Alias -Name cdwpt -Value WordPressThemes 
} else {
    Set-Alias -Name cdwpt -Value WordPressThemes
}



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

