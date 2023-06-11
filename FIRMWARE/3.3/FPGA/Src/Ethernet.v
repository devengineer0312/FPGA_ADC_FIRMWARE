module Ethernet(
		input reset_n,                           
		input  fpga_gclk,                   
		output e_reset,

      output e_mdc,
		inout  e_mdio,
		
      
		input	 e_rxc,                       //125Mhz ethernet gmii rx clock
		input	 e_rxdv,	
		input	 e_rxer,						
		input  [7:0] e_rxd,        

		input	 e_txc,                     //25Mhz ethernet mii tx clock         
		output e_gtxc,                    //25Mhz ethernet gmii tx clock  
		output e_txen, 
		output e_txer, 					
		output [7:0] e_txd,
		
		input [15:0] ad_chan1,
		input [15:0] ad_chan2,
		input [15:0] ad_chan3,
		input [15:0] ad_chan4,
		input [15:0] ad_chan5,
		input [15:0] ad_chan6,
		input [15:0] ad_chan7,
		input [15:0] ad_chan8,
		output reg [5:0] cvt_trigger,
		
		output reg AD_RESET,
		output AD_RANGE,
		output AD_OS0,
		output AD_OS1,
		output AD_OS2,
		input [15:0] DI,
		output reg[15:0] DO,
		output reg[3:0] led
    );

wire [31:0] ram_wr_data;
wire [31:0] ram_rd_data;
wire [8:0] ram_wr_addr;
wire [8:0] ram_rd_addr;

assign e_gtxc=e_rxc;	 
assign e_reset = 1'b1; 

wire [31:0] datain_reg;
         
wire [3:0] tx_state;
wire [3:0] rx_state;
wire [15:0] rx_total_length;          //rx 的IP包的长度
wire [15:0] tx_total_length;          //tx 的IP包的长度
wire [15:0] rx_data_length;           //rx 的UDP的数据包长度
wire [15:0] tx_data_length;           //rx 的UDP的数据包长度

wire data_receive;
reg ram_wr_finish;

reg [31:0] udp_data [23:0];                        //存储发送字符
reg [15:0] adc_data [47:0];
wire [31:0] send_data;
wire [8:0] read_index;
reg ram_wren_i;
reg [8:0] ram_addr_i;
reg [31:0] ram_data_i;
reg [4:0] i=0;

wire data_o_valid;
wire wea;
wire [8:0] addra;
wire [31:0] dina;

assign wea = ram_wren_i;
assign addra = ram_addr_i;
assign dina = ram_data_i;


assign tx_data_length = 16'd104;//16'd40;
assign tx_total_length = 16'd124;//16'd60;


assign AD_RANGE = 0;
assign {AD_OS0,AD_OS1,AD_OS2} = 3'b0;

wire[47:0] pcmac;

reg [3:0] state;
parameter idle=4'b0000, setDO=4'b0001, readDI=4'b0010, adcSend=4'b0011;
parameter DO_CMD = 8'h1, DI_CMD = 8'h2, START_CMD = 8'h3, STOP_CMD = 8'h4, DI_COMPLETE = 8'h8;
			 
////////udp发送和接收程序/////////////////// 
udp u1(
	.reset_n(reset_n),
	.e_rxc(e_rxc),
	.e_rxd(e_rxd),
   .e_rxdv(e_rxdv),
	.data_o_valid(data_o_valid),                    //数据接收有效信号,写入RAM/
	.ram_wr_data(ram_wr_data),                      //接收到的32bit数据写入RAM/	
	.rx_total_length(rx_total_length),              //接收IP包的总长度/
	.mydata_num(mydata_num),                        //for  test
	.rx_state(rx_state),                            //for  test
	.rx_data_length(rx_data_length),                //接收IP包的数据长度/	
	.ram_wr_addr(ram_wr_addr),
	.data_receive(data_receive),
	
	.e_txen(e_txen),
	.e_txd(e_txd),
	.e_txer(e_txer),	
	.ram_rd_data(ram_rd_data),                      //RAM读出的32bit数据/
	.tx_state(tx_state),                            //for test
	.datain_reg(datain_reg),                        //for test
	.tx_data_length(tx_data_length),                //发送IP包的数据长度/	
	.tx_total_length(tx_total_length),              //接发送IP包的总长度/
	.ram_rd_addr(ram_rd_addr),
	
	.pcmac(pcmac),
	.sendtrigger(sendtrigger),
	.led(),
	.read_index(read_index),
	.send_data(send_data)
	);

