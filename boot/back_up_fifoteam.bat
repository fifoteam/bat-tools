
echo off
::xcopy  /e  ����Ŀ¼����Ŀ¼
::xcopy  /h  Ҳ���������ļ���ϵͳ�ļ�
::xcopy  /y  ȡ����ʾ��ȷ�ϸ��������ļ�

::rd	/S	ɾ��Ŀ¼��ʱ��Ҫ��ȷ��
::rd	/Q	����ģʽ
::RD /S /Q \?%1  ɾ�������ļ���


::�����ļ��ϴ���SVN
@ cd	g:\FifoTeam\bat_tools  >nul
git add *
git commit -a -m "AUTO SAVED BY BAT FILE"
git push -u origin master

@ cd	g:\FifoTeam\ahk-tools  >nul
git add *
git commit -a -m "AUTO SAVED BY BAT FILE"
git push -u origin master


@ cd	g:\FifoTeam\js-tools  >nul
git add *
git commit -m "AUTO SAVED BY BAT FILE"
git push -u origin master

@ cd	g:\FifoTeam\python-tools  >nul
git add *
git commit -a -m "AUTO SAVED BY BAT FILE"
git push -u origin master

@ cd	g:\FifoTeam\rtl-tools  >nul
git add *
git commit -m "AUTO SAVED BY BAT FILE"
git push -u origin master

@ cd	g:\FifoTeam\c-tools  >nul
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
