
echo off
::xcopy  /e  ����Ŀ¼����Ŀ¼
::xcopy  /h  Ҳ���������ļ���ϵͳ�ļ�
::xcopy  /y  ȡ����ʾ��ȷ�ϸ��������ļ�

::rd	/S	ɾ��Ŀ¼��ʱ��Ҫ��ȷ��
::rd	/Q	����ģʽ
::RD /S /Q \?%1  ɾ�������ļ���


::management
@ cd F:\kuaipan\kuaipan\�����ĵ�\DH_work\management\ >nul
svn update

::mer_fpga_module
@ cd F:\kuaipan\kuaipan\�����ĵ�\DH_work\mer_fpga_module\ >nul
svn update

::mer_simulation_model
@ cd F:\kuaipan\kuaipan\�����ĵ�\DH_work\mer_simulation_model\ >nul
svn update

::special_topics
@ cd F:\kuaipan\kuaipan\�����ĵ�\DH_work\special_topics\ >nul
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
