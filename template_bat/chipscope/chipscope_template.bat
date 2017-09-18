
echo %1
cd /d %1

::


if exist chipscope (
	echo "folder exist"
) else (
	mkdir	chipscope
	copy "F:\Michael\backup\template_bat\chipscope\chipscope_ip\*" "chipscope\"
)

copy "F:\Michael\backup\template_bat\chipscope\chipscope_top.v"


::pause
