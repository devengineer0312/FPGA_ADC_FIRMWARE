module signal_gen(
	input fpga_gclk,
	input [7:0] amplitude,
	//input [7:0] phase,
	output reg [15:0] adc_channel
);

localparam TOP_VALUE = 500 * 5;
reg [15:0] counter;
reg [7:0] upvalue = 0;

always @ (posedge fpga_gclk)
begin
	if (counter >= TOP_VALUE - 1) begin
		counter <= 0;
		upvalue <= upvalue + 1;
		adc_channel <= {8'b00000000, upvalue + amplitude};
	end
	else
		counter <= counter + 1;
end

endmodule