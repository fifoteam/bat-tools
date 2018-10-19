
echo off
::xcopy  /e  复制目录和子目录
::xcopy  /h  也复制隐藏文件和系统文件
::xcopy  /y  取消提示已确认覆盖现有文件

::rd	/S	删除目录树时不要求确认
::rd	/Q	安静模式
::RD /S /Q \?%1  删除任意文件夹


::删除日志文件
echo "del log file"
echo "f:\FifoTeam\bat_tools\app"
@ cd	f:\FifoTeam\bat_tools\app  >nul
@ del *.log >nul
@ del *.jou >nul
@ del *.backup >nul

::配置文件上传到SVN
echo "f:\FifoTeam\bat_tools"
@ cd	f:\FifoTeam\bat_tools  >nul
git add *
git commit -a -m "AUTO SAVED BY BAT FILE"
git push -u origin master

echo "f:\FifoTeam\ahk-tools"
@ cd	f:\FifoTeam\ahk-tools  >nul
git add *
git commit -a -m "AUTO SAVED BY BAT FILE"
git push -u origin master

echo "f:\FifoTeam\python-tools"
@ cd	f:\FifoTeam\python-tools  >nul
git add *
git commit -a -m "AUTO SAVED BY BAT FILE"
git push -u origin master

echo "f:\FifoTeam\rtl-tools"
@ cd	f:\FifoTeam\rtl-tools  >nul
git add *
git commit -m "AUTO SAVED BY BAT FILE"
git push -u origin master

echo "f:\FifoTeam\c-tools"
@ cd	f:\FifoTeam\c-tools  >nul
git add *
git commit -m "AUTO SAVED BY BAT FILE"
git push -u origin master

echo "fifoteam git add & commit done!"

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
