
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
"f:\DAHENG\hw_schedule\daily_plan\fpga\zhangxilun\张希伦日计划&开发产出统计表.xlsx"
"f:\DAHENG\hw_schedule\daily_plan\fpga\zhoujinjian\个人日计划&开发产出统计表_周金剑.xlsx"
"f:\DAHENG\hw_schedule\daily_plan\fpga\wudi\吴頔个人日计划&开发产出统计表.xlsx"
"f:\DAHENG\hw_schedule\daily_plan\fpga\zhangshaoqiang\张少强日工作计划新模板.xlsx"
"f:\DAHENG\hw_schedule\daily_plan\fpga\wangjianghua\王江华日计划&开发产出统计表_模板.xlsx"
echo "Hardware"
"f:\DAHENG\hw_schedule\daily_plan\circuit\qiukaiyang\个人日计划&开发产出统计表_模板_仇开阳.xlsx"
"f:\DAHENG\hw_schedule\daily_plan\circuit\zhangpeifen\个人日计划&开发产出统计表_张培芬.xlsx"
"f:\DAHENG\hw_schedule\daily_plan\circuit\sunjingtao\个人日计划&开发产出统计表_孙敬涛.xlsx"
"f:\DAHENG\hw_schedule\daily_plan\circuit\huangweiwei\个人日计划&开发产出统计表_黄伟.xlsx"
"f:\DAHENG\hw_schedule\daily_plan\circuit\zhupengpeng\个人日计划&开发产出统计表_朱朋朋.xlsx"
"f:\DAHENG\hw_schedule\daily_plan\circuit\houxueqin\日计划_侯雪琴_新.xlsx"
echo "Firmware"
"f:\DAHENG\rd_daily_plan\sw\2017\Embedded_Group\liguoyin\个人开发产出统计表_李国印.xlsx"
"f:\DAHENG\rd_daily_plan\sw\2017\Embedded_Group\wangxinrui\个人开发产出统计表_王鑫瑞.xlsx"
"f:\DAHENG\rd_daily_plan\sw\2017\Embedded_Group\zhaohao\个人开发产出统计表_赵浩.xlsx"
::echo "QM"
::"f:\DAHENG\rd_daily_plan\qm\测试组日工作计划-2017.xlsx"
