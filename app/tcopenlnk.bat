@echo off
REM example
Set Shortcut=%1
echo set WshShell = WScript.CreateObject("WScript.Shell")>DecodeShortCut.vbs
echo set Lnk = WshShell.CreateShortcut(WScript.Arguments.Unnamed(0))>>DecodeShortCut.vbs
echo wscript.Echo Lnk.TargetPath>>DecodeShortCut.vbs
set vbscript=cscript //nologo DecodeShortCut.vbs
For /f "delims=" %%T in ( ' %vbscript% "%Shortcut%" ' ) do set target=%%T
del DecodeShortCut.vbs
::Echo Shortcut %shortcut%
Echo "%target%"
start "" "D:\Tools\totalcmd\TOTALCMD.EXE" /O /T %target%