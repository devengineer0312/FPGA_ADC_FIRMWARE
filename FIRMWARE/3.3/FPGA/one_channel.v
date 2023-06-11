module One_Channel(
	input clk,
	input reset,
	input AD_BUSY,
	input[15:0] AD_DB,
	output reg AD_RD,
	output reg AD_CONVST,
	output reg AD_CS,
	output reg ad_done,
	input AD_FRSTDATA,
	output reg [15:0] ad_ch1,
	output reg [15:0] ad_ch2,
	output reg [15:0] ad_ch3,
	output reg [15:0] ad_ch4,
	output reg [15:0] ad_ch5,
	output reg [15:0] ad_ch6,
	output reg [15:0] ad_ch7,
	output reg [15:0] ad_ch8,
	input trigger
);

parameter ADC_IDLE_STATE = 4'd0;
parameter ADC_START_CONV_STATE = 4'd1;
parameter ADC_READ_START_STATE = 4'd2;
parameter ADC_READ_STATE = 4'd3;

reg[7:0] count;
reg[3:0] state;
reg AD_RD_dly1;

reg trigger_dly1;

always @ (posedge clk or negedge reset)
begin
	if (!reset) begin
		trigger_dly1 <= 0;
	end
	else begin
		trigger_dly1 <= trigger;
	end
end

always @ (posedge clk or negedge reset)
begin
	if (!reset) begin
		state <= ADC_IDLE_STATE;
		count <= 8'h0;
	end
	else begin
		case(state)
			ADC_IDLE_STATE: begin
				AD_CONVST <= 1'b1;
				AD_CS <= 1'b1;
				AD_RD <= 1'b1;
				count <= 0;
				
				if (trigger_dly1 == 0 && trigger == 1) begin
					state <= ADC_START_CONV_STATE;
				end
			end
			ADC_START_CONV_STATE: begin
				AD_CONVST <= 1'b0;
				AD_CS <= 1'b1;
				AD_RD <= 1'b1;
				ad_done <= 1'b0;
				
				if (count == 8'h2) begin
					count <= 8'h0;
					state <= ADC_READ_START_STATE;
				end
				else
					count <= count + 8'h1;
			end
			ADC_READ_START_STATE: begin
				if (AD_BUSY == 1'b0) begin
					AD_CONVST <= 1'b1;
					AD_CS <= 1'b1;
					AD_RD <= 1'b1;
					count <= 0;
					// LED <= 4'b1010;
				end
				else begin				
					// LED <= 4'b0110;
					AD_CS <= 0;
					AD_RD <= 0;
					AD_RD_dly1 <= 0;
					
					if (count == 1) begin
						count <= 0;
						state <= ADC_READ_STATE;
					end
					else
						count <= count + 1;
				end
			end
			ADC_READ_STATE: begin			
				count <= count + 8'h1;
				// Read channel 1
				if (count == 8'h1) begin
					AD_RD <= 1;
					AD_CS <= 0;
					ad_ch1 <= AD_DB;
					//LED <= 4'b1000;
					/*
					if (AD_DB > 16'h5FFF)
						led <= 4'b1111;
					else
						led <= 4'b0000;
					*/
								
				end
				else if (count == 8'h2) begin
					AD_RD <= 0;
					AD_CS <= 0;
					//LED <= 4'b0000;
				end
				// Read channel 2
				else if (count == 8'h4) begin
					AD_RD <= 1;
					AD_CS <= 0;
					ad_ch2 <= AD_DB;
				end
				else if (count == 8'h5) begin
					AD_RD <= 0;
					AD_CS <= 0;
				end
				// Read channel 3
				else if (count == 8'h7) begin
					AD_RD <= 1;
					AD_CS <= 0;
					ad_ch3 <= AD_DB;
				end
				else if (count == 8'h8) begin
					AD_RD <= 0;
					AD_CS <= 0;
				end
				// Read channel 4
				else if (count == 8'hA) begin
					AD_RD <= 1;
					AD_CS <= 0;
					ad_ch4 <= AD_DB;
				end
				else if (count == 8'hB) begin
					AD_RD <= 0;
					AD_CS <= 0;
				end
				// Read channel 5
				else if (count == 8'hD) begin
					AD_RD <= 1;
					AD_CS <= 0;
					ad_ch5 <= AD_DB;
				end
				else if (count == 8'hE) begin
					AD_RD <= 0;
					AD_CS <= 0;
				end
				// Read channel 6
				else if (count == 8'h10) begin
					AD_RD <= 1;
					AD_CS <= 0;
					ad_ch6 <= AD_DB;
					
						
				end
				else if (count == 8'h11) begin
					AD_RD <= 0;
					AD_CS <= 0;
				end
				// Read channel 7
				else if (count == 8'h13) begin
					AD_RD <= 1;
					AD_CS <= 0;
					ad_ch7 <= AD_DB;
				end
				else if (count == 8'h14) begin
					AD_RD <= 0;
					AD_CS <= 0;
				end
				// Read channel 8
				else if (count == 8'h16) begin
					AD_RD <= 1;
					AD_CS <= 0;
					ad_ch8 <= AD_DB;
				end
				else if (count == 8'h17) begin
					AD_RD <= 1;
					ad_done <= 1;
					AD_CS <= 1;
					state <= ADC_IDLE_STATE;
					count <= 8'h0;
				end
			end
		endcase
	end
end

endmodule