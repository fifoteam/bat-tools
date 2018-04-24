
@ echo off
::关机流程


echo "daily plan"
call f:\FifoTeam\bat_tools\daily_plan\xht_plan_sum.bat

echo "zme"
call f:\FifoTeam\bat_tools\boot\back_up_zme.bat

echo "fifoteam"
call f:\FifoTeam\bat_tools\boot\back_up_fifoteam.bat

echo "taskkill wiz"
taskkill /f /im wiz.exe

echo "nutstore"
@ start	"" "D:\Program Files\Nutstore\Nutstore.exe"

shutdown -s -t 60

::pause
