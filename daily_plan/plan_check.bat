
echo off

@ cd f:\DAHENG\hw_schedule\daily_plan >nul
echo "1"
@ svn update f:\DAHENG\hw_schedule\daily_plan\
@ RD /S /Q circuit
@ RD /S /Q fpga
@ svn update f:\DAHENG\hw_schedule\daily_plan\
echo "2"



@ cd f:\DAHENG\rd_daily_plan >null
echo "3"
@ svn update f:\DAHENG\rd_daily_plan
@ RD /S /Q 2017
@ svn update f:\DAHENG\rd_daily_plan
echo "4"





f:\DAHENG\hw_schedule\daily_plan\fpga\zhangxilun\��ϣ���չ����ƻ�.xlsx
f:\DAHENG\hw_schedule\daily_plan\fpga\zhoujinjian\�ܽ��չ����ƻ�-��.xlsx
f:\DAHENG\hw_schedule\daily_plan\fpga\wudi\���E�չ����ƻ�.xlsx
f:\DAHENG\hw_schedule\daily_plan\circuit\qiukaiyang\�ռƻ���ģ��_����.xlsx
f:\DAHENG\hw_schedule\daily_plan\circuit\zhangpeifen\�ռƻ�_�����_new.xlsx
f:\DAHENG\hw_schedule\daily_plan\circuit\sunjingtao\�ռƻ�ģ��-�ﾴ��.xls
f:\DAHENG\hw_schedule\daily_plan\circuit\huangweiwei\�ռƻ�_��ΰ����ģ�壩.xlsx
f:\DAHENG\rd_daily_plan\sw\2017\Ƕ��ʽ���רҵ�չ����ƻ�.xlsx
f:\DAHENG\rd_daily_plan\qm\�������չ����ƻ�-2017.xlsx
