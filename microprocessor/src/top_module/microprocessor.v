//This file contains source for the top module

module microprocessor(
  //===================================Ports====================================
  output reg [29:0] inst_addr,
  input      [31:0] inst_bus ,
  
  output reg [29:0] data_addr,
  input      [31:0] data_rd  ,
  output reg [31:0] data_wr  ,
  
  input clk, rst, go);
  
  //=============================Internal registers=============================
  //IF registers
  reg [31:0] IB;
  
  //ID registers
  reg [7 :0] OPC_ID;
  reg [7 :0] RES_R_ID;
  reg [31:0] OP1_ID;
  reg [31:0] OP2_ID;
  
  //DF registers
  reg [7 :0] OPC_DF;
  reg [7 :0] RES_R_DF;
  reg [31:0] OP1_DF;
  reg [31:0] OP2_DF;
  
  //EX registers
  reg [31:0] RES;
  reg [7 :0] RES_R_EX;
  
  //Misc registers
  reg [29:0] IP;
  reg [7 :0] CPSR;
  
  //register file
  reg [31:0] RF [0:31];
  
  //=============================State parameters===============================
  `include "parameters.v"
  reg [3:0] PS,NS;
  
  //===========================Next State Logic=================================  
  always @(PS or go) begin
    case(PS)
      HOLD: begin    //Hold state
              if(go == 1)
                NS = INIT;
              else
                NS = HOLD;
            end
            
      INIT: NS = IF;  //Init state
      
      IF  : NS = DF;  //IF state
      
      DF  : NS = EX;  //DF state
      
      EX  : NS = WB;  //EX state
      
      WB  : NS = IF;  //WB state
    endcase
  end
  
  
  //=================================Output Logic===============================
  //Include all task files
  `include "INIT_task.v"
  `include "IF_task.v"
  `include "ID_task.v"
  `include "DF_task.v"
  `include "EX_task.v"
  `include "WB_task.v"
  
  //The Output logic PB
  always @(posedge clk or posedge rst) begin
    if(rst==1) //For reset state
      PS = HOLD;
    else begin
      PS = NS;
      case(PS)
        HOLD:            ;  //Hold state
        
        INIT: INIT_task();  //Init state
        
        IF  : IF_task()  ;  //IF state
        
        ID  : ID_TASK()  ;  //ID state
        
        DF  : DF_task()  ;  //DF state
        
        EX  : EX_task()  ;  //EX state
        
        WB  : EB_task()  ;  //WB state
      endcase
    end
  end
endmodule











