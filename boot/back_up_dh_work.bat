
echo off
::xcopy  /e  复制目录和子目录
::xcopy  /h  也复制隐藏文件和系统文件
::xcopy  /y  取消提示已确认覆盖现有文件

::rd	/S	删除目录树时不要求确认
::rd	/Q	安静模式
::RD /S /Q \?%1  删除任意文件夹


::management
@ cd F:\kuaipan\kuaipan\工作文档\DH_work\management\ >nul
svn update

::mer_fpga_module
@ cd F:\kuaipan\kuaipan\工作文档\DH_work\mer_fpga_module\ >nul
svn update

::mer_simulation_model
@ cd F:\kuaipan\kuaipan\工作文档\DH_work\mer_simulation_model\ >nul
svn update

::special_topics
@ cd F:\kuaipan\kuaipan\工作文档\DH_work\special_topics\ >nul
svn update


echo "DH_work svn update done!"

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
