
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





f:\DAHENG\hw_schedule\daily_plan\fpga\zhangxilun\张希伦日工作计划.xlsx
f:\DAHENG\hw_schedule\daily_plan\fpga\zhoujinjian\周金剑日工作计划-新.xlsx
f:\DAHENG\hw_schedule\daily_plan\fpga\wudi\吴頔日工作计划.xlsx
f:\DAHENG\hw_schedule\daily_plan\circuit\qiukaiyang\日计划新模板_仇开阳.xlsx
f:\DAHENG\hw_schedule\daily_plan\circuit\zhangpeifen\日计划_张培芬_new.xlsx
f:\DAHENG\hw_schedule\daily_plan\circuit\sunjingtao\日计划模板-孙敬涛.xls
f:\DAHENG\hw_schedule\daily_plan\circuit\huangweiwei\日计划_黄伟（新模板）.xlsx
f:\DAHENG\rd_daily_plan\sw\2017\嵌入式软件专业日工作计划.xlsx
f:\DAHENG\rd_daily_plan\qm\测试组日工作计划-2017.xlsx
