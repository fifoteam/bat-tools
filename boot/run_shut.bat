
@ echo off
::关机流程


echo "daily plan"
call g:\fifoteam\bat_tools\daily_plan\xht_plan_sum.bat

echo "zme"
call g:\fifoteam\bat_tools\boot\back_up_zme.bat

echo "fifoteam"
call g:\fifoteam\bat_tools\boot\back_up_fifoteam.bat

::echo "taskkill wiz"
::taskkill /f /im wiz.exe

echo "nutstore"
@ start	"" "D:\Program Files\Nutstore\Nutstore.exe"

echo "weiyunsync"
@ start	"" "D:\Program Files (x86)\Tencent\WeiyunSync\WeiyunSync\Bin\weiyunsync.exe"

shutdown -s -t 60

::pause

