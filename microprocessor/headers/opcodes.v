//This file contains all opcode declarations

`ifndef __OPCODES__
  `define __OPCODES__
  
  //Arithmetic
  parameter [4:0] ADD   = 0;
  parameter [4:0] ADDI  = 1;
  parameter [4:0] SUB   = 2;
  parameter [4:0] SUBI  = 3;
  parameter [4:0] MUL   = 4;
  parameter [4:0] MULI  = 5;
  
  //Data
  parameter [4:0] LOAD  = 6;
  parameter [4:0] STORE = 7;
  parameter [4:0] MOV   = 8;
  parameter [4:0] MOVI  = 9;
  
  //Control
  parameter [4:0] CMP   = 10;
  parameter [4:0] CMPI  = 11;
  parameter [4:0] BEQ   = 12;
  parameter [4:0] BLT   = 13;
  parameter [4:0] BLE   = 14;
  
`endif
