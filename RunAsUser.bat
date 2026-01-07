<# :
    @echo off
    @REM set "administrator=-Verb RunAs"
    set "administrator=-NoNewWindow"
    
    setlocal enabledelayedexpansion
    set arg="%~f0"
    for %%x in (%*) do set arg=!arg! /, "%%x"
    set "InitScript=Set-Location '%~dp0'; New-Variable -Name "ScriptPath" -Value '%~f0' -Option ReadOnly; "
    set "InitScript=%InitScript% New-Variable -Name "ScriptName" -Value '%~xn0' -Option ReadOnly; New-Variable -Name "DirectoryPath" -Value '%~dp0' -Option ReadOnly; "
    set "InitScript=%InitScript% Invoke-Command ([scriptblock]::Create((gc `$ScriptPath -Raw))) -ArgumentList ('!arg!' -split ' /, '); "
    start /b powershell -NoProfile -NoLogo -Command "&{ Start-Process powershell %administrator% -ArgumentList @('-NoProfile', '-NoLogo', '-Command', \"%InitScript%\") }"
    endlocal
    exit /B
#>

$PSDefaultParameterValues['*:Encoding'] = 'utf8'
Write-Output "`$ScriptPath = $ScriptPath"
Write-Output "`$ScriptName = $ScriptName"
Write-Output "`$DirectoryPath = $DirectoryPath"
Write-Output "`$PSScriptRoot = $PSScriptRoot"
Write-Output "`$Get-Location = $(Get-Location)"
Write-Output "`$args.Count = $($args.Count)"
Write-Output "`$args = $args"
Pause
