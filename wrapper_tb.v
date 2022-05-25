module wrapper_tb();
reg enable,reset,clk;
reg[1:0] choice;
 wire led,led256,led192;
 
 initial begin
 reset=1;
 enable=0;
 clk=0;
 choice=0;
 
 end
 always begin
 #10 reset=0;
 #10 enable=1;
 #5 reset=1;
 #15 choice=choice+1;
 if(choice>=3)
 #5 choice=0;
 
 end
 always #10 clk=~clk;
 wrapper error (enable,reset,clk, choice,led,led256,led192);
 
 endmodule 