
echo off

@ cd e:\DAHENG\hw_schedule\daily_plan\fpga\xinghaitao
@ set day=%date:~0,4%-%date:~5,2%-%date:~8,2%
@ svn commit -m "%day% 工作总结 邢海涛" e:\DAHENG\hw_schedule\daily_plan\fpga\xinghaitao

