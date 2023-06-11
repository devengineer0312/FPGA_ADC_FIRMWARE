module ADC_MUX(
	input fpga_clk,
	input [15:0] adc_module11,
	input [15:0] adc_module12,
	input [15:0] adc_module13,
	input [15:0] adc_module14,
	input [15:0] adc_module15,
	input [15:0] adc_module16,
	input [15:0] adc_module17,
	input [15:0] adc_module18,
	input [15:0] adc_module21,
	input [15:0] adc_module22,
	input [15:0] adc_module23,
	input [15:0] adc_module24,
	input [15:0] adc_module25,
	input [15:0] adc_module26,
	input [15:0] adc_module27,
	input [15:0] adc_module28,
	input [15:0] adc_module31,
	input [15:0] adc_module32,
	input [15:0] adc_module33,
	input [15:0] adc_module34,
	input [15:0] adc_module35,
	input [15:0] adc_module36,
	input [15:0] adc_module37,
	input [15:0] adc_module38,
	input [15:0] adc_module41,
	input [15:0] adc_module42,
	input [15:0] adc_module43,
	input [15:0] adc_module44,
	input [15:0] adc_module45,
	input [15:0] adc_module46,
	input [15:0] adc_module47,
	input [15:0] adc_module48,
	input [15:0] adc_module51,
	input [15:0] adc_module52,
	input [15:0] adc_module53,
	input [15:0] adc_module54,
	input [15:0] adc_module55,
	input [15:0] adc_module56,
	input [15:0] adc_module57,
	input [15:0] adc_module58,
	input [15:0] adc_module61,
	input [15:0] adc_module62,
	input [15:0] adc_module63,
	input [15:0] adc_module64,
	input [15:0] adc_module65,
	input [15:0] adc_module66,
	input [15:0] adc_module67,
	input [15:0] adc_module68,
	output reg [15:0] adc_output1,
	output reg [15:0] adc_output2,
	output reg [15:0] adc_output3,
	output reg [15:0] adc_output4,
	output reg [15:0] adc_output5,
	output reg [15:0] adc_output6,
	output reg [15:0] adc_output7,
	output reg [15:0] adc_output8,
	input done1,
	input done2,
	input done3,
	input done4,
	input done5,
	input done6
);

reg done1_dly;
reg done2_dly;
reg done3_dly;
reg done4_dly;
reg done5_dly;
reg done6_dly;

always @ (posedge fpga_clk)
begin
	done1_dly <= done1;
	done2_dly <= done2;
	done3_dly <= done3;
	done4_dly <= done4;
	done5_dly <= done5;
	done6_dly <= done6;
end

always @ (posedge fpga_clk)
begin
	if (done1_dly == 0 && done1 == 1) begin
		adc_output1 <= adc_module11;
		adc_output2 <= adc_module12;
		adc_output3 <= adc_module13;
		adc_output4 <= adc_module14;
		adc_output5 <= adc_module15;
		adc_output6 <= adc_module16;
		adc_output7 <= adc_module17;
		adc_output8 <= adc_module18;
		
		/*
		if (adc_module11 > 16'h5FFF)
			led <= 4'b1111;
		else
			led <= 4'b0001;
		
		*/			
	end
	else if (done2_dly == 0 && done2 == 1) begin
		adc_output1 <= adc_module21;
		adc_output2 <= adc_module22;
		adc_output3 <= adc_module23;
		adc_output4 <= adc_module24;
		adc_output5 <= adc_module25;
		adc_output6 <= adc_module26;
		adc_output7 <= adc_module27;
		adc_output8 <= adc_module28;
	end
	else if (done3_dly == 0 && done3 == 1) begin
		adc_output1 <= adc_module31;
		adc_output2 <= adc_module32;
		adc_output3 <= adc_module33;
		adc_output4 <= adc_module34;
		adc_output5 <= adc_module35;
		adc_output6 <= adc_module36;
		adc_output7 <= adc_module37;
		adc_output8 <= adc_module38;
	end
	else if (done4_dly == 0 && done4 == 1) begin
		adc_output1 <= adc_module41;
		adc_output2 <= adc_module42;
		adc_output3 <= adc_module43;
		adc_output4 <= adc_module44;
		adc_output5 <= adc_module45;
		adc_output6 <= adc_module46;
		adc_output7 <= adc_module47;
		adc_output8 <= adc_module48;
	end
	else if (done5_dly == 0 && done5 == 1) begin
		adc_output1 <= adc_module51;
		adc_output2 <= adc_module52;
		adc_output3 <= adc_module53;
		adc_output4 <= adc_module54;
		adc_output5 <= adc_module55;
		adc_output6 <= adc_module56;
		adc_output7 <= adc_module57;
		adc_output8 <= adc_module58;
	end
	else if (done6_dly == 0 && done6 == 1) begin
		adc_output1 <= adc_module61;
		adc_output2 <= adc_module62;
		adc_output3 <= adc_module63;
		adc_output4 <= adc_module64;
		adc_output5 <= adc_module65;
		adc_output6 <= adc_module66;
		adc_output7 <= adc_module67;
		adc_output8 <= adc_module68;
		
	end	
	
	/*
					if (adc_module16 > 16'h5FFF)
						led <= 4'b1111;
					else
						led <= 4'b0001;
						*/
end

endmodule