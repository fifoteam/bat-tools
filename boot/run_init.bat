
@ echo off
::开机启动项

echo "ccauto"
call f:\FifoTeam\bat-tools\app\ccauto.bat

rem 系统清理 5s 之后，再开始启动
@ping 127.0.0.1 -n 2 >nul
echo "5"
@ping 127.0.0.1 -n 2 >nul
echo "4"
@ping 127.0.0.1 -n 2 >nul
echo "3"
@ping 127.0.0.1 -n 2 >nul
echo "2"
@ping 127.0.0.1 -n 2 >nul
echo "1"
@ping 127.0.0.1 -n 2 >nul
echo "0"



echo "daily plan"
call f:\fifoteam\bat-tools\daily_plan\xht_plan_plan.bat

echo "app_start"
call f:\fifoteam\bat-tools\boot\app_start.bat




::pause