Param (
    [String]$ApiKey,
    [ValidateSet('Publish', 'DryRun')]$Mode
)

Copy-Item -Path 'MavenAutoCompletion.ps*' -Destination '.\MavenAutoCompletion\' -Force

Invoke-ScriptAnalyzer -Path '.\MavenAutoCompletion\MavenAutoCompletion.psm1' -Recurse -Settings PSGallery

switch ($Mode) {
    'Publish' {
        Write-Host 'Publishing module...'
        Publish-Module -Path '.\MavenAutoCompletion' -NugetAPIKey $ApiKey -Verbose
    }
    'DryRun' {
        Write-Host '[DRY-RUN]Publishing module...'
        Publish-Module -Path '.\MavenAutoCompletion' -NugetAPIKey $ApiKey -Verbose -WhatIf
    }
}
if ($?) {
    Write-Host 'publishing succeed.'
}
