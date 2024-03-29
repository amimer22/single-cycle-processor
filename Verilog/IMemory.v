module IMemory(
  input         clock,
  input         reset,
  input  [31:0] io_IPmem_in,
  output [31:0] io_instruction
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
  reg [31:0] Memory [0:31]; // @[IMemory.scala 16:22]
  wire  Memory_io_instruction_MPORT_en; // @[IMemory.scala 16:22]
  wire [4:0] Memory_io_instruction_MPORT_addr; // @[IMemory.scala 16:22]
  wire [31:0] Memory_io_instruction_MPORT_data; // @[IMemory.scala 16:22]
  wire [31:0] Memory_MPORT_data; // @[IMemory.scala 16:22]
  wire [4:0] Memory_MPORT_addr; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_mask; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_en; // @[IMemory.scala 16:22]
  wire [31:0] Memory_MPORT_1_data; // @[IMemory.scala 16:22]
  wire [4:0] Memory_MPORT_1_addr; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_1_mask; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_1_en; // @[IMemory.scala 16:22]
  wire [31:0] Memory_MPORT_2_data; // @[IMemory.scala 16:22]
  wire [4:0] Memory_MPORT_2_addr; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_2_mask; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_2_en; // @[IMemory.scala 16:22]
  wire [31:0] Memory_MPORT_3_data; // @[IMemory.scala 16:22]
  wire [4:0] Memory_MPORT_3_addr; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_3_mask; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_3_en; // @[IMemory.scala 16:22]
  wire [31:0] Memory_MPORT_4_data; // @[IMemory.scala 16:22]
  wire [4:0] Memory_MPORT_4_addr; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_4_mask; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_4_en; // @[IMemory.scala 16:22]
  wire [31:0] Memory_MPORT_5_data; // @[IMemory.scala 16:22]
  wire [4:0] Memory_MPORT_5_addr; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_5_mask; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_5_en; // @[IMemory.scala 16:22]
  wire [31:0] Memory_MPORT_6_data; // @[IMemory.scala 16:22]
  wire [4:0] Memory_MPORT_6_addr; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_6_mask; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_6_en; // @[IMemory.scala 16:22]
  wire [31:0] Memory_MPORT_7_data; // @[IMemory.scala 16:22]
  wire [4:0] Memory_MPORT_7_addr; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_7_mask; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_7_en; // @[IMemory.scala 16:22]
  wire [31:0] Memory_MPORT_8_data; // @[IMemory.scala 16:22]
  wire [4:0] Memory_MPORT_8_addr; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_8_mask; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_8_en; // @[IMemory.scala 16:22]
  assign Memory_io_instruction_MPORT_en = 1'h1;
  assign Memory_io_instruction_MPORT_addr = io_IPmem_in[4:0];
  assign Memory_io_instruction_MPORT_data = Memory[Memory_io_instruction_MPORT_addr]; // @[IMemory.scala 16:22]
  assign Memory_MPORT_data = 32'h508113;
  assign Memory_MPORT_addr = 5'h0;
  assign Memory_MPORT_mask = 1'h1;
  assign Memory_MPORT_en = 1'h1;
  assign Memory_MPORT_1_data = 32'hc08193;
  assign Memory_MPORT_1_addr = 5'h1;
  assign Memory_MPORT_1_mask = 1'h1;
  assign Memory_MPORT_1_en = 1'h1;
  assign Memory_MPORT_2_data = 32'hff718393;
  assign Memory_MPORT_2_addr = 5'h2;
  assign Memory_MPORT_2_mask = 1'h1;
  assign Memory_MPORT_2_en = 1'h1;
  assign Memory_MPORT_3_data = 32'h716233;
  assign Memory_MPORT_3_addr = 5'h3;
  assign Memory_MPORT_3_mask = 1'h1;
  assign Memory_MPORT_3_en = 1'h1;
  assign Memory_MPORT_4_data = 32'h41f2b3;
  assign Memory_MPORT_4_addr = 5'h4;
  assign Memory_MPORT_4_mask = 1'h1;
  assign Memory_MPORT_4_en = 1'h1;
  assign Memory_MPORT_5_data = 32'h4282b3;
  assign Memory_MPORT_5_addr = 5'h5;
  assign Memory_MPORT_5_mask = 1'h1;
  assign Memory_MPORT_5_en = 1'h1;
  assign Memory_MPORT_6_data = 32'h20863;
  assign Memory_MPORT_6_addr = 5'h6;
  assign Memory_MPORT_6_mask = 1'h1;
  assign Memory_MPORT_6_en = 1'h1;
  assign Memory_MPORT_7_data = 32'hb08313;
  assign Memory_MPORT_7_addr = 5'h7;
  assign Memory_MPORT_7_mask = 1'h1;
  assign Memory_MPORT_7_en = 1'h1;
  assign Memory_MPORT_8_data = 32'hfe628ce3;
  assign Memory_MPORT_8_addr = 5'h8;
  assign Memory_MPORT_8_mask = 1'h1;
  assign Memory_MPORT_8_en = 1'h1;
  assign io_instruction = Memory_io_instruction_MPORT_data; // @[IMemory.scala 46:20]
  always @(posedge clock) begin
    if (Memory_MPORT_en & Memory_MPORT_mask) begin
      Memory[Memory_MPORT_addr] <= Memory_MPORT_data; // @[IMemory.scala 16:22]
    end
    if (Memory_MPORT_1_en & Memory_MPORT_1_mask) begin
      Memory[Memory_MPORT_1_addr] <= Memory_MPORT_1_data; // @[IMemory.scala 16:22]
    end
    if (Memory_MPORT_2_en & Memory_MPORT_2_mask) begin
      Memory[Memory_MPORT_2_addr] <= Memory_MPORT_2_data; // @[IMemory.scala 16:22]
    end
    if (Memory_MPORT_3_en & Memory_MPORT_3_mask) begin
      Memory[Memory_MPORT_3_addr] <= Memory_MPORT_3_data; // @[IMemory.scala 16:22]
    end
    if (Memory_MPORT_4_en & Memory_MPORT_4_mask) begin
      Memory[Memory_MPORT_4_addr] <= Memory_MPORT_4_data; // @[IMemory.scala 16:22]
    end
    if (Memory_MPORT_5_en & Memory_MPORT_5_mask) begin
      Memory[Memory_MPORT_5_addr] <= Memory_MPORT_5_data; // @[IMemory.scala 16:22]
    end
    if (Memory_MPORT_6_en & Memory_MPORT_6_mask) begin
      Memory[Memory_MPORT_6_addr] <= Memory_MPORT_6_data; // @[IMemory.scala 16:22]
    end
    if (Memory_MPORT_7_en & Memory_MPORT_7_mask) begin
      Memory[Memory_MPORT_7_addr] <= Memory_MPORT_7_data; // @[IMemory.scala 16:22]
    end
    if (Memory_MPORT_8_en & Memory_MPORT_8_mask) begin
      Memory[Memory_MPORT_8_addr] <= Memory_MPORT_8_data; // @[IMemory.scala 16:22]
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
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    Memory[initvar] = _RAND_0[31:0];
`endif // RANDOMIZE_MEM_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
