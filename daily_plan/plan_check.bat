
echo off

echo "daily plan"
call g:\FifoTeam\bat_tools\daily_plan\xht_plan_plan.bat
@ cd g:\DAHENG\hw_schedule\daily_plan
echo "1"
@ svn update g:\DAHENG\hw_schedule\daily_plan\
@ RD /S /Q circuit
@ RD /S /Q fpga
@ svn update g:\DAHENG\hw_schedule\daily_plan\
echo "2"



@ cd g:\DAHENG\rd_daily_plan
echo "3"
@ svn update g:\DAHENG\rd_daily_plan
@ svn update g:\DAHENG\rd_daily_plan
echo "4"


echo "FPGA"
"g:\DAHENG\hw_schedule\daily_plan\fpga\zhangxilun\2018����ϣ���ռƻ�&��������ͳ�Ʊ�.xlsx"
"g:\DAHENG\hw_schedule\daily_plan\fpga\zhoujinjian\2018�����ռƻ�&��������ͳ�Ʊ�_�ܽ�.xlsx"
"g:\DAHENG\hw_schedule\daily_plan\fpga\wudi\���E�����ռƻ�&��������ͳ�Ʊ�_2018.xlsx"
"g:\DAHENG\hw_schedule\daily_plan\fpga\zhangshaoqiang\2018����ǿ�չ����ƻ�.xlsx"
"g:\DAHENG\hw_schedule\daily_plan\fpga\wangjianghua\�������ռƻ�&��������ͳ�Ʊ�_2018.xlsx"
"g:\DAHENG\hw_schedule\daily_plan\fpga\chenxiaoping\��Сƽ�ռƻ�&��������ͳ�Ʊ�_2018.xlsx"
"g:\DAHENG\hw_schedule\daily_plan\fpga\zhangqiang\�����ռƻ�&��������ͳ�Ʊ�_��ǿ 2018.xlsx"
echo "Hardware"
"g:\DAHENG\hw_schedule\daily_plan\circuit\qiukaiyang\�����ռƻ�&��������ͳ�Ʊ�_ģ��_����2018.xlsx"
"g:\DAHENG\hw_schedule\daily_plan\circuit\zhangpeifen\�����ռƻ�&��������ͳ�Ʊ�_�����_2018.xlsx"
"g:\DAHENG\hw_schedule\daily_plan\circuit\sunjingtao\�����ռƻ�&��������ͳ�Ʊ�_�ﾴ��.xlsx"
"g:\DAHENG\hw_schedule\daily_plan\circuit\huangweiwei\2018������ռƻ�_��ΰ.xlsx"
"g:\DAHENG\hw_schedule\daily_plan\circuit\zhupengpeng\�����ռƻ�&��������ͳ�Ʊ�_������.xlsx"
"g:\DAHENG\hw_schedule\daily_plan\circuit\houxueqin\�ռƻ�_��ѩ��_2018.xlsx"
echo "Firmware"
"g:\DAHENG\rd_daily_plan\sw\2018\Embedded_Group\liguoyin\���˿�������ͳ�Ʊ�_���ӡ.xlsx "
"g:\DAHENG\rd_daily_plan\sw\2018\Embedded_Group\wangxinrui\���˿�������ͳ�Ʊ�_������.xlsx"
::"g:\DAHENG\rd_daily_plan\sw\2018\Embedded_Group\zhaohao\���˿�������ͳ�Ʊ�_�Ժ�.xlsx"
::echo "QM"
::"g:\DAHENG\rd_daily_plan\qm\�������չ����ƻ�-2017.xlsx"
