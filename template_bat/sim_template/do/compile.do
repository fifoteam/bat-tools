

do define.do

#echo	"compile "
#vlog	$env(XILINX)/verilog/src/glbl.v
#vlog	+incdir+../src	+incdir+../testbench	+define+SIMULATION	../src/*.v
#vlog	../testbench/tb_bram.v
#vlog	+incdir+../testbench +define+x1Gb +define+sg187E +define+x16 ../testbench/ddr3_model_c3.v
vlog	$env(XILINX)/verilog/src/glbl.v

#
if {$SIM_MODE == "back" } {
	file delete -force netgen
	file copy ../prj/netgen	../sim
}

#
if { $TB_MODULE == "example" } {
	vlog	+incdir+../src	../src/*.v
	vlog	+incdir+../src	../testbench/tb_$TB_MODULE.v

} elseif {$TB_MODULE == "" } {


} elseif {$TB_MODULE == "" } {
	#��������˺���棬�����Ҫ����par�������ɵ�.v�ļ�
	if {$SIM_MODE == "back" } {
		vlog	"netgen/par/top_frame_buffer_timesim.v"
	} else {

	}
} else {
	echo	"compile no ***********"
}
