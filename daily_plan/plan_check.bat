
echo off

echo "daily plan"
call f:\FifoTeam\bat_tools\daily_plan\xht_plan_plan.bat
@ cd f:\DAHENG\hw_schedule\daily_plan
echo "1"
@ svn update f:\DAHENG\hw_schedule\daily_plan\
@ RD /S /Q circuit
@ RD /S /Q fpga
@ svn update f:\DAHENG\hw_schedule\daily_plan\
echo "2"



@ cd f:\DAHENG\rd_daily_plan
echo "3"
@ svn update f:\DAHENG\rd_daily_plan
@ svn update f:\DAHENG\rd_daily_plan
echo "4"


echo "FPGA"
"f:\DAHENG\hw_schedule\daily_plan\fpga\zhangxilun\��ϣ���ռƻ�&��������ͳ�Ʊ�.xlsx"
"f:\DAHENG\hw_schedule\daily_plan\fpga\zhoujinjian\�����ռƻ�&��������ͳ�Ʊ�_�ܽ�.xlsx"
"f:\DAHENG\hw_schedule\daily_plan\fpga\wudi\���E�����ռƻ�&��������ͳ�Ʊ�.xlsx"
"f:\DAHENG\hw_schedule\daily_plan\fpga\zhangshaoqiang\����ǿ�չ����ƻ���ģ��.xlsx"
"f:\DAHENG\hw_schedule\daily_plan\fpga\wangjianghua\�������ռƻ�&��������ͳ�Ʊ�_ģ��.xlsx"
echo "Hardware"
"f:\DAHENG\hw_schedule\daily_plan\circuit\qiukaiyang\�����ռƻ�&��������ͳ�Ʊ�_ģ��_����.xlsx"
"f:\DAHENG\hw_schedule\daily_plan\circuit\zhangpeifen\�����ռƻ�&��������ͳ�Ʊ�_�����.xlsx"
"f:\DAHENG\hw_schedule\daily_plan\circuit\sunjingtao\�����ռƻ�&��������ͳ�Ʊ�_�ﾴ��.xlsx"
"f:\DAHENG\hw_schedule\daily_plan\circuit\huangweiwei\�����ռƻ�&��������ͳ�Ʊ�_��ΰ.xlsx"
"f:\DAHENG\hw_schedule\daily_plan\circuit\zhupengpeng\�����ռƻ�&��������ͳ�Ʊ�_������.xlsx"
"f:\DAHENG\hw_schedule\daily_plan\circuit\houxueqin\�ռƻ�_��ѩ��_��.xlsx"
echo "Firmware"
"f:\DAHENG\rd_daily_plan\sw\2017\Embedded_Group\liguoyin\���˿�������ͳ�Ʊ�_���ӡ.xlsx"
"f:\DAHENG\rd_daily_plan\sw\2017\Embedded_Group\wangxinrui\���˿�������ͳ�Ʊ�_������.xlsx"
"f:\DAHENG\rd_daily_plan\sw\2017\Embedded_Group\zhaohao\���˿�������ͳ�Ʊ�_�Ժ�.xlsx"
::echo "QM"
::"f:\DAHENG\rd_daily_plan\qm\�������չ����ƻ�-2017.xlsx"
