
echo off

@ cd f:\DAHENG\hw_schedule\daily_plan\fpga\xinghaitao
@ set day=%date:~0,4%-%date:~5,2%-%date:~8,2%
@ svn commit -m "%day% 日计划更新 邢海涛" f:\DAHENG\hw_schedule\daily_plan\fpga\xinghaitao

