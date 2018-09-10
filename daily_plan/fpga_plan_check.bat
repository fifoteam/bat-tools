
echo off

@ cd g:\DAHENG\hw_schedule\daily_plan\fpga
echo "1"
@ svn update g:\DAHENG\hw_schedule\daily_plan\fpga
@ RD /S /Q zhangshaoqiang
@ RD /S /Q zhangxilun
@ svn update g:\DAHENG\hw_schedule\daily_plan\fpga
echo "2"
"g:\DAHENG\hw_schedule\daily_plan\fpga\zhangxilun\2018年张希伦日计划&开发产出统计表.xlsx"
"g:\DAHENG\hw_schedule\daily_plan\fpga\zhangshaoqiang\2018张少强日工作计划.xlsx"
