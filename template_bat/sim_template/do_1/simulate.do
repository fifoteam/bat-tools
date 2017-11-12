##-------------------------------------------------------------------------------------------------
##
##  -- ģ������     : simulate.do����������������
##              1)  : ׼���׶Σ��Ȱ�define.do��һ��
##
##              2)  : �������棬���ݲ�ͬ�ı���ģ�飬�����������Ҫ΢��
##
##              3)  : ����̶������Ҫ�޸�
##
##-------------------------------------------------------------------------------------------------

##	===============================================================================================
##	ref ***׼������***
##	===============================================================================================
##	-------------------------------------------------------------------------------------
##	�����Ȱ�define.do ��һ��
##	-------------------------------------------------------------------------------------
do define.do
echo	"simulation start ******"

##	-------------------------------------------------------------------------------------
##	���õ�������
##	-------------------------------------------------------------------------------------
##--------xilinx lib--------
#cpld
#cpld_ver
#edk
#secureip
#simprim
#simprims_ver
#uni9000_ver
#unimacro
#unimacro_ver
#unisim
#unisims_ver
#xilinxcorelib
#xilinxcorelib_ver

##--------lattice lib--------
#machxo2
#sc
#lptm
#pmi
#scm

##	-------------------------------------------------------------------------------------
##	���õķ�������
##	-------------------------------------------------------------------------------------
##--------Xilinx command--------
#vsim -t ps -novopt +notimingchecks work.tb_$TB_MODULE
#vsim -t ps -novopt +notimingchecks -L unisims_ver -L secureip work.tb_$TB_MODULE glbl
#vsim -t ps -voptargs=+acc -debugDB +notimingchecks -L unisims_ver -L secureip -L xilinxcorelib_ver work.tb_$TB_MODULE glbl
##--------Lattice command--------
#vsim -t ps -novopt +notimingchecks -L machxo2 work.tb_$TB_MODULE

##	===============================================================================================
##	ref ***�������棬���ݲ�ͬ�ı���ģ�飬�����������Ҫ΢��***
##	===============================================================================================
##	-------------------------------------------------------------------------------------
##	ǰ����������������ǲ�ͬ��
##	1.������ʱ��vcd�ļ�������testbench�в�����Ҳ������do�ļ��в���
##	-------------------------------------------------------------------------------------
if { $SIM_MODE == "back" } {
	#	vsim -t ps -voptargs="+acc" +maxdelays -L unisims_ver -L simprims_ver -L secureip -lib work work.tb_$TB_MODULE glbl
	#	vsim -t ps -novopt +notimingchecks +maxdelays -L unisims_ver -L simprims_ver -L secureip -L xilinxcorelib_ver -lib work work.tb_$TB_MODULE glbl
	#	vcd file test.vcd
	#	vcd add /tb_$TB_MODULE/top_frame_buffer_inst/*

	if { $TB_MODULE == "sync_buffer"} {
		vsim -t ps -novopt +notimingchecks +maxdelays -L unisims_ver -L simprims_ver -L secureip -L xilinxcorelib_ver -lib work work.glbl harness $TESTCASE\
		driver_mt9p031
	} elseif {$TB_MODULE == "pulse_filter"} {
		vsim -t ps -novopt +notimingchecks +maxdelays -L unisims_ver -L simprims_ver -L secureip -L xilinxcorelib_ver -lib work work.glbl harness $TESTCASE\
		driver_mt9p031
	} else {

	}

} else {
	if {$TB_MODULE == "uart" } {
		vsim -t ns -novopt +notimingchecks -L unisims_ver -L secureip -L xilinxcorelib_ver work.glbl harness $TESTCASE
	} elseif {$TB_MODULE == "pulse_filter" } {
		vsim -t ns -novopt +notimingchecks -L unisims_ver -L secureip -L xilinxcorelib_ver work.glbl harness $TESTCASE monitor\
		driver_mt9p031
	} else {
	}

}

##	===============================================================================================
##	ref ***����̶������Ҫ�޸�***
##	===============================================================================================
##	-------------------------------------------------------------------------------------
##	�½������ļ�
##	1.ǰ����ͺ����Ĳ����ļ����ֲ�һ��
##	2.����ļ��������ڣ�˵���ǵ�һ�η��棬��ʹ��ģ��Ĳ����ļ��½�һ��
##	3.����ļ������ڣ�˵�����ǵ�һ�η��棬û�ж���
##	-------------------------------------------------------------------------------------
if { [file exists $WAVE_NAME] == 1} {
	echo "wave do file exists"
} else {
	file copy wave.do $WAVE_NAME
	echo "wave do file does not exist"
}

##	-------------------------------------------------------------------------------------
##	modelsim�ĳ�ʼ����
##	1.����������󣬲�ֹͣ������
##	2.��¼ȫ���ı���
##	-------------------------------------------------------------------------------------
onerror {resume}
log -r /*

##	-------------------------------------------------------------------------------------
##	wave�ĳ�ʼ����
##	1.����Ĭ����ʾ��16����
##	-------------------------------------------------------------------------------------
radix hex

##	-------------------------------------------------------------------------------------
##	�򿪳�ʼ�Ĵ���
##	-------------------------------------------------------------------------------------
view library
view object
view structure
