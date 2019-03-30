Param (
    [String]$ApiKey,
    [ValidateSet("Publish", "DryRun")]$Mode
)

Copy-Item -Path 'MavenAutoCompletion.ps*' -Destination '.\MavenAutoCompletion\' -Force

switch ($Mode) {
    "Publish" {
        Write-Host 'Publishing module...'
        Publish-Module -Path ".\MavenAutoCompletion" -NugetAPIKey $ApiKey -Verbose
    }
    "DryRun" {
        Write-Host '[DRY-RUN]Publishing module...'
        Publish-Module -Path ".\MavenAutoCompletion" -NugetAPIKey $ApiKey -Verbose -WhatIf
    }
}
if ($?) {
    Write-Host 'publishing succeed.'
}
