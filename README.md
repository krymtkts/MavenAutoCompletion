Maven Auto Completion
=====================

Maven Auto Completion provides a simple auto completion of Maven 3 to PowerShell.

- Ideas from [juven/maven-bash-completion: Maven Bash Auto Completion](https://github.com/juven/maven-bash-completion).
  - [License](https://github.com/juven/maven-bash-completion/blob/master/LICENSE)

Requirement
-----------

Maven Auto Completion requires greater equal than PowerShell v6.0.
Check your PowerShell version by executing `$PSVersionTable.PSVersion`.

- This module depends [`Registet-ArugmentCompleter`](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/register-argumentcompleter?view=powershell-5.0) command let.
- However PowerShell v5.x has a known issue about parameters with `-`. [Native ArgumentCompleter not invoked for inputs that begin with hyphen (-) · Issue #2912 · PowerShell/PowerShell](https://github.com/PowerShell/PowerShell/issues/2912)

In case of PowerShell v5.x, you can use auto completion by using escape sequence <code>&#x60;</code>(backquote) like below.

```powershell
mvn install `-
```

Installation
------------

### 1. Get module

#### Clone the repository

Clone the repository to your PowerShell module path.
Check your module pathes by executing `$env:PSModulePath`.

Sample command is below.

```powershell
cd ($env:PSModulePath -split ';')[0]
git clone https://github.com/krymtkts/MavenAutoCompletion
```

#### Installing via PowerShellGet

Comming soon 😅

### 2. Import module

The command is below. Add `-Force` paramter when you update module.

```powershell
Import-Module -Name MavenAutoCompletion -Force
```

Add `Import-Module` to your profile if you want.
Check your profile by executing `$profile`.
