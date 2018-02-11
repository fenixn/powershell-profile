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
