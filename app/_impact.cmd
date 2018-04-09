setMode -bs
setMode -bs
setMode -bs
setMode -bs
setCable -port auto
Identify -inferir 
identifyMPM 
assignFile -p 1 -file "F:/DAHENG/rd_mars_series/PD/product_stage/mars-1230-9gx-p/develop_stage/burn_file/3rd/full/bin/both_fac/MARS-1230-9GX-P/download.bit"
Program -p 1 
setCable -port auto
Identify -inferir 
identifyMPM 
assignFile -p 1 -file "F:/DAHENG/rd_mars_series/PD/product_stage/mars-1230-9gx-p/develop_stage/burn_file/3rd/full/bin/both_fac/MARS-1230-9GX-P/FacProgFPGA_V01.03.001.001.bit"
Program -p 1 
setMode -bs
setMode -bs
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
setMode -bs
saveProjectFile -file "d:\tools\Xilinx\14.7\ISE_DS\\auto_project.ipf"
setMode -bs
setMode -bs
deleteDevice -position 1
setMode -bs
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
