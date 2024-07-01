module PWM_m( 
	    clk, 
	    reset_n, 
	    chipselect, 
	    address, 
	    write, 
	    writedata, 
	    read, 
	    byteenable, 
	    readdata, 
	    PWM_out); 
	//input  
	input clk; 
	input reset_n; 
	input chipselect; 
	input [1:0]address; 
	input write; 
	input [31:0] writedata; 
	input read; 
 	input [3:0] byteenable; 
	
	//output
	output [31:0] readdata; 
	output PWM_out; 
	
	
	//các thanh ghi trong module PWM
	reg [31:0] clock_divide_reg;  
	reg [31:0] duty_cycle_reg;  
	reg control_reg; 
	reg clock_divide_reg_selected; 
	reg duty_cycle_reg_selected; 
	reg control_reg_selected; 
	reg [31:0] PWM_counter; 
	
	//Các tín hiệu trong thanh ghi 
	reg [31:0] readdata; 
	reg PWM_out; 
	wire pwm_enable; 
	  
	//Giải mã địa chỉ
	always @ (address) 
	begin 
	    clock_divide_reg_selected<=0; 
	    duty_cycle_reg_selected<=0; 
	    control_reg_selected<=0; 
	    case(address) 
	        2'b00:clock_divide_reg_selected<=1; 
	        2'b01:duty_cycle_reg_selected<=1; 
	        2'b10:control_reg_selected<=1; 
	        default: 
	        begin 
	            clock_divide_reg_selected<=0; 
	            duty_cycle_reg_selected<=0; 
	            control_reg_selected<=0; 
	        end 
	    endcase 
	end            
	
	//thanh ghi clock_divide_reg
	always @ (posedge clk or negedge reset_n) 
	begin 
	    if(reset_n==1'b0) //Nếu tín hiệu reset_n là 0, clock_divide_reg được đặt về 0
	        clock_divide_reg=0; 
	    else
	    begin 
	        if(write & chipselect & clock_divide_reg_selected)  //Nếu tín hiệu write, chipselect, clock_divide_reg_selected đều là logic 1
	        begin 																//byteenable = 1, dữ liệu được ghi vào clock_divide_reg từ writedata
	            if(byteenable[0]) 
	                clock_divide_reg[7:0]=writedata[7:0]; 
	            if(byteenable[1]) 
	                clock_divide_reg[15:8]=writedata[15:8]; 
	            if(byteenable[2]) 
	                clock_divide_reg[23:16]=writedata[23:16]; 
	            if(byteenable[3]) 
	                clock_divide_reg[31:24]=writedata[31:24]; 
	        end 
	    end 
	end 
	  
	//thanh ghi duty_cycle_reg
	always @ (posedge clk or negedge reset_n) 
	begin 
	    if(reset_n==1'b0) 
	        duty_cycle_reg=0; 
	    else
	    begin 
	        if(write & chipselect & duty_cycle_reg_selected) //Nếu tín hiệu write, chipselect, duty_cycle_reg_selected đều là logic 1
	        begin 															//byteenable = 1, dữ liệu được ghi vào duty_cycle_reg từ writedata
	            if(byteenable[0]) 
	                duty_cycle_reg[7:0]=writedata[7:0]; 
	            if(byteenable[1]) 
	                duty_cycle_reg[15:8]=writedata[15:8]; 
	            if(byteenable[2]) 
	                duty_cycle_reg[23:16]=writedata[23:16]; 
	            if(byteenable[3]) 
	                duty_cycle_reg[31:24]=writedata[31:24]; 
	        end 
	    end 
	end 
	  
	//thanh ghi control
	always @ (posedge clk or negedge reset_n) 
	begin 
	    if(reset_n==1'b0) 
	        control_reg=0; 
	    else
	    begin 
	        if(write & chipselect & control_reg_selected) 
	        begin 
	            if(byteenable[0]) // cho phép ghi vào thanh ghi control_reg chỉ khi byteenable[0]=1.
	                control_reg=writedata[0]; 
	        end 
	    end 
	end 
	  
	 
	always @ (address or read or clock_divide_reg or duty_cycle_reg or control_reg or chipselect) 
	begin 
	    if(read & chipselect) 
	        case(address) 
	            2'b00:readdata<=clock_divide_reg; 
	            2'b01:readdata<=duty_cycle_reg; 
	            2'b10:readdata<=control_reg; 
	            default:readdata=32'h8888; 
	        endcase  
	end 
	  
	//gán tín hiệu pwm_enable bằng giá trị của thanh ghi control_reg
	assign pwm_enable=control_reg; 
	  
	//PWM driver
	always @ (posedge clk or negedge reset_n) 
	begin 
	    if(reset_n==1'b0) 
	        PWM_counter=0; 
	    else
	    begin 
	        if(pwm_enable) //khi PWM được kích hoạt
	        begin 
	            if(PWM_counter>=clock_divide_reg) 	//PWM_counter được tăng lên mỗi khi clk lên cạnh dương.
	                PWM_counter<=0; 						//nếu PWM_counter vượt qua giá trị clock_divide_reg, nó sẽ được đặt lại về 0
	            else											
	                PWM_counter<=PWM_counter+1; 
	        end 
	        else
	            PWM_counter<=0; 
	    end 
	end       
	  
	always @ (posedge clk or negedge reset_n) 
	begin 
	    if(reset_n==1'b0) 
	        PWM_out<=1'b0; 
	    else
	    begin 
	        if(pwm_enable) 
	        begin 							//nếu PWM_counter nhỏ hơn hoặc bằng giá trị của duty_cycle_reg, PWM_out được đặt thành logic 1
	            if(PWM_counter<=duty_cycle_reg) //ngược lại PWM_out được đặt thành logic 0
	                PWM_out<=1'b1; 
	            else
	                PWM_out<=1'b0; 
	        end 
	        else
	            PWM_out<=1'b0; 
	    end 
	end 
	  
	endmodule