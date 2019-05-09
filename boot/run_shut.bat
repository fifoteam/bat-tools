
@ echo off
::关机流程


echo "daily plan"
call f:\kuaipan\kuaipan\FifoTeam\bat-tools\daily_plan\xht_plan_sum.bat

rem echo "send email"
rem call f:\kuaipan\kuaipan\FifoTeam\bat-tools\daily_plan\xht_send_email.bat

echo "task_kill"
call f:\kuaipan\kuaipan\FifoTeam\bat-tools\boot\task_kill.bat

echo "zme"
call f:\kuaipan\kuaipan\FifoTeam\bat-tools\boot\back_up_zme.bat

echo "fifoteam"
call f:\kuaipan\kuaipan\FifoTeam\bat-tools\boot\back_up_fifoteam.bat

echo "DH_work"
call f:\kuaipan\kuaipan\FifoTeam\bat-tools\boot\back_up_dh_work.bat


rem echo "nutstore"
rem @ start	"" "D:\Program Files\Nutstore\Nutstore.exe"

echo "weiyunsync"
@ start	"" "D:\Program Files (x86)\Tencent\WeiyunSync\WeiyunSync\Bin\weiyunsync.exe"

rem 延时10分钟关机，用于同步数据，以100ms为单位
shutdown -s -t 600

::pause

