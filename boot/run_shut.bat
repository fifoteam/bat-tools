
@ echo off
::关机流程


echo "daily plan"
call f:\fifoteam\bat_tools\daily_plan\xht_plan_sum.bat

echo "taskkill wiz"
taskkill /f /im wiz.exe

echo "taskkill 263em"
taskkill /f /im 263em.exe

echo "taskkill shadowsocks"
taskkill /f /im Shadowsocks.exe

echo "taskkill uedit32"
taskkill /f /im uedit32.exe

echo "taskkill TOTALCMD"
taskkill /f /im TOTALCMD.exe

echo "zme"
call f:\fifoteam\bat_tools\boot\back_up_zme.bat

echo "fifoteam"
call f:\fifoteam\bat_tools\boot\back_up_fifoteam.bat

::echo "taskkill wiz"
::taskkill /f /im wiz.exe

echo "nutstore"
@ start	"" "D:\Program Files\Nutstore\Nutstore.exe"

echo "weiyunsync"
@ start	"" "D:\Program Files (x86)\Tencent\WeiyunSync\WeiyunSync\Bin\weiyunsync.exe"

shutdown -s -t 60

::pause

