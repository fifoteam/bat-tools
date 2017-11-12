//-------------------------------------------------------------------------------------------------
//  -- ��Ȩ������   : �й���㣨���ţ����޹�˾����ͼ���Ӿ������ֹ�˾, 2010 -2015.
//  -- ���ܼ���     ������.
//  -- ����         : Ӳ������FPGA������
//  -- ģ����       : bfm_reg_common
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
module bfm_reg_common # (
	parameter	REG_WD			= 32	,
	parameter	SHORT_REG_WD	= 16
	)
	();

	//	ref signals
	reg								i_encrypt_state		= 1'b0;
	reg		[2:0]					iv_test_image_sel	= 3'b0;
	reg		[REG_WD-1:0]			iv_pixel_format		= {REG_WD{1'b0}};
	reg								i_pulse_filter_en	= 1'b0;
	reg		[SHORT_REG_WD-1:0]		iv_roi_pic_width	= {SHORT_REG_WD{1'b0}};


	//	ref ARCHITECTURE

	//	-------------------------------------------------------------------------------------
	//	--ref ����
	//	-------------------------------------------------------------------------------------
	//	-------------------------------------------------------------------------------------
	//	����״̬
	//	-------------------------------------------------------------------------------------
	task encrypt_low;
		begin
			#1
			i_encrypt_state	= 1'b0;
		end
	endtask

	task encrypt_high;
		begin
			#1
			i_encrypt_state	= 1'b1;
		end
	endtask

	//	-------------------------------------------------------------------------------------
	//	--ref ����ͼ�Ĵ���
	//	-------------------------------------------------------------------------------------
	task test_image_sel;
		input	[2:0]		din;
		begin
			#1
			iv_test_image_sel	= din;
		end
	endtask

	task test_image_random;
		input	[15:0]		start_point	;
		input	[15:0]		end_point	;

		reg		[15:0]		time_slot;
		reg		[1:0]		test_image;
		begin
			//	-------------------------------------------------------------------------------------
			//	����ͼ����
			//	000:��ʵͼ
			//	001:����ͼ��1�Ҷ�ֵ֡����
			//	110:����ͼ��2��ֹ��б����
			//	010:����ͼ��3������б����
			//	-------------------------------------------------------------------------------------
			//	�� start point �� stop point ֮�䣬����һ�������
			//	-------------------------------------------------------------------------------------
			time_slot	= {$random()}%(end_point-start_point)+start_point;
			repeat(time_slot) @ (posedge driver_mt9p031.clk_sensor_pix);
			test_image			= {$random()}%4;
			case(test_image)
				0		: iv_test_image_sel	= 3'b000;
				1		: iv_test_image_sel	= 3'b001;
				2		: iv_test_image_sel	= 3'b110;
				3		: iv_test_image_sel	= 3'b010;
				default	: iv_test_image_sel	= 3'b000;
			endcase
		end
	endtask

	//	-------------------------------------------------------------------------------------
	//	��������task�ᱣ֤����֡
	//	-------------------------------------------------------------------------------------
	task test_image_frame_random;
		begin
			@ (negedge harness.o_fval)
			test_image_random(0,1);
		end
	endtask

	//	-------------------------------------------------------------------------------------
	//	--ref ���ظ�ʽ�Ĵ���
	//	-------------------------------------------------------------------------------------
	task pixel_format_mono8;
		begin
			#1
			iv_pixel_format	= 32'h01080001;
		end
	endtask

	task pixel_format_mono10;
		begin
			#1
			iv_pixel_format	= 32'h01100003;
		end
	endtask

	task pixel_format_gr8;
		begin
			#1
			iv_pixel_format	= 32'h01080008;
		end
	endtask

	task pixel_format_gr10;
		begin
			#1
			iv_pixel_format	= 32'h0110000c;
		end
	endtask

	task pixel_format_random;
		input	[15:0]		start_point	;
		input	[15:0]		end_point	;

		reg		[15:0]		time_slot;
		reg		[31:0]		reg_value;
		begin
			//	-------------------------------------------------------------------------------------
			//	�� start point �� stop point ֮�䣬����һ�������
			//	-------------------------------------------------------------------------------------
			time_slot	= {$random()}%(end_point-start_point)+start_point;
			repeat(time_slot) @ (posedge driver_mt9p031.clk_sensor_pix);
			reg_value	= {$random()}%4;
			case(reg_value)
				0		: pixel_format_mono8();
				1		: pixel_format_mono10();
				2		: pixel_format_gr8();
				3		: pixel_format_gr10();
				default	: pixel_format_mono8();
			endcase
		end
	endtask

	task pixel_format_frame_random;
		reg		[31:0]		reg_value;
		begin
			reg_value	= {$random()}%4;
			@ (negedge harness.o_fval)
			case(reg_value)
				0		: pixel_format_mono8();
				1		: pixel_format_mono10();
				2		: pixel_format_gr8();
				3		: pixel_format_gr10();
				default	: pixel_format_mono8();
			endcase
		end
	endtask

	//	-------------------------------------------------------------------------------------
	//	--ref pulse filter �п�
	//	-------------------------------------------------------------------------------------
	task roi_pic_width;
		begin
			iv_roi_pic_width	= driver_mt9p031.bfm_mt9p031.iv_width;
		end
	endtask

	//	-------------------------------------------------------------------------------------
	//	--ref pulse filter ����
	//	-------------------------------------------------------------------------------------
	task pulse_filter_en_low;
		begin
			i_pulse_filter_en	= 1'b0;
		end
	endtask

	task pulse_filter_en_high;
		begin
			i_pulse_filter_en	= 1'b1;
		end
	endtask

	task pulse_filter_en_random;
		input	[15:0]		start_point	;
		input	[15:0]		end_point	;

		reg		[15:0]		time_slot;
		begin
			//	-------------------------------------------------------------------------------------
			//	�� start point �� stop point ֮�䣬����һ�������
			//	-------------------------------------------------------------------------------------
			time_slot	= {$random()}%(end_point-start_point)+start_point;
			i_pulse_filter_en	= 1'b1;
			repeat(time_slot) @ (posedge driver_mt9p031.clk_sensor_pix);
			i_pulse_filter_en	= 1'b0;
			repeat(time_slot) @ (posedge driver_mt9p031.clk_sensor_pix);
		end
	endtask



endmodule
