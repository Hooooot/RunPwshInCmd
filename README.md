# RunPwshInCmd
Allow you to directly write PowerShell commands in bat scripts.

## You can run powershell scripts like a bat script.

* No need to execute the `Set-ExecutionPolicy` command
* Script parameters can be retained
* Apart from known issues, you can write your script directly in the `.bat` file, just like in the `.ps1`/`. psm1` files

## Known issues

- `Get-Location`, `$pwd`, `$MyInvocation.MyCommand.Definition`, `$PSScriptRoot` cannot be use.
- - But some built-in variables defined by the script can solve this problem.

## Description

- `RunAsAdministrator.bat` Run PowerShell commands as a Windows administrator.
- `RunAsUser.bat` Run PowerShell commands as a regular Windows user.
