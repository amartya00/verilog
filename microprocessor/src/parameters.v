//This is the file containing all parameter declarations

`ifndef __PARAMS__
  `define __PARAMS__
  
  //===============================State =======================================
  parameter [3:0] HOLD = 0;
  parameter [3:0] INIT = 0;
  parameter [3:0] IF   = 0;
  parameter [3:0] ID   = 0;
  parameter [3:0] DF   = 0;
  parameter [3:0] EX   = 0;
  parameter [3:0] WB   = 0;
  
  //===============================Opcodes======================================
  //Data operations
  parameter [7:0] LOAD  = 0;
  parameter [7:0] STORE = 1;
  parameter [7:0] MOV   = 2;
  parameter [7:0] MOVI  = 3;
  
  //Arithmetic operations
  parameter [7:0] ADD   = 4;
  parameter [7:0] ADD_I = 5;
  parameter [7:0] SUB   = 6;
  parameter [7:0] SUB_I = 7;
  parameter [7:0] MUL   = 8;
  parameter [7:0] MUL_I = 9;
  
`endif
