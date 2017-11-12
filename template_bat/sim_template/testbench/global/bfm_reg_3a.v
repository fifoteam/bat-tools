//-------------------------------------------------------------------------------------------------
//  -- ��Ȩ������   : �й���㣨���ţ����޹�˾����ͼ���Ӿ������ֹ�˾, 2010 -2015.
//  -- ���ܼ���     ������.
//  -- ����         : Ӳ������FPGA������
//  -- ģ����       : bfm_reg_3a
//  -- �����       : �Ϻ���
//-------------------------------------------------------------------------------------------------
//
//  -- �汾��¼ :
//
//  -- ����         :| �޸�����				:|  �޸�˵��
//-------------------------------------------------------------------------------------------------
//  -- �Ϻ���       :| 2015/4/10 15:46:57	:|  ��ʼ�汾
//-------------------------------------------------------------------------------------------------
//
//  -- ģ������     :
//              1)  : ... ...
//
//              2)  : ... ...
//
//              3)  : ... ...
//
//-------------------------------------------------------------------------------------------------
//���浥λ/����
`timescale 1ns/1ps
//-------------------------------------------------------------------------------------------------
module bfm_reg_3a # (
	parameter	BAYER_PATTERN		= "GR"	,	//"GR" "RG" "GB" "BG"
	parameter	SENSOR_DAT_WIDTH	= 10	,	//sensor ���ݿ��
	parameter	WB_OFFSET_WIDTH		= 12	,	//��ƽ��ģ��ƫ��λ�üĴ������
	parameter	WB_GAIN_WIDTH		= 11	,	//��ƽ��ģ������Ĵ������
	parameter	WB_STATIS_WIDTH		= 29	,	//��ƽ��ģ��ͳ��ֵ���
	parameter	WB_RATIO			= 8		,	//��ƽ��������ӣ��˷�������Ҫ���ƶ���λ
	parameter	REG_WD				= 32	,	//�Ĵ���λ��.
	parameter	GREY_OFFSET_WIDTH	= 12	,	//�Ҷ�ͳ��ģ��ƫ��λ�üĴ������
	parameter	GREY_STATIS_WIDTH	= 48		//�Ҷ�ͳ��ģ��ͳ��ֵ���
	)
	();

	//	ref signals

	reg										i_interrupt_pin			= 1'b0;
	reg										i_interrupt_en_wb		= 1'b0;
	reg										i_interrupt_en_grey		= 1'b0;
	reg		[WB_OFFSET_WIDTH-1:0]			iv_wb_offset_x_start	= 'b0;
	reg		[WB_OFFSET_WIDTH-1:0]			iv_wb_offset_width		= 'b0;
	reg		[WB_OFFSET_WIDTH-1:0]			iv_wb_offset_y_start	= 'b0;
	reg		[WB_OFFSET_WIDTH-1:0]			iv_wb_offset_height		= 'b0;
	reg		[WB_GAIN_WIDTH-1:0]				iv_wb_gain_r			= 'h100;
	reg		[WB_GAIN_WIDTH-1:0]				iv_wb_gain_g			= 'h100;
	reg		[WB_GAIN_WIDTH-1:0]				iv_wb_gain_b			= 'h100;
	reg		[GREY_OFFSET_WIDTH-1:0]			iv_grey_offset_x_start	= 'b0;
	reg		[GREY_OFFSET_WIDTH-1:0]			iv_grey_offset_width	= 'b0;
	reg		[GREY_OFFSET_WIDTH-1:0]			iv_grey_offset_y_start	= 'b0;
	reg		[GREY_OFFSET_WIDTH-1:0]			iv_grey_offset_height	= 'b0;

	//	ref ARCHITECTURE

	//	-------------------------------------------------------------------------------------
	//	--ref �ж�����
	//	-------------------------------------------------------------------------------------
	task interrupt_pin_rise;
		begin
			#1
			i_interrupt_pin	= 1'b0;
			@ (negedge harness.o_fval);
			repeat(5) @ (posedge driver_mt9p031.clk_sensor_pix);
			i_interrupt_pin	= 1'b1;
			repeat(5) @ (posedge driver_mt9p031.clk_sensor_pix);
			i_interrupt_pin	= 1'b0;
		end
	endtask

	task interrupt_pin_low;
		begin
			#1
			i_interrupt_pin	= 1'b0;
		end
	endtask

	task interrupt_pin_high;
		begin
			#1
			i_interrupt_pin	= 1'b1;
		end
	endtask


	//	-------------------------------------------------------------------------------------
	//	--ref �ж�ʹ�� wb
	//	-------------------------------------------------------------------------------------
	task interrupt_en_wb_low;
		begin
			#1
			i_interrupt_en_wb	= 1'b0;
		end
	endtask

	task interrupt_en_wb_high;
		begin
			#1
			i_interrupt_en_wb	= 1'b1;
		end
	endtask

	task interrupt_en_wb_random;
		input	[15:0]		start_point	;
		input	[15:0]		end_point	;

		reg		[15:0]		time_slot;
		begin
			//	-------------------------------------------------------------------------------------
			//	�� start point �� stop point ֮�䣬����һ�������
			//	-------------------------------------------------------------------------------------
			time_slot	= $random()%(end_point-start_point)+start_point;
			repeat(time_slot) @ (posedge driver_mt9p031.clk_sensor_pix);
			i_interrupt_en_wb	= 1'b1;
			time_slot	= $random()%(end_point-start_point)+start_point;
			repeat(time_slot) @ (posedge driver_mt9p031.clk_sensor_pix);
			i_interrupt_en_wb	= 1'b0;
		end
	endtask

	//	-------------------------------------------------------------------------------------
	//	--ref �ж�ʹ�� grey
	//	-------------------------------------------------------------------------------------
	task interrupt_en_grey_low;
		begin
			#1
			i_interrupt_en_grey	= 1'b0;
		end
	endtask

	task interrupt_en_grey_high;
		begin
			#1
			i_interrupt_en_grey	= 1'b1;
		end
	endtask

	task interrupt_en_grey_random;
		input	[15:0]		start_point	;
		input	[15:0]		end_point	;

		reg		[15:0]		time_slot;
		begin
			//	-------------------------------------------------------------------------------------
			//	�� start point �� stop point ֮�䣬����һ�������
			//	-------------------------------------------------------------------------------------
			time_slot	= $random()%(end_point-start_point)+start_point;
			repeat(time_slot) @ (posedge driver_mt9p031.clk_sensor_pix);
			i_interrupt_en_grey	= 1'b1;
			time_slot	= $random()%(end_point-start_point)+start_point;
			repeat(time_slot) @ (posedge driver_mt9p031.clk_sensor_pix);
			i_interrupt_en_grey	= 1'b0;
		end
	endtask

	//	-------------------------------------------------------------------------------------
	//	--ref aoi wb
	//	-------------------------------------------------------------------------------------
	task aoi_wb_random;
		begin
			#100
			@ (posedge harness.o_fval);
			repeat(10) @ (posedge driver_mt9p031.clk_sensor_pix);
			wait(driver_mt9p031.bfm_mt9p031.reset==1'b0);
			iv_wb_offset_x_start	= $random()%(driver_mt9p031.bfm_mt9p031.width_temp-1);
			iv_wb_offset_width		= $random()%(driver_mt9p031.bfm_mt9p031.width_temp-iv_wb_offset_x_start);
			iv_wb_offset_y_start	= $random()%(driver_mt9p031.bfm_mt9p031.iv_height-1);
			iv_wb_offset_height		= $random()%(driver_mt9p031.bfm_mt9p031.iv_height-iv_wb_offset_y_start);
		end
	endtask

	task aoi_wb_full_frame;
		begin
			#100
			@ (posedge harness.o_fval);
			repeat(10) @ (posedge driver_mt9p031.clk_sensor_pix);
			wait(driver_mt9p031.bfm_mt9p031.reset==1'b0);
			iv_wb_offset_x_start	= 0;
			iv_wb_offset_width		= driver_mt9p031.bfm_mt9p031.width_temp;
			iv_wb_offset_y_start	= 0;
			iv_wb_offset_height		= driver_mt9p031.bfm_mt9p031.iv_height;
		end
	endtask

	task aoi_wb_zero;
		begin
			#100
			@ (posedge harness.o_fval);
			repeat(10) @ (posedge driver_mt9p031.clk_sensor_pix);
			wait(driver_mt9p031.bfm_mt9p031.reset==1'b0);
			iv_wb_offset_x_start	= $random()%(driver_mt9p031.bfm_mt9p031.width_temp-1);
			iv_wb_offset_width		= 0;
			iv_wb_offset_y_start	= $random()%(driver_mt9p031.bfm_mt9p031.iv_height-1);
			iv_wb_offset_height		= 0;
		end
	endtask

	task aoi_wb_random_large;
		begin
			#100
			@ (posedge harness.o_fval);
			repeat(10) @ (posedge driver_mt9p031.clk_sensor_pix);
			wait(driver_mt9p031.bfm_mt9p031.reset==1'b0);
			iv_wb_offset_x_start	= $random()%(driver_mt9p031.bfm_mt9p031.width_temp-1);
			iv_wb_offset_width		= (driver_mt9p031.bfm_mt9p031.width_temp-iv_wb_offset_x_start)+10;
			iv_wb_offset_y_start	= $random()%(driver_mt9p031.bfm_mt9p031.iv_height-1);
			iv_wb_offset_height		= (driver_mt9p031.bfm_mt9p031.iv_height-iv_wb_offset_y_start)+10;
		end
	endtask

	//	-------------------------------------------------------------------------------------
	//	--ref aoi grey
	//	-------------------------------------------------------------------------------------
	task aoi_grey_random;
		begin
			#100
			@ (posedge harness.o_fval);
			repeat(10) @ (posedge driver_mt9p031.clk_sensor_pix);
			wait(driver_mt9p031.bfm_mt9p031.reset==1'b0);
			iv_grey_offset_x_start		= $random()%(driver_mt9p031.bfm_mt9p031.width_temp-1);
			iv_grey_offset_width		= $random()%(driver_mt9p031.bfm_mt9p031.width_temp-iv_grey_offset_x_start);
			iv_grey_offset_y_start		= $random()%(driver_mt9p031.bfm_mt9p031.iv_height-1);
			iv_grey_offset_height		= $random()%(driver_mt9p031.bfm_mt9p031.iv_height-iv_grey_offset_y_start);
		end
	endtask

	task aoi_grey_full_frame;
		begin
			#100
			@ (posedge harness.o_fval);
			repeat(10) @ (posedge driver_mt9p031.clk_sensor_pix);
			wait(driver_mt9p031.bfm_mt9p031.reset==1'b0);
			iv_grey_offset_x_start		= 0;
			iv_grey_offset_width		= driver_mt9p031.bfm_mt9p031.width_temp;
			iv_grey_offset_y_start		= 0;
			iv_grey_offset_height		= driver_mt9p031.bfm_mt9p031.iv_height;
		end
	endtask

	task aoi_grey_zero;
		begin
			#100
			@ (posedge harness.o_fval);
			repeat(10) @ (posedge driver_mt9p031.clk_sensor_pix);
			wait(driver_mt9p031.bfm_mt9p031.reset==1'b0);
			iv_grey_offset_x_start		= $random()%(driver_mt9p031.bfm_mt9p031.width_temp-1);
			iv_grey_offset_width		= 0;
			iv_grey_offset_y_start		= $random()%(driver_mt9p031.bfm_mt9p031.iv_height-1);
			iv_grey_offset_height		= 0;
		end
	endtask

	task aoi_grey_random_large;
		begin
			#100
			@ (posedge harness.o_fval);
			repeat(10) @ (posedge driver_mt9p031.clk_sensor_pix);
			wait(driver_mt9p031.bfm_mt9p031.reset==1'b0);
			iv_grey_offset_x_start		= $random()%(driver_mt9p031.bfm_mt9p031.width_temp-1);
			iv_grey_offset_width		= (driver_mt9p031.bfm_mt9p031.width_temp-iv_grey_offset_x_start)+10;
			iv_grey_offset_y_start		= $random()%(driver_mt9p031.bfm_mt9p031.iv_height-1);
			iv_grey_offset_height		= (driver_mt9p031.bfm_mt9p031.iv_height-iv_grey_offset_y_start)+10;
		end
	endtask

	//	-------------------------------------------------------------------------------------
	//	--ref wb gain ϵ��
	//	-------------------------------------------------------------------------------------
	task gain_rgb;
		input	[WB_GAIN_WIDTH-1:0]		iv_din_r;
		input	[WB_GAIN_WIDTH-1:0]		iv_din_g;
		input	[WB_GAIN_WIDTH-1:0]		iv_din_b;
		begin
			iv_wb_gain_r	= iv_din_r;
			iv_wb_gain_g	= iv_din_g;
			iv_wb_gain_b	= iv_din_b;
		end
	endtask

	task gain_r_random;
		input	[WB_GAIN_WIDTH-1:0]		start_point	;
		input	[WB_GAIN_WIDTH-1:0]		end_point	;
		reg		[WB_GAIN_WIDTH-1:0]		reg_value	;
		begin
			#100
			@ (posedge harness.o_fval);
			reg_value		= $random()%(end_point-start_point)+start_point;
			iv_wb_gain_r	= reg_value;
		end
	endtask

	task gain_g_random;
		input	[WB_GAIN_WIDTH-1:0]		start_point	;
		input	[WB_GAIN_WIDTH-1:0]		end_point	;
		reg		[WB_GAIN_WIDTH-1:0]		reg_value	;
		begin
			#100
			@ (posedge harness.o_fval);
			reg_value		= $random()%(end_point-start_point)+start_point;
			iv_wb_gain_g	= reg_value;
		end
	endtask

	task gain_b_random;
		input	[WB_GAIN_WIDTH-1:0]		start_point	;
		input	[WB_GAIN_WIDTH-1:0]		end_point	;
		reg		[WB_GAIN_WIDTH-1:0]		reg_value	;
		begin
			#100
			@ (posedge harness.o_fval);
			reg_value		= $random()%(end_point-start_point)+start_point;
			iv_wb_gain_b	= reg_value;
		end
	endtask

	task gain_rgb_random;
		input	[WB_GAIN_WIDTH-1:0]		start_point	;
		input	[WB_GAIN_WIDTH-1:0]		end_point	;
		reg		[WB_GAIN_WIDTH-1:0]		reg_value	;
		begin
			#100
			@ (posedge harness.o_fval);
			reg_value		= $random()%(end_point-start_point)+start_point;
			iv_wb_gain_r	= reg_value;
			reg_value		= $random()%(end_point-start_point)+start_point;
			iv_wb_gain_g	= reg_value;
			reg_value		= $random()%(end_point-start_point)+start_point;
			iv_wb_gain_b	= reg_value;
		end
	endtask




endmodule
