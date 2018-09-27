
echo off
::xcopy  /e  复制目录和子目录
::xcopy  /h  也复制隐藏文件和系统文件
::xcopy  /y  取消提示已确认覆盖现有文件

::rd	/S	删除目录树时不要求确认
::rd	/Q	安静模式
::RD /S /Q \?%1  删除任意文件夹

::保存 ue 配置
@ xcopy "c:\Users\xht\AppData\Roaming\IDMComp\UltraEdit\*.*" "F:\fifoteam\ue-tools\backup" /e/h/y >nul
@ xcopy "C:\ue" "F:\fifoteam\ue-tools\ue" /e/h/y >nul


echo "UE backup done!"

::保存 alt_r 配置
@ xcopy "D:\Tools\ALTRun V1.46\*.*" "f:\Michael\backup\alt_r" /e/h/y >nul
echo "alt_r back done!"


::保存 tc 配置
@ xcopy "d:\Tools\totalcmd\*.*" "f:\Michael\backup\totalcmd" /e/h/y >nul

echo "tc back done!"

::保存 everything 配置
::@ xcopy "C:\Users\xht\AppData\Roaming\Everything\Everything.ini" "f:\Michael\backup\everything" /e/h/y >nul
::echo "everything back done!"


::保存 modelsim 配置
@ xcopy "d:\Tools\modeltech64_10.5\modelsim.ini" "f:\Michael\backup\modelsim\ini" /y >nul
echo "modelsim ini back done!"

::保存 crack 文件
@ xcopy "D:\Tools\Crack" "f:\Michael\backup\Crack\" /e/h/y >nul
echo "crack back done!"

::保存 shadowsocks 文件
@ xcopy "D:\Tools\xht_tools\Shadowsocks-2.5.8" "F:\aws\shadowsocks" /e/h/y >nul
echo "shadowsocks back done!"

::保存 dexpot 配置
@ xcopy "D:\Tools\xht_tools\dexpot_1610_portable_r2373\profile\*.*" "f:\Michael\backup\dexpot" /e/h/y >nul

echo "crack dexpot done!"

::删除 ue 配置中的重复文件
@ cd	F:\fifoteam\ue-tools\backup >nul
@ del *Saved*.* >nul
echo "UE Saved* del done!"

@ cd	F:\fifoteam\ue-tools\ue >nul
@ rd work /S/Q >nul
@ cd	F:\fifoteam\ue-tools\ue\gcc_work >nul
@ del *.o >nul
@ del *.exe >nul
echo "UE work gcc_work del done!"

::pause

::配置文件上传到SVN-fifoteam
@ cd F:\fifoteam\ue-tools >nul
::@ svn add f:\Michael\backup\ --force
git add *
::@ svn commit -m "AUTO SAVED BY BAT FILE" f:\Michael\backup\
git commit -a -m "AUTO SAVED BY BAT FILE"

git push -u origin master



::配置文件上传到SVN-Michael
@ cd f:\Michael\backup >nul
::@ svn add f:\Michael\backup\ --force
git add *
::@ svn commit -m "AUTO SAVED BY BAT FILE" f:\Michael\backup\
git commit -a -m "AUTO SAVED BY BAT FILE"

git push -u origin master



echo "git add & commit done!"
echo "please export strokeit config"

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
