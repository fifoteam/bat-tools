
@ echo off
::关机流程
rem taskkill  /F   强制结束进程，如果没有/F，则等同于在GUI中关闭软件，有些软件会执行保存参数的操作
rem taskkill  /IM  imagename  指定要终止的进程的映像名称。通配符 '*'可用来指定所有任务或映像名称。

echo "taskkill ALTRun"
taskkill /im ALTRun.exe

echo "taskkill wiz"
taskkill /im wiz.exe

echo "taskkill 263em"
taskkill /im 263em.exe

echo "taskkill shadowsocks"
taskkill /im Shadowsocks.exe

echo "taskkill uedit32"
taskkill /im uedit32.exe

echo "taskkill TOTALCMD"
taskkill /im TOTALCMD.exe


rem echo "taskkill thunderbird"
rem taskkill /im thunderbird.exe

