
@ echo off
::�ػ�����


echo "daily plan"
call f:\fifoteam\bat_tools\daily_plan\xht_plan_sum.bat

echo "task_kill"
call f:\fifoteam\bat_tools\boot\task_kill.bat

echo "zme"
call f:\fifoteam\bat_tools\boot\back_up_zme.bat

echo "fifoteam"
call f:\fifoteam\bat_tools\boot\back_up_fifoteam.bat

rem echo "nutstore"
rem @ start	"" "D:\Program Files\Nutstore\Nutstore.exe"

echo "weiyunsync"
@ start	"" "D:\Program Files (x86)\Tencent\WeiyunSync\WeiyunSync\Bin\weiyunsync.exe"

rem ��ʱ5���ӹػ�������ͬ������
shutdown -s -t 300

::pause

