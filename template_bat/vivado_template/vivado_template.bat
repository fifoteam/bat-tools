
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

::if exist prj (
::	echo "folder exist"
::) else (
::	mkdir	prj
::	copy "f:\DAHENG\svn\hw_mer\branches\xinghaotao\zme\FPGA\3_template_bat\ise_template\template.xise" "prj"
::)
::cd prj

copy "f:\FifoTeam\bat-tools\template_bat\vivado_template\template.xpr"

::cd sim
::D:\Tools\modeltech64_10.1c\win64\modelsim.exe

::pause
