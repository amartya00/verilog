#Set shell
SHELL = /bin/bash

#Compiler macros
CC = iverilog
FLAGS = -g system-verilog
INCPATH = ./src/

#Source macros
SRC = src/*.v
OUT = microprocessor

#Build the binary:wq
bin:
	$(CC) $(FLAGS) -o $(OUT) $(SRC) -I$(INCPATH);

