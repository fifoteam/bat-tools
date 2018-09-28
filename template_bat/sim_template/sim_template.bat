
echo %1
cd /d %1

::


if exist sim (
	echo "folder exist"
) else (
	mkdir	sim
	copy "f:\FifoTeam\sim-tools\modelsim\template\sim\*.*" "sim"
)

if exist testbench (
	echo "folder exist"
) else (
	mkdir	testbench
	xcopy "f:\FifoTeam\sim-tools\modelsim\template\testbench" "testbench" /e/h/y >nul
)

if exist src (
	echo "folder exist"
) else (
	mkdir	src
	xcopy "f:\FifoTeam\sim-tools\modelsim\template\src" "src" /e/h/y >nul
)


::pause
