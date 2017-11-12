
echo off
::xcopy  /e  复制目录和子目录
::xcopy  /h  也复制隐藏文件和系统文件
::xcopy  /y  取消提示已确认覆盖现有文件

::rd	/S	删除目录树时不要求确认
::rd	/Q	安静模式
::RD /S /Q \?%1  删除任意文件夹

::保存 ue 配置
@ xcopy "c:\Users\xht\AppData\Roaming\IDMComp\UltraEdit\*.*" "F:\Michael\backup\UE\ue_config" /e/h/y >nul
@ xcopy "D:\Tools\UltraEdit\wordfiles" "F:\Michael\backup\UE\wordfiles" /e/h/y >nul
::@ xcopy "D:\Tools\UltraEdit\HDL_script" "F:\Michael\backup\UE\HDL_script" /e/h/y >nul
@ xcopy "D:\Tools\UltraEdit\template" "F:\Michael\backup\UE\template\" /e/h/y >nul
::@ xcopy "D:\Tools\UltraEdit\batch" "F:\Michael\backup\UE\batch\" /e/h/y >nul

@ xcopy "C:\ue" "F:\Michael\backup\UE\temp\" /e/h/y >nul


echo "UE backup done!"

::保存 alt_r 配置
@ xcopy "D:\Tools\ALTRun V1.46\*.*" "F:\Michael\backup\alt_r" /e/h/y >nul
echo "alt_r back done!"


::保存 tc 配置
@ xcopy "d:\Tools\totalcmd\*.*" "F:\Michael\backup\totalcmd" /e/h/y >nul

echo "tc back done!"

::保存 everything 配置
::@ xcopy "C:\Users\xht\AppData\Roaming\Everything\Everything.ini" "F:\Michael\backup\everything" /e/h/y >nul
::echo "everything back done!"


::保存 modelsim 配置
@ xcopy "d:\Tools\modeltech64_10.5\modelsim.ini" "F:\Michael\backup\modelsim\ini" /y >nul
echo "modelsim ini back done!"

::保存 crack 文件
@ xcopy "D:\Tools\Crack" "F:\Michael\backup\Crack\" /e/h/y >nul
echo "crack back done!"

::保存 shadowsocks 文件
@ xcopy "D:\Tools\xht_tools\Shadowsocks-2.5.8" "F:\aws\shadowsocks" /e/h/y >nul
echo "shadowsocks back done!"

::保存 dexpot 配置
@ xcopy "D:\Tools\xht_tools\dexpot_1610_portable_r2373\profile\*.*" "F:\Michael\backup\dexpot" /e/h/y >nul

echo "crack dexpot done!"

::删除 ue 配置中的重复文件
@ cd	F:\Michael\backup\UE\ue_config >nul
@ del *Saved*.* >nul
echo "UE Saved* del done!"

@ cd	F:\Michael\backup\UE\temp >nul
@ rd work /S/Q >nul
@ cd	F:\Michael\backup\UE\temp\gcc_work >nul
@ del *.o >nul
@ del *.exe >nul
echo "UE work gcc_work del done!"

::pause



::配置文件上传到SVN
@ cd F:\Michael\backup >nul
::@ svn add F:\Michael\backup\ --force
git add *
::@ svn commit -m "AUTO SAVED BY BAT FILE" F:\Michael\backup\
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
