
echo off

@ cd f:\DAHENG\hw_schedule\daily_plan\fpga
echo "1"
@ svn update f:\DAHENG\hw_schedule\daily_plan\fpga
@ RD /S /Q zhangshaoqiang
@ RD /S /Q zhangxilun
@ svn update f:\DAHENG\hw_schedule\daily_plan\fpga
echo "2"
"f:\DAHENG\hw_schedule\daily_plan\fpga\zhangxilun\2018年张希伦日计划&开发产出统计表.xlsx"
"f:\DAHENG\hw_schedule\daily_plan\fpga\zhangshaoqiang\2018张少强日工作计划.xlsx"
