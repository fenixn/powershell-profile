function GitStatus { 
    & git status $args
}
New-Alias -Name gits -Value GitStatus

function GitCommit { 
    & git commit -m $args 
}
New-Alias -Name gitc -Value GitCommit

function GitPushOrigin {
    & git push origin $args
}
New-Alias -Name gitps -Value GitPushOrigin

function GitPullOrigin {
    & git pull origin $args
}
New-Alias -Name gitpl -Value GitPullOrigin

function GitCheckout {
    & git checkout $args
}
New-Alias -Name gitch -Value GitCheckout

function GitBranch {
    & git branch $args
}
New-Alias -Name gitb -Value GitBranch

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