assign send_data = udp_data[read_index];
//////////ram用于存储以太网接收到的数据或测试数据///////////////////

ram ram_inst
(
	.data			(dina),
	.inclock		(e_rxc),
	.outclock	(e_rxc),
	.rdaddress	(ram_rd_addr),
	.wraddress	(addra),
	.wren			(wea),
	.q				(ram_rd_data)
);

/********************************************/
//存储待发送的字符
/********************************************/
reg pc_found;

initial begin
	state <= idle;
	pc_found <= 0;
	sendtrigger <= 0;
end

always@(*) begin
	if (data_o_valid) begin
		pc_found <= 1;
		// DO command
		if (ram_wr_data[7:0] == DO_CMD) begin				
			DO <= ram_wr_data[23:8];
			//led <= 4'b1111;
		end
		// DI command
		else if (ram_wr_data[7:0] == DI_CMD) begin
			state <= readDI;
			//led <= 4'b1110;
		end
		// ADC start command
		else if (ram_wr_data[7:0] == START_CMD) begin
			state <= adcSend;
			//led <= 4'b1100;
		end
		// ADC stop command
		else if (ram_wr_data[7:0] == STOP_CMD) begin
			state <= idle;
			//led <= 4'b1000;
		end
		// DI complete command
		else if (ram_wr_data[7:0] == DI_COMPLETE) begin
			state <= idle;
			//led <= 4'b0000;
		end
	end
	
	if (counter == 0) begin
		if (state == readDI) begin
			sendtrigger <= 1;
			udp_data[0]<={8'h8, 8'h8, DI};
		end
		else if (state == adcSend) begin				
			sendtrigger <= 1;
			udp_data[0]		<={adc_data[0], 	adc_data[1]};
			udp_data[1]		<={adc_data[2],	adc_data[3]};
			udp_data[2]		<={adc_data[4],	adc_data[5]};
			udp_data[3]		<={adc_data[6],	adc_data[7]};
			udp_data[4]		<={adc_data[8],	adc_data[9]};
			udp_data[5]		<={adc_data[10],	adc_data[11]};
			udp_data[6]		<={adc_data[12],	adc_data[13]};
			udp_data[7]		<={adc_data[14],	adc_data[15]};
			udp_data[8]		<={adc_data[16],	adc_data[17]};
			udp_data[9]		<={adc_data[18],	adc_data[19]};
			udp_data[10]	<={adc_data[20],	adc_data[21]};
			udp_data[11]	<={adc_data[22],	adc_data[23]};
			udp_data[12]	<={adc_data[24],	adc_data[25]};
			udp_data[13]	<={adc_data[26],	adc_data[27]};
			udp_data[14]	<={adc_data[28],	adc_data[29]};
			udp_data[15]	<={adc_data[30],	adc_data[31]};
			udp_data[16]	<={adc_data[32],	adc_data[33]};
			udp_data[17]	<={adc_data[34],	adc_data[35]};
			udp_data[18]	<={adc_data[36],	adc_data[37]};
			udp_data[19]	<={adc_data[38],	adc_data[39]};
			udp_data[20]	<={adc_data[40],	adc_data[41]};
			udp_data[21]	<={adc_data[42],	adc_data[43]};
			udp_data[22]	<={adc_data[44],	adc_data[45]};
			udp_data[23]	<={adc_data[46],	adc_data[47]};
			
		end		
		else begin
			sendtrigger <= 0;
		end
	end
	else begin
		sendtrigger <= 0;
	end
end

