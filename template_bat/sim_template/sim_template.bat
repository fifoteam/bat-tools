
echo %1
cd /d %1

::


if exist sim (
	echo "folder exist"
) else (
	mkdir	sim
	copy "f:\FifoTeam\bat_tools\template_bat\sim_template\template\sim\*.*" "sim"
)

if exist testbench (
	echo "folder exist"
) else (
	mkdir	testbench
	xcopy "f:\FifoTeam\bat_tools\template_bat\sim_template\template\testbench" "testbench" /e/h/y >nul
)

if exist src (
	echo "folder exist"
) else (
	mkdir	src
	xcopy "f:\FifoTeam\bat_tools\template_bat\sim_template\template\src" "src" /e/h/y >nul
)


::pause
