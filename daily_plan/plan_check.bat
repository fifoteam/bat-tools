
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
"g:\DAHENG\hw_schedule\daily_plan\fpga\zhangxilun\2018年张希伦日计划&开发产出统计表.xlsx"
"g:\DAHENG\hw_schedule\daily_plan\fpga\zhoujinjian\2018个人日计划&开发产出统计表_周金剑.xlsx"
"g:\DAHENG\hw_schedule\daily_plan\fpga\wudi\吴頔个人日计划&开发产出统计表_2018.xlsx"
"g:\DAHENG\hw_schedule\daily_plan\fpga\zhangshaoqiang\2018张少强日工作计划.xlsx"
"g:\DAHENG\hw_schedule\daily_plan\fpga\wangjianghua\王江华日计划&开发产出统计表_2018.xlsx"
"g:\DAHENG\hw_schedule\daily_plan\fpga\chenxiaoping\陈小平日计划&开发产出统计表_2018.xlsx"
"g:\DAHENG\hw_schedule\daily_plan\fpga\zhangqiang\个人日计划&开发产出统计表_张强 2018.xlsx"
echo "Hardware"
"g:\DAHENG\hw_schedule\daily_plan\circuit\qiukaiyang\个人日计划&开发产出统计表_模板_仇开阳2018.xlsx"
"g:\DAHENG\hw_schedule\daily_plan\circuit\zhangpeifen\个人日计划&开发产出统计表_张培芬_2018.xlsx"
"g:\DAHENG\hw_schedule\daily_plan\circuit\sunjingtao\个人日计划&开发产出统计表_孙敬涛.xlsx"
"g:\DAHENG\hw_schedule\daily_plan\circuit\huangweiwei\2018年个人日计划_黄伟.xlsx"
"g:\DAHENG\hw_schedule\daily_plan\circuit\zhupengpeng\个人日计划&开发产出统计表_朱朋朋.xlsx"
"g:\DAHENG\hw_schedule\daily_plan\circuit\houxueqin\日计划_侯雪琴_2018.xlsx"
echo "Firmware"
"g:\DAHENG\rd_daily_plan\sw\2018\Embedded_Group\liguoyin\个人开发产出统计表_李国印.xlsx "
"g:\DAHENG\rd_daily_plan\sw\2018\Embedded_Group\wangxinrui\个人开发产出统计表_王鑫瑞.xlsx"
::"g:\DAHENG\rd_daily_plan\sw\2018\Embedded_Group\zhaohao\个人开发产出统计表_赵浩.xlsx"
::echo "QM"
::"g:\DAHENG\rd_daily_plan\qm\测试组日工作计划-2017.xlsx"