reg [15:0] counter;

always@(posedge fpga_gclk or negedge reset_n)
begin	
	if(!reset_n) 
	begin
		counter <= 1;
	end
	else if (counter == 240) begin
		counter <= 0;
	end
	else if (pc_found) begin
		counter <= counter + 1;
	end
end

reg sendtrigger;

always@(posedge fpga_gclk or negedge reset_n)
begin	
	if(!reset_n)
	begin
		cvt_trigger <= 6'b000000;
	end
	else begin
		if (counter == 0) begin
			cvt_trigger <= 6'b000001;
			adc_data[40] <= ad_chan1;
			adc_data[41] <= ad_chan2;
			adc_data[42] <= ad_chan3;
			adc_data[43] <= ad_chan4;
			adc_data[44] <= ad_chan5;
			adc_data[45] <= ad_chan6;
			adc_data[46] <= ad_chan7;
			adc_data[47] <= ad_chan8;
		end
		else if (counter == 40) begin
			cvt_trigger <= 6'b000010;
			adc_data[0] <= ad_chan1;
			adc_data[1] <= ad_chan2;
			adc_data[2] <= ad_chan3;
			adc_data[3] <= ad_chan4;
			adc_data[4] <= ad_chan5;
			adc_data[5] <= ad_chan6;
			adc_data[6] <= ad_chan7;
			adc_data[7] <= ad_chan8;			
		end
		else if (counter == 80) begin
			cvt_trigger <= 6'b000100;
			adc_data[8] <= ad_chan1;
			adc_data[9] <= ad_chan2;
			adc_data[10] <= ad_chan3;
			adc_data[11] <= ad_chan4;
			adc_data[12] <= ad_chan5;
			adc_data[13] <= ad_chan6;
			adc_data[14] <= ad_chan7;
			adc_data[15] <= ad_chan8;
		end
		else if (counter == 120) begin
			cvt_trigger <= 6'b001000;
			adc_data[16] <= ad_chan1;
			adc_data[17] <= ad_chan2;
			adc_data[18] <= ad_chan3;
			adc_data[19] <= ad_chan4;
			adc_data[20] <= ad_chan5;
			adc_data[21] <= ad_chan6;
			adc_data[22] <= ad_chan7;
			adc_data[23] <= ad_chan8;
		end
		else if (counter == 160) begin
			cvt_trigger <= 6'b010000;
			adc_data[24] <= ad_chan1;
			adc_data[25] <= ad_chan2;
			adc_data[26] <= ad_chan3;
			adc_data[27] <= ad_chan4;
			adc_data[28] <= ad_chan5;
			adc_data[29] <= ad_chan6;
			adc_data[30] <= ad_chan7;
			adc_data[31] <= ad_chan8;
		end
		else if (counter == 200) begin
			cvt_trigger <= 6'b100000;
			adc_data[32] <= ad_chan1;
			adc_data[33] <= ad_chan2;
			adc_data[34] <= ad_chan3;
			adc_data[35] <= ad_chan4;
			adc_data[36] <= ad_chan5;
			adc_data[37] <= ad_chan6;
			adc_data[38] <= ad_chan7;
			adc_data[39] <= ad_chan8;
		end		
	end
end

// reg sendtrigger;

always@(posedge e_rxc or negedge reset_n)
begin	
	if(!reset_n) 
	begin
     ram_wr_finish<=1'b1;
	  ram_addr_i<=0;
	  ram_data_i<=0;
	  i <= 24;
	end
	else if (sendtrigger) 
	begin		
     ram_wr_finish<=1'b0;
	  ram_addr_i<=0;
	  i <= 0;
	end
	else begin
		if(i==24) begin
        ram_wr_finish<=1'b1;
        ram_wren_i<=1'b0;		  
     end
     else begin
        ram_wren_i<=1'b1;
		  ram_addr_i<=ram_addr_i+1'b1;
		  ram_data_i<=udp_data[i];
		  i<=i+1'b1;
		  
	  end
	end
end

endmodule
