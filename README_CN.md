# RunPwshInCmd
允许你直接在`.bat`脚本中运行`Powershell`命令

## 你可以像运行bat脚本一样运行Powershell脚本.

* 不需要执行 `Set-ExecutionPolicy` 命令
* 脚本输入参数将被保留
* 除了已知问题以外，你可以像在`.ps1` / `.psm1`文件中一样直接在`.bat`文件中编写你的脚本 

## 已知问题

- `Get-Location`, `$pwd`, `$MyInvocation.MyCommand.Definition`, `$PSScriptRoot` 无法被使用
- - 但是脚本定义的一些内置变量可以解决这个问题

## 说明

- `RunAsAdministrator.bat` 使用Windows管理员权限运行脚本（有UAC弹窗提示）.
- `RunAsUser.bat` 使用Windows普通用户权限运行脚本.
