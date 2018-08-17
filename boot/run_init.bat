
@ echo off
::开机启动项

echo "shadowsocks"
@ start	"" "D:\Tools\xht_tools\Shadowsocks-2.5.8\Shadowsocks.exe"


echo "Microsoft Security Client"
@ start	"" "c:\Program Files\Microsoft Security Client\msseces.exe" -hide -runkey

echo "autorun.ahk"
@ start	"" "f:\fifoteam\ahk-tools\autorun\autorun.ahk"
::echo "Ditto"
::@ start	"" "D:\Tools\xht_tools\Ditto\Ditto.exe"
::echo "dexpot"
::@ start	"" "D:\Tools\xht_tools\dexpot_1610_portable_r2373\dexpot.exe"
echo "263em"
@ start	"" "D:\Program Files (x86)\263 Enterprise Messenger\263em.exe"
::echo "Foxmail"
::@ start	"" "D:\Program Files\Foxmail 7.0\Foxmail.exe" /MIN
echo "Thunderbird"
@ start	"" "D:\Program Files (x86)\Mozilla Thunderbird\thunderbird.exe" /MIN
echo "Wiz"
@ start	"" "D:\Program Files (x86)\WizNote\Wiz.exe"
::echo "Evernote"
::@ start	"" "D:\Program Files (x86)\Evernote\Evernote\Evernote.exe"
echo "TOTALCMD64"
@ start	"" "D:\Tools\totalcmd\TOTALCMD.EXE"
::echo "everything"
::@ start	"" "D:\Tools\Everything\Everything.exe"
::echo "CCleaner"
::@ start	"" "d:\Tools\xht_tools\CCleaner Professional Portable\CCleaner64.exe" /MIN
echo "strokeit"
@ start	"" "D:\Tools\xht_tools\TCB Networks\StrokeIt\strokeit.exe"



::echo "flux"
::@ start	"" "C:\Users\xht\AppData\Local\FluxSoftware\Flux\flux.exe"

::echo "Wunderlist"
::@ start	"" C:\Users\xht\AppData\Local\Wunderlist\Wunderlist.exe"


::echo "taskkill GWX"
::taskkill /f /im GWX.exe

::pause