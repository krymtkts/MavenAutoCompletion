
# List of plugin goals from Maven Bash Auto Completion - https://github.com/juven/maven-bash-completion
# - License - https://github.com/juven/maven-bash-completion/blob/master/LICENSE

$MvnOptions = '-am', '-amd', '-B', '-C', '-c', '-cpu', '-D', '-e', '-emp', '-ep', '-f', '-fae', '-ff', '-fn', '-gs', '-h', '-l', '-N', '-npr', '-npu', '-nsu', '-o', '-P', '-pl', '-q', '-rf', '-s', '-T', '-t', '-U', '-up', '-V', '-v', '-X'
$MvnLongOptions = '--also-make', '--also-make-dependents', '--batch-mode', '--strict-checksums', '--lax-checksums', '--check-plugin-updates', '--define', '--errors', '--encrypt-master-password', '--encrypt-password', '--file', '--fail-at-end', '--fail-fast', '--fail-never', '--global-settings', '--help', '--log-file', '--non-recursive', '--no-plugin-registry', '--no-plugin-updates', '--no-snapshot-updates', '--offline', '--activate-profiles', '--projects', '--quiet', '--resume-from', '--settings', '--threads', '--toolchains', '--update-snapshots', '--update-plugins', '--show-version', '--version', '--debug'

$CommonLifecyclePhases = {
    $CommonCleanLifecycle = 'pre-clean', 'clean', 'post-clean'
    $CommonDefaultLifecycle = 'validate', 'initialize', 'generate-sources', 'process-sources', 'generate-resources', 'process-resources', 'compile', 'process-classes', 'generate-test-sources', 'process-test-sources', 'generate-test-resources', 'process-test-resources', 'test-compile', 'process-test-classes', 'test', 'prepare-package', 'package', 'pre-integration-test', 'integration-test', 'post-integration-test', 'verify', 'install', 'deploy'
    $CommonSiteLifecycle = 'pre-site', 'site', 'post-site', 'site-deploy'
    $CommonCleanLifecycle + $CommonDefaultLifecycle + $CommonSiteLifecycle
}.Invoke()

