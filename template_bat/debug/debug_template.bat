
echo %1
cd /d %1

::


if exist debug (
	echo "folder exist"
) else (
	mkdir	debug
	copy "f:\kuaipan\kuaipan\FifoTeam\bat-tools\template_bat\debug\debug_ip\*" "debug\"
)



::pause
