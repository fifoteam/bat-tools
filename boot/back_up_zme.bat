
echo off
::xcopy  /e  ����Ŀ¼����Ŀ¼
::xcopy  /h  Ҳ���������ļ���ϵͳ�ļ�
::xcopy  /y  ȡ����ʾ��ȷ�ϸ��������ļ�

::rd	/S	ɾ��Ŀ¼��ʱ��Ҫ��ȷ��
::rd	/Q	����ģʽ
::RD /S /Q \?%1  ɾ�������ļ���

::���� ue ����
@ xcopy "c:\Users\xht\AppData\Roaming\IDMComp\UltraEdit\*.*" "f:\Michael\backup\UE\ue_config" /e/h/y >nul
@ xcopy "D:\Tools\UltraEdit\wordfiles" "f:\Michael\backup\UE\wordfiles" /e/h/y >nul
::@ xcopy "D:\Tools\UltraEdit\HDL_script" "f:\Michael\backup\UE\HDL_script" /e/h/y >nul
@ xcopy "D:\Tools\UltraEdit\template" "f:\Michael\backup\UE\template\" /e/h/y >nul
::@ xcopy "D:\Tools\UltraEdit\batch" "f:\Michael\backup\UE\batch\" /e/h/y >nul

@ xcopy "C:\ue" "f:\Michael\backup\UE\temp\" /e/h/y >nul


echo "UE backup done!"

::���� alt_r ����
@ xcopy "D:\Tools\ALTRun V1.46\*.*" "f:\Michael\backup\alt_r" /e/h/y >nul
echo "alt_r back done!"


::���� tc ����
@ xcopy "d:\Tools\totalcmd\*.*" "f:\Michael\backup\totalcmd" /e/h/y >nul

echo "tc back done!"

::���� everything ����
::@ xcopy "C:\Users\xht\AppData\Roaming\Everything\Everything.ini" "f:\Michael\backup\everything" /e/h/y >nul
::echo "everything back done!"


::���� modelsim ����
@ xcopy "d:\Tools\modeltech64_10.5\modelsim.ini" "f:\Michael\backup\modelsim\ini" /y >nul
echo "modelsim ini back done!"

::���� crack �ļ�
@ xcopy "D:\Tools\Crack" "f:\Michael\backup\Crack\" /e/h/y >nul
echo "crack back done!"

::���� shadowsocks �ļ�
@ xcopy "D:\Tools\xht_tools\Shadowsocks-2.5.8" "F:\aws\shadowsocks" /e/h/y >nul
echo "shadowsocks back done!"

::���� dexpot ����
@ xcopy "D:\Tools\xht_tools\dexpot_1610_portable_r2373\profile\*.*" "f:\Michael\backup\dexpot" /e/h/y >nul

echo "crack dexpot done!"

::ɾ�� ue �����е��ظ��ļ�
@ cd	f:\Michael\backup\UE\ue_config >nul
@ del *Saved*.* >nul
echo "UE Saved* del done!"

@ cd	f:\Michael\backup\UE\temp >nul
@ rd work /S/Q >nul
@ cd	f:\Michael\backup\UE\temp\gcc_work >nul
@ del *.o >nul
@ del *.exe >nul
echo "UE work gcc_work del done!"

::pause



::�����ļ��ϴ���SVN
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
