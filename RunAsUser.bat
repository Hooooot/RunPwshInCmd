<# :
    @echo off
    setlocal enabledelayedexpansion
    set arg="%~f0"
    for %%x in (%*) do set arg=!arg! /, "%%x"
    start /b powershell /nologo /noprofile /command ^
"Start-Process powershell '/nologo /noprofile /command ^
"""^&{ $ScriptPath="""""""""%~f0"""""""""; $ScriptName="""""""""%~xn0"""""""""; $Path="""""""""%~dp0"""""""""; Set-Location $Path; ^
    icm ([scriptblock]::Create((gc $ScriptPath -Raw))) -ArgumentList ("""""""""!arg!""""""""" -split """"""""" /, """""""""); }""" '"
    endlocal
    exit /B
#>

# write your powershell command here

$PSDefaultParameterValues['*:Encoding'] = 'utf8'
Write-Host $ScriptPath
Write-Host $ScriptName
Write-Host $Path
Write-Output $args
pause