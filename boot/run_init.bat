
@ echo off
::开机启动项

echo "ccauto"
call f:\kuaipan\kuaipan\FifoTeam\bat-tools\app\ccauto.bat

rem 系统清理 5s 之后，再开始启动
@ping 127.0.0.1 -n 2 >nul
echo "20"
@ping 127.0.0.1 -n 2 >nul
echo "19"
@ping 127.0.0.1 -n 2 >nul
echo "18"
@ping 127.0.0.1 -n 2 >nul
echo "17"
@ping 127.0.0.1 -n 2 >nul
echo "16"
@ping 127.0.0.1 -n 2 >nul
echo "15"
@ping 127.0.0.1 -n 2 >nul
echo "14"
@ping 127.0.0.1 -n 2 >nul
echo "13"
@ping 127.0.0.1 -n 2 >nul
echo "12"
@ping 127.0.0.1 -n 2 >nul
echo "11"
@ping 127.0.0.1 -n 2 >nul
echo "10"
@ping 127.0.0.1 -n 2 >nul
echo "9"
@ping 127.0.0.1 -n 2 >nul
echo "8"
@ping 127.0.0.1 -n 2 >nul
echo "7"
@ping 127.0.0.1 -n 2 >nul
echo "6"
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
call f:\kuaipan\kuaipan\FifoTeam\bat-tools\daily_plan\xht_plan_plan.bat

echo "app_start"
call f:\kuaipan\kuaipan\FifoTeam\bat-tools\boot\app_start.bat




::pause