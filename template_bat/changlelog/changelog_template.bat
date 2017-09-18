
echo %1
cd /d %1

::


::if exist sim (
::	echo "folder exist"
::) else (
::	mkdir	sim
::	copy "E:\kuaipan\TOOLS\FPGA_tools\ModelSim\do\*.do" "sim"
::)
::
::if exist testbench (
::	echo "folder exist"
::) else (
::	mkdir	testbench
::	type nul>"testbench\tb_.v"
::)

copy "F:\Michael\backup\template_bat\changlelog\Changelog.txt"

::cd sim
::D:\Tools\modeltech64_10.1c\win64\modelsim.exe

::pause
