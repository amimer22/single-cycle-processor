module DataMemory(
  input         clock,
  input         reset,
  input  [31:0] io_dataSin,
  input  [31:0] io_ReadAddr,
  output [31:0] io_ReadData,
  input         io_MemWrite
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
  reg [31:0] DMemory [0:1023]; // @[DataMemory.scala 15:22]
  wire  DMemory_io_ReadData_MPORT_en; // @[DataMemory.scala 15:22]
  wire [9:0] DMemory_io_ReadData_MPORT_addr; // @[DataMemory.scala 15:22]
  wire [31:0] DMemory_io_ReadData_MPORT_data; // @[DataMemory.scala 15:22]
  wire [31:0] DMemory_MPORT_data; // @[DataMemory.scala 15:22]
  wire [9:0] DMemory_MPORT_addr; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_mask; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_en; // @[DataMemory.scala 15:22]
  wire [31:0] DMemory_MPORT_1_data; // @[DataMemory.scala 15:22]
  wire [9:0] DMemory_MPORT_1_addr; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_1_mask; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_1_en; // @[DataMemory.scala 15:22]
  wire [31:0] DMemory_MPORT_2_data; // @[DataMemory.scala 15:22]
  wire [9:0] DMemory_MPORT_2_addr; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_2_mask; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_2_en; // @[DataMemory.scala 15:22]
  wire [31:0] DMemory_MPORT_3_data; // @[DataMemory.scala 15:22]
  wire [9:0] DMemory_MPORT_3_addr; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_3_mask; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_3_en; // @[DataMemory.scala 15:22]
  wire [31:0] DMemory_MPORT_4_data; // @[DataMemory.scala 15:22]
  wire [9:0] DMemory_MPORT_4_addr; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_4_mask; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_4_en; // @[DataMemory.scala 15:22]
  wire [31:0] DMemory_MPORT_5_data; // @[DataMemory.scala 15:22]
  wire [9:0] DMemory_MPORT_5_addr; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_5_mask; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_5_en; // @[DataMemory.scala 15:22]
  wire [31:0] DMemory_MPORT_6_data; // @[DataMemory.scala 15:22]
  wire [9:0] DMemory_MPORT_6_addr; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_6_mask; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_6_en; // @[DataMemory.scala 15:22]
  wire [31:0] DMemory_MPORT_7_data; // @[DataMemory.scala 15:22]
  wire [9:0] DMemory_MPORT_7_addr; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_7_mask; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_7_en; // @[DataMemory.scala 15:22]
  wire [31:0] DMemory_MPORT_8_data; // @[DataMemory.scala 15:22]
  wire [9:0] DMemory_MPORT_8_addr; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_8_mask; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_8_en; // @[DataMemory.scala 15:22]
  wire [31:0] DMemory_MPORT_9_data; // @[DataMemory.scala 15:22]
  wire [9:0] DMemory_MPORT_9_addr; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_9_mask; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_9_en; // @[DataMemory.scala 15:22]
  wire [31:0] DMemory_MPORT_10_data; // @[DataMemory.scala 15:22]
  wire [9:0] DMemory_MPORT_10_addr; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_10_mask; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_10_en; // @[DataMemory.scala 15:22]
  assign DMemory_io_ReadData_MPORT_en = 1'h1;
  assign DMemory_io_ReadData_MPORT_addr = io_ReadAddr[9:0];
  assign DMemory_io_ReadData_MPORT_data = DMemory[DMemory_io_ReadData_MPORT_addr]; // @[DataMemory.scala 15:22]
  assign DMemory_MPORT_data = 32'sh13;
  assign DMemory_MPORT_addr = 10'h0;
  assign DMemory_MPORT_mask = 1'h1;
  assign DMemory_MPORT_en = 1'h1;
  assign DMemory_MPORT_1_data = 32'sh9;
  assign DMemory_MPORT_1_addr = 10'h1;
  assign DMemory_MPORT_1_mask = 1'h1;
  assign DMemory_MPORT_1_en = 1'h1;
  assign DMemory_MPORT_2_data = 32'sh9;
  assign DMemory_MPORT_2_addr = 10'h2;
  assign DMemory_MPORT_2_mask = 1'h1;
  assign DMemory_MPORT_2_en = 1'h1;
  assign DMemory_MPORT_3_data = 32'sh9;
  assign DMemory_MPORT_3_addr = 10'h3;
  assign DMemory_MPORT_3_mask = 1'h1;
  assign DMemory_MPORT_3_en = 1'h1;
  assign DMemory_MPORT_4_data = 32'sh9;
  assign DMemory_MPORT_4_addr = 10'h4;
  assign DMemory_MPORT_4_mask = 1'h1;
  assign DMemory_MPORT_4_en = 1'h1;
  assign DMemory_MPORT_5_data = 32'sh9;
  assign DMemory_MPORT_5_addr = 10'h5;
  assign DMemory_MPORT_5_mask = 1'h1;
  assign DMemory_MPORT_5_en = 1'h1;
  assign DMemory_MPORT_6_data = 32'sh9;
  assign DMemory_MPORT_6_addr = 10'h6;
  assign DMemory_MPORT_6_mask = 1'h1;
  assign DMemory_MPORT_6_en = 1'h1;
  assign DMemory_MPORT_7_data = 32'sh9;
  assign DMemory_MPORT_7_addr = 10'h7;
  assign DMemory_MPORT_7_mask = 1'h1;
  assign DMemory_MPORT_7_en = 1'h1;
  assign DMemory_MPORT_8_data = 32'sh9;
  assign DMemory_MPORT_8_addr = 10'h8;
  assign DMemory_MPORT_8_mask = 1'h1;
  assign DMemory_MPORT_8_en = 1'h1;
  assign DMemory_MPORT_9_data = io_dataSin;
  assign DMemory_MPORT_9_addr = io_ReadAddr[9:0];
  assign DMemory_MPORT_9_mask = 1'h1;
  assign DMemory_MPORT_9_en = io_MemWrite;
  assign DMemory_MPORT_10_data = 32'sh16;
  assign DMemory_MPORT_10_addr = io_ReadAddr[9:0];
  assign DMemory_MPORT_10_mask = 1'h1;
  assign DMemory_MPORT_10_en = io_MemWrite ? 1'h0 : 1'h1;
  assign io_ReadData = DMemory_io_ReadData_MPORT_data; // @[DataMemory.scala 37:17]
  always @(posedge clock) begin
    if (DMemory_MPORT_en & DMemory_MPORT_mask) begin
      DMemory[DMemory_MPORT_addr] <= DMemory_MPORT_data; // @[DataMemory.scala 15:22]
    end
    if (DMemory_MPORT_1_en & DMemory_MPORT_1_mask) begin
      DMemory[DMemory_MPORT_1_addr] <= DMemory_MPORT_1_data; // @[DataMemory.scala 15:22]
    end
    if (DMemory_MPORT_2_en & DMemory_MPORT_2_mask) begin
      DMemory[DMemory_MPORT_2_addr] <= DMemory_MPORT_2_data; // @[DataMemory.scala 15:22]
    end
    if (DMemory_MPORT_3_en & DMemory_MPORT_3_mask) begin
      DMemory[DMemory_MPORT_3_addr] <= DMemory_MPORT_3_data; // @[DataMemory.scala 15:22]
    end
    if (DMemory_MPORT_4_en & DMemory_MPORT_4_mask) begin
      DMemory[DMemory_MPORT_4_addr] <= DMemory_MPORT_4_data; // @[DataMemory.scala 15:22]
    end
    if (DMemory_MPORT_5_en & DMemory_MPORT_5_mask) begin
      DMemory[DMemory_MPORT_5_addr] <= DMemory_MPORT_5_data; // @[DataMemory.scala 15:22]
    end
    if (DMemory_MPORT_6_en & DMemory_MPORT_6_mask) begin
      DMemory[DMemory_MPORT_6_addr] <= DMemory_MPORT_6_data; // @[DataMemory.scala 15:22]
    end
    if (DMemory_MPORT_7_en & DMemory_MPORT_7_mask) begin
      DMemory[DMemory_MPORT_7_addr] <= DMemory_MPORT_7_data; // @[DataMemory.scala 15:22]
    end
    if (DMemory_MPORT_8_en & DMemory_MPORT_8_mask) begin
      DMemory[DMemory_MPORT_8_addr] <= DMemory_MPORT_8_data; // @[DataMemory.scala 15:22]
    end
    if (DMemory_MPORT_9_en & DMemory_MPORT_9_mask) begin
      DMemory[DMemory_MPORT_9_addr] <= DMemory_MPORT_9_data; // @[DataMemory.scala 15:22]
    end
    if (DMemory_MPORT_10_en & DMemory_MPORT_10_mask) begin
      DMemory[DMemory_MPORT_10_addr] <= DMemory_MPORT_10_data; // @[DataMemory.scala 15:22]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1024; initvar = initvar+1)
    DMemory[initvar] = _RAND_0[31:0];
`endif // RANDOMIZE_MEM_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