$PluginGoals = @{
    'appengine:'     = 'appengine:backends_configure', 'appengine:backends_delete', 'appengine:backends_rollback', 'appengine:backends_start', 'appengine:backends_stop', 'appengine:backends_update', 'appengine:debug', 'appengine:devserver', 'appengine:devserver_start', 'appengine:devserver_stop', 'appengine:endpoints_get_client_lib', 'appengine:endpoints_get_discovery_doc', 'appengine:enhance', 'appengine:rollback', 'appengine:set_default_version', 'appengine:start_module_version', 'appengine:stop_module_version', 'appengine:update', 'appengine:update_cron', 'appengine:update_dos', 'appengine:update_indexes', 'appengine:update_queues', 'appengine:vacuum_indexes'
    'android:'       = 'android:apk', 'android:apklib', 'android:clean', 'android:deploy', 'android:deploy-dependencies', 'android:dex', 'android:emulator-start', 'android:emulator-stop', 'android:emulator-stop-all', 'android:generate-sources', 'android:help', 'android:instrument', 'android:manifest-update', 'android:pull', 'android:push', 'android:redeploy', 'android:run', 'android:undeploy', 'android:unpack', 'android:version-update', 'android:zipalign', 'android:devices'
    'ant:'           = 'ant:ant', 'ant:clean'
    'antrun:'        = 'antrun:run'
    'archetype:'     = 'archetype:generate', 'archetype:create-from-project', 'archetype:crawl'
    'assembly:'      = 'assembly:single', 'assembly:assembly'
    'build-helper:'  = 'build-helper:add-resource', 'build-helper:add-source', 'build-helper:add-test-resource', 'build-helper:add-test-source', 'build-helper:attach-artifact', 'build-helper:bsh-property', 'build-helper:cpu-count', 'build-helper:help', 'build-helper:local-ip', 'build-helper:maven-version', 'build-helper:parse-version', 'build-helper:regex-properties', 'build-helper:regex-property', 'build-helper:released-version', 'build-helper:remove-project-artifact', 'build-helper:reserve-network-port', 'build-helper:timestamp-property'
    'buildnumber:'   = 'buildnumber:create', 'buildnumber:create-timestamp', 'buildnumber:help', 'buildnumber:hgchangeset'
    'cargo:'         = 'cargo:start', 'cargo:run', 'cargo:stop', 'cargo:deploy', 'cargo:undeploy', 'cargo:help'
    'checkstyle:'    = 'checkstyle:checkstyle', 'checkstyle:check'
    'cobertura:'     = 'cobertura:cobertura'
    'findbugs:'      = 'findbugs:findbugs', 'findbugs:gui', 'findbugs:help'
    'dependency:'    = 'dependency:analyze', 'dependency:analyze-dep-mgt', 'dependency:analyze-duplicate', 'dependency:analyze-only', 'dependency:analyze-report', 'dependency:build-classpath', 'dependency:copy', 'dependency:copy-dependencies', 'dependency:get', 'dependency:go-offline', 'dependency:help', 'dependency:list', 'dependency:list-repositories', 'dependency:properties', 'dependency:purge-local-repository', 'dependency:resolve', 'dependency:resolve-plugins', 'dependency:sources', 'dependency:tree', 'dependency:unpack', 'dependency:unpack-dependencies'
    'deploy:'        = 'deploy:deploy-file'
    'ear:'           = 'ear:ear', 'ear:generate-application-xml'
    'eclipse:'       = 'eclipse:clean', 'eclipse:eclipse'
    'ejb:'           = 'ejb:ejb'
    'enforcer:'      = 'enforcer:enforce', 'enforcer:display-info'
    'exec:'          = 'exec:exec', 'exec:java'
    'failsafe:'      = 'failsafe:integration-test', 'failsafe:verify'
    'flyway:'        = 'flyway:migrate', 'flyway:clean', 'flyway:info', 'flyway:validate', 'flyway:baseline', 'flyway:repair'
    'gpg:'           = 'gpg:sign', 'gpg:sign-and-deploy-file'
    'grails:'        = 'grails:clean', 'grails:config-directories', 'grails:console', 'grails:create-controller', 'grails:create-domain-class', 'grails:create-integration-test', 'grails:create-pom', 'grails:create-script', 'grails:create-service', 'grails:create-tag-lib', 'grails:create-unit-test', 'grails:exec', 'grails:generate-all', 'grails:generate-controller', 'grails:generate-views', 'grails:help', 'grails:init', 'grails:init-plugin', 'grails:install-templates', 'grails:list-plugins', 'grails:maven-clean', 'grails:maven-compile', 'grails:maven-functional-test', 'grails:maven-grails-app-war', 'grails:maven-test', 'grails:maven-war', 'grails:package', 'grails:package-plugin', 'grails:run-app', 'grails:run-app-https', 'grails:run-war', 'grails:set-version', 'grails:test-app', 'grails:upgrade', 'grails:validate', 'grails:validate-plugin', 'grails:war'
    'gwt:'           = 'gwt:browser', 'gwt:clean', 'gwt:compile', 'gwt:compile-report', 'gwt:css', 'gwt:debug', 'gwt:eclipse', 'gwt:eclipseTest', 'gwt:generateAsync', 'gwt:help', 'gwt:i18n', 'gwt:mergewebxml', 'gwt:resources', 'gwt:run', 'gwt:run-codeserver', 'gwt:sdkInstall', 'gwt:source-jar', 'gwt:soyc', 'gwt:test'
    'help:'          = 'help:active-profiles', 'help:all-profiles', 'help:describe', 'help:effective-pom', 'help:effective-settings', 'help:evaluate', 'help:expressions', 'help:help', 'help:system'
    'hibernate3:'    = 'hibernate3:hbm2ddl', 'hibernate3:help'
    'idea:'          = 'idea:clean', 'idea:idea'
    'install:'       = 'install:install-file'
    'jacoco:'        = 'jacoco:check', 'jacoco:dump', 'jacoco:help', 'jacoco:instrument', 'jacoco:merge', 'jacoco:prepare-agent', 'jacoco:prepare-agent-integration', 'jacoco:report', 'jacoco:report-integration', 'jacoco:restore-instrumented-classes'
    'javadoc:'       = 'javadoc:javadoc', 'javadoc:jar', 'javadoc:aggregate'
    'jboss:'         = 'jboss:start', 'jboss:stop', 'jboss:deploy', 'jboss:undeploy', 'jboss:redeploy'
    'jboss-as:'      = 'jboss-as:add-resource', 'jboss-as:deploy', 'jboss-as:deploy-only', 'jboss-as:deploy-artifact', 'jboss-as:redeploy', 'jboss-as:redeploy-only', 'jboss-as:undeploy', 'jboss-as:undeploy-artifact', 'jboss-as:run', 'jboss-as:start', 'jboss-as:shutdown', 'jboss-as:execute-commands'
    'jetty:'         = 'jetty:run', 'jetty:run-exploded', 'jetty:run-forked'
    'jxr:'           = 'jxr:jxr'
    'license:'       = 'license:format', 'license:check'
    'liquibase:'     = 'liquibase:changelogSync', 'liquibase:changelogSyncSQL', 'liquibase:clearCheckSums', 'liquibase:dbDoc', 'liquibase:diff', 'liquibase:dropAll', 'liquibase:help', 'liquibase:migrate', 'liquibase:listLocks', 'liquibase:migrateSQL', 'liquibase:releaseLocks', 'liquibase:rollback', 'liquibase:rollbackSQL', 'liquibase:status', 'liquibase:tag', 'liquibase:update', 'liquibase:updateSQL', 'liquibase:updateTestingRollback'
    'nexus-staging:' = 'nexus-staging:close', 'nexus-staging:deploy', 'nexus-staging:deploy-staged', 'nexus-staging:deploy-staged-repository', 'nexus-staging:drop', 'nexus-staging:help', 'nexus-staging:promote', 'nexus-staging:rc-close', 'nexus-staging:rc-drop', 'nexus-staging:rc-list', 'nexus-staging:rc-list-profiles', 'nexus-staging:rc-promote', 'nexus-staging:rc-release', 'nexus-staging:release'
    'pmd:'           = 'pmd:pmd', 'pmd:cpd', 'pmd:check', 'pmd:cpd-check'
    'properties:'    = 'properties:read-project-properties', 'properties:write-project-properties', 'properties:write-active-profile-properties', 'properties:set-system-properties'
    'release:'       = 'release:clean', 'release:prepare', 'release:rollback', 'release:perform', 'release:stage', 'release:branch', 'release:update-versions'
    'repository:'    = 'repository:bundle-create', 'repository:bundle-pack', 'repository:help'
    'scala:'         = 'scala:add-source', 'scala:cc', 'scala:cctest', 'scala:compile', 'scala:console', 'scala:doc', 'scala:doc-jar', 'scala:help', 'scala:run', 'scala:script', 'scala:testCompile'
    'scm:'           = 'scm:add', 'scm:checkin', 'scm:checkout', 'scm:update', 'scm:status'
    'site:'          = 'site:site', 'site:deploy', 'site:run', 'site:stage', 'site:stage-deploy'
    'sonar:'         = 'sonar:sonar', 'sonar:help'
    'source:'        = 'source:aggregate', 'source:jar', 'source:jar-no-fork'
    'surefire:'      = 'surefire:test'
    'tomcat6:'       = 'tomcat6:help', 'tomcat6:run', 'tomcat6:run-war', 'tomcat6:run-war-only', 'tomcat6:stop', 'tomcat6:deploy', 'tomcat6:undeploy'
    'tomcat7:'       = 'tomcat7:help', 'tomcat7:run', 'tomcat7:run-war', 'tomcat7:run-war-only', 'tomcat7:deploy'
    'tomcat:'        = 'tomcat:help', 'tomcat:start', 'tomcat:stop', 'tomcat:deploy', 'tomcat:undeploy'
    'liberty:'       = 'liberty:create-server', 'liberty:start-server', 'liberty:stop-server', 'liberty:run-server', 'liberty:deploy', 'liberty:undeploy', 'liberty:java-dump-server', 'liberty:dump-server', 'liberty:package-server'
    'versions:'      = 'versions:display-dependency-updates', 'versions:display-plugin-updates', 'versions:display-property-updates', 'versions:update-parent', 'versions:update-properties', 'versions:update-child-modules', 'versions:lock-snapshots', 'versions:unlock-snapshots', 'versions:resolve-ranges', 'versions:set', 'versions:use-releases', 'versions:use-next-releases', 'versions:use-latest-releases', 'versions:use-next-snapshots', 'versions:use-latest-snapshots', 'versions:use-next-versions', 'versions:use-latest-versions', 'versions:commit', 'versions:revert'
    'vertx:'         = 'vertx:init', 'vertx:runMod', 'vertx:pullInDeps', 'vertx:fatJar'
    'war:'           = 'war:war', 'war:exploded', 'war:inplace', 'war:manifest'
    'spring_boot:'   = 'spring-boot:run', 'spring-boot:repackage'
    'jgitflow:'      = 'jgitflow:feature-start', 'jgitflow:feature-finish', 'jgitflow:release-start', 'jgitflow:release-finish', 'jgitflow:hotfix-start', 'jgitflow:hotfix-finish', 'jgitflow:build-number'
    'wildfly:'       = 'wildfly:add-resource', 'wildfly:deploy', 'wildfly:deploy-only', 'wildfly:deploy-artifact', 'wildfly:redeploy', 'wildfly:redeploy-only', 'wildfly:undeploy', 'wildfly:undeploy-artifact', 'wildfly:run', 'wildfly:start', 'wildfly:shutdown', 'wildfly:execute-commands'
}

$Completion, $FullCompletion, $PrefixiesCompletion = {
    $GoalsPrefixies = @()
    $Goals = @()
    foreach ($Entry in $PluginGoals.GetEnumerator()) {
        $GoalsPrefixies += $Entry.Key
        $Goals += $Entry.Value
    }
    $Completion = $CommonLifecyclePhases + $GoalsPrefixies
    $FullCompletion = ($CommonLifecyclePhases + $Goals) -join '|'
    $PrefixiesCompletion = $GoalsPrefixies -join '|'
    $Completion, $FullCompletion, $PrefixiesCompletion
}.Invoke()

$SystemProperties = 'maven.test.skip=true', 'skipTests', 'skipITs', 'test=', 'it.test=', 'failIfNoTests=false', 'maven.surefire.debug', 'enableCiProfile=true', 'pmd.skip=true', 'checkstyle.skip=true', 'tycho.mode=maven', 'maven.javadoc.skip=true', 'gwt.compiler.skip=true', 'cobertura.skip=true', 'findbugs.skip=true', 'performRelease=true', 'gpg.skip=true', 'forkCount=0'
$ShortSystemProperties = $SystemProperties | ForEach-Object -Process {"-D$_"}

# Find folders that include pom.xml.
function MavenProjects {
    Param($Path)
    Get-ChildItem -File -Path $Path -Recurse -Name 'pom.xml' | Split-Path -Parent | Split-Path -Leaf
}

$DefaultFilterScriptBlock = {
    Param($WordToComplete)
    {
        Param($It)
        $It -like "$WordToComplete*"
    }
}

$ProjectFilterScriptBlock = {
    Param($WordToComplete)
    {
        Param($It)
        ($It -like "$($WordToComplete -replace ":")*") -and ($It -ne "")
    }
}

$DefaultResultScriptBlock = {
    Param($It)
    [System.Management.Automation.CompletionResult]::new($It, $It, 'ParameterValue', $It)
}

$ProjectResultScriptBlock = {
    Param($It)
    [System.Management.Automation.CompletionResult]::new(":$It", ":$It", 'ParameterValue', ":$It")
}

$QuatedResultScriptBlock = {
    Param($It)
    [System.Management.Automation.CompletionResult]::new("'$It'", "'$It'", 'ParameterValue', "'$It'")
}

# Generate auto completion result from input source.
function ToCompletionResult {
    Param($Source,
        $WordToComplete,
        $FilterScriptBlock = $DefaultFilterScriptBlock,
        $ResultScriptBlock = $DefaultResultScriptBlock)

    $FilterExpression = $FilterScriptBlock.Invoke($WordToComplete)
    Write-Output -InputObject -- $Source |
        Where-Object -FilterScript { $FilterExpression.Invoke($_) } |
        Sort-Object |
        ForEach-Object -Process { $ResultScriptBlock.Invoke($_)}
}

# Script Block for `Register-ArgumentCompleter`
$ArgumentCompletionScriptBlock = {
    param($wordToComplete, $commandAst, $cursorPosition)

    $LastIndex = $commandAst.CommandElements.Count - 1;
    if ($LastIndex -gt 0) {
        $LastBlock = $commandAst.CommandElements[($LastIndex - 1)..$LastIndex] -join ' '
    }
    else {
        $LastBlock = $wordToComplete
    }

    # Handle last 2 blocks of command line.
    switch -Regex -CaseSensitive ($LastBlock) {
        # Handle module names.
        "^(--(projects|resume-from)|-(pl|rf))\s+\:.*" {
            $Projects = MavenProjects -Path (Get-Location).Path
            ToCompletionResult -Source $Projects -WordToComplete $wordToComplete -FilterScriptBlock $ProjectFilterScriptBlock -ResultScriptBlock $ProjectResultScriptBlock
            break;
        }
        # Handle '--define' properties for each goals.
        "^.*--define\s*.*" {
            ToCompletionResult -Source $SystemProperties -WordToComplete $wordToComplete -ResultScriptBlock $QuatedResultScriptBlock
            break;
        }
        # Handle all goals.
        default {
            switch -Regex -CaseSensitive ($wordToComplete) {
                # Handle long options for each goals.
                "^--.*" {
                    ToCompletionResult -Source $MvnLongOptions -WordToComplete $wordToComplete
                    break;
                }
                # Handle '-D' properties for each goals.
                "^-D.*" {
                    ToCompletionResult -Source $ShortSystemProperties -WordToComplete $wordToComplete -ResultScriptBlock $QuatedResultScriptBlock
                    break;
                }
                # Handle options for each goals.
                "^-.*" {
                    ToCompletionResult -Source $MvnOptions -WordToComplete $wordToComplete
                    break;
                }
                # Handle plugin goals. for example `ant:`
                "^($PrefixiesCompletion).*" {
                    $Prefix = $Matches[$Matches.Count - 1]
                    ToCompletionResult -Source $PluginGoals[$Prefix] -WordToComplete $wordToComplete
                    break;
                }
                default {
                    ToCompletionResult -Source $Completion -WordToComplete $wordToComplete
                }
            }
        }
    }
}

Register-ArgumentCompleter -Native -CommandName 'mvn' -ScriptBlock $ArgumentCompletionScriptBlock

# No function exported.
Export-ModuleMember
