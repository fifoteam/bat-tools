//-------------------------------------------------------------------------------------------------
//  -- ��Ȩ������   : �й���㣨���ţ����޹�˾����ͼ���Ӿ������ֹ�˾, 2010 -2015.
//  -- ���ܼ���     ������.
//  -- ����         : Ӳ������FPGA������
//  -- ģ����       : chk_inout_data
//  -- �����       : �Ϻ���
//-------------------------------------------------------------------------------------------------
//
//  -- �汾��¼ :
//
//  -- ����         :| �޸�����				:|  �޸�˵��
//-------------------------------------------------------------------------------------------------
//  -- �Ϻ���       :| 2015/3/19 11:15:35	:|  ��ʼ�汾
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
//`timescale 1ns/1ps
`timescale 1ns/1ns
//-------------------------------------------------------------------------------------------------

module chk_inout_data # (
	parameter	DATA_WIDTH 		= 8		,	//���ݿ��
	parameter	CHANNEL_NUM		= 4		,	//ͨ����
	parameter	DATA_DEPTH 		= 64	,	//�������
	parameter	STOP_ON_ERROR	= 1			//���ִ����Ƿ�ֹͣ
	)
	(
	input									i_chk_en		,	//��鿪��
	input									clk_in			,	//����ʱ��
	input									i_fval_in		,	//���볡�źţ���δ�õ�
	input									i_lval_in		,	//�������ź�
	input	[DATA_WIDTH*CHANNEL_NUM-1:0]	iv_pix_data_in	,	//��������
	input									clk_out			,	//���ʱ��
	input									i_fval_out		,	//������źţ���δ�õ�
	input									i_lval_out		,	//������ź�
	input	[DATA_WIDTH*CHANNEL_NUM-1:0]	iv_pix_data_out		//�������
	);

	//	ref signals
	reg		[DATA_WIDTH*CHANNEL_NUM-1:0]	mem	[DATA_DEPTH-1:0]	;
	reg		[11:0]							addr_a	= 12'b0	;	//��ַ12bit����������4k
	reg		[11:0]							addr_b	= 12'b0	;
	wire	[DATA_WIDTH*CHANNEL_NUM-1:0]	data_in_mem	;

	//	ref ARCHITECTURE

	//  -------------------------------------------------------------------------------------
	//	����ʱ����
	//  -------------------------------------------------------------------------------------
	always @ (posedge clk_in) begin
		if(i_fval_in==1'b1 && i_lval_in==1'b1 && i_chk_en==1'b1) begin
			addr_a	<= addr_a + 1'b1;
		end
	end

	always @ (posedge clk_in) begin
		if(i_fval_in==1'b1 && i_lval_in==1'b1 && i_chk_en==1'b1) begin
			mem[addr_a]	<= iv_pix_data_in;
		end
	end

	//  -------------------------------------------------------------------------------------
	//	���ʱ����
	//  -------------------------------------------------------------------------------------
	always @ (posedge clk_out) begin
		if(i_fval_out==1'b1 && i_lval_out==1'b1 && i_chk_en==1'b1) begin
			addr_b	<= addr_b + 1'b1;
		end
	end

	//	-------------------------------------------------------------------------------------
	//	�������
	//	1.��������ź�ʹ���ұȽϿ��ش�ʱ�����ܱȽϣ�����û���κζ���
	//	2.��������������ram�е����ݲ�һ�������ӡ������Ϣ�����ݲ�����ѡ���Ƿ�ֹͣ��
	//	-------------------------------------------------------------------------------------
	assign	data_in_mem	= mem[addr_b]	;
	always @ (posedge clk_out) begin
		if(i_fval_out==1'b1 && i_lval_out==1'b1 && i_chk_en==1'b1) begin
			if(iv_pix_data_out!=data_in_mem) begin
				$display ("%m:time is %t ERROR: input data is %h,mem data is %h",$time,iv_pix_data_out,data_in_mem);
				if(STOP_ON_ERROR) begin
					$stop;
				end
			end
			else begin
				//				$display ("time is %t,ok,input data is %h,mem data is %h",$time,iv_pix_data_out,mem[addr_b]);
			end
		end
	end

endmodule
