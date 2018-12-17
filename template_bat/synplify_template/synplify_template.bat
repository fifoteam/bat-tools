
echo %1
cd /d %1

copy  "f:\FifoTeam\bat-tools\template_bat\synplify_template\proj_s6.prj"
copy  "f:\FifoTeam\bat-tools\template_bat\synplify_template\proj_a7.prj"

::if exist rev_1 (
::	echo "folder exist"
::) else (
::	mkdir	rev_1
::	xcopy "F:\Michael\backup\template_bat\synplify_template\rev_1" "rev_1" /e
::)



::pause

