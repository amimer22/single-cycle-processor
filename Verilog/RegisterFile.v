module RegisterFile(
  input         clock,
  input         reset,
  input  [4:0]  io_addr1,
  output [31:0] io_data1,
  input  [4:0]  io_addr2,
  output [31:0] io_data2,
  input  [4:0]  io_addrwr,
  input  [31:0] io_datawr,
  input         io_RegWrite
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
  reg [31:0] registers [0:31]; // @[RegisterFile.scala 23:24]
  wire  registers_io_data1_MPORT_en; // @[RegisterFile.scala 23:24]
  wire [4:0] registers_io_data1_MPORT_addr; // @[RegisterFile.scala 23:24]
  wire [31:0] registers_io_data1_MPORT_data; // @[RegisterFile.scala 23:24]
  wire  registers_io_data2_MPORT_en; // @[RegisterFile.scala 23:24]
  wire [4:0] registers_io_data2_MPORT_addr; // @[RegisterFile.scala 23:24]
  wire [31:0] registers_io_data2_MPORT_data; // @[RegisterFile.scala 23:24]
  wire [31:0] registers_MPORT_data; // @[RegisterFile.scala 23:24]
  wire [4:0] registers_MPORT_addr; // @[RegisterFile.scala 23:24]
  wire  registers_MPORT_mask; // @[RegisterFile.scala 23:24]
  wire  registers_MPORT_en; // @[RegisterFile.scala 23:24]
  wire [31:0] registers_MPORT_1_data; // @[RegisterFile.scala 23:24]
  wire [4:0] registers_MPORT_1_addr; // @[RegisterFile.scala 23:24]
  wire  registers_MPORT_1_mask; // @[RegisterFile.scala 23:24]
  wire  registers_MPORT_1_en; // @[RegisterFile.scala 23:24]
  wire [31:0] registers_MPORT_2_data; // @[RegisterFile.scala 23:24]
  wire [4:0] registers_MPORT_2_addr; // @[RegisterFile.scala 23:24]
  wire  registers_MPORT_2_mask; // @[RegisterFile.scala 23:24]
  wire  registers_MPORT_2_en; // @[RegisterFile.scala 23:24]
  wire [31:0] registers_MPORT_3_data; // @[RegisterFile.scala 23:24]
  wire [4:0] registers_MPORT_3_addr; // @[RegisterFile.scala 23:24]
  wire  registers_MPORT_3_mask; // @[RegisterFile.scala 23:24]
  wire  registers_MPORT_3_en; // @[RegisterFile.scala 23:24]
  wire [31:0] registers_MPORT_4_data; // @[RegisterFile.scala 23:24]
  wire [4:0] registers_MPORT_4_addr; // @[RegisterFile.scala 23:24]
  wire  registers_MPORT_4_mask; // @[RegisterFile.scala 23:24]
  wire  registers_MPORT_4_en; // @[RegisterFile.scala 23:24]
  wire [31:0] registers_MPORT_5_data; // @[RegisterFile.scala 23:24]
  wire [4:0] registers_MPORT_5_addr; // @[RegisterFile.scala 23:24]
  wire  registers_MPORT_5_mask; // @[RegisterFile.scala 23:24]
  wire  registers_MPORT_5_en; // @[RegisterFile.scala 23:24]
  assign registers_io_data1_MPORT_en = 1'h1;
  assign registers_io_data1_MPORT_addr = io_addr1;
  assign registers_io_data1_MPORT_data = registers[registers_io_data1_MPORT_addr]; // @[RegisterFile.scala 23:24]
  assign registers_io_data2_MPORT_en = 1'h1;
  assign registers_io_data2_MPORT_addr = io_addr2;
  assign registers_io_data2_MPORT_data = registers[registers_io_data2_MPORT_addr]; // @[RegisterFile.scala 23:24]
  assign registers_MPORT_data = io_datawr;
  assign registers_MPORT_addr = io_addrwr;
  assign registers_MPORT_mask = 1'h1;
  assign registers_MPORT_en = io_RegWrite;
  assign registers_MPORT_1_data = 32'sh16;
  assign registers_MPORT_1_addr = io_addrwr;
  assign registers_MPORT_1_mask = 1'h1;
  assign registers_MPORT_1_en = io_RegWrite ? 1'h0 : 1'h1;
  assign registers_MPORT_2_data = 32'sha;
  assign registers_MPORT_2_addr = 5'h0;
  assign registers_MPORT_2_mask = 1'h1;
  assign registers_MPORT_2_en = 1'h1;
  assign registers_MPORT_3_data = 32'shf;
  assign registers_MPORT_3_addr = 5'h1;
  assign registers_MPORT_3_mask = 1'h1;
  assign registers_MPORT_3_en = 1'h1;
  assign registers_MPORT_4_data = 32'sh1a;
  assign registers_MPORT_4_addr = 5'h2;
  assign registers_MPORT_4_mask = 1'h1;
  assign registers_MPORT_4_en = 1'h1;
  assign registers_MPORT_5_data = 32'sh23;
  assign registers_MPORT_5_addr = 5'h3;
  assign registers_MPORT_5_mask = 1'h1;
  assign registers_MPORT_5_en = 1'h1;
  assign io_data1 = registers_io_data1_MPORT_data; // @[RegisterFile.scala 41:14]
  assign io_data2 = registers_io_data2_MPORT_data; // @[RegisterFile.scala 42:14]
  always @(posedge clock) begin
    if (registers_MPORT_en & registers_MPORT_mask) begin
      registers[registers_MPORT_addr] <= registers_MPORT_data; // @[RegisterFile.scala 23:24]
    end
    if (registers_MPORT_1_en & registers_MPORT_1_mask) begin
      registers[registers_MPORT_1_addr] <= registers_MPORT_1_data; // @[RegisterFile.scala 23:24]
    end
    if (registers_MPORT_2_en & registers_MPORT_2_mask) begin
      registers[registers_MPORT_2_addr] <= registers_MPORT_2_data; // @[RegisterFile.scala 23:24]
    end
    if (registers_MPORT_3_en & registers_MPORT_3_mask) begin
      registers[registers_MPORT_3_addr] <= registers_MPORT_3_data; // @[RegisterFile.scala 23:24]
    end
    if (registers_MPORT_4_en & registers_MPORT_4_mask) begin
      registers[registers_MPORT_4_addr] <= registers_MPORT_4_data; // @[RegisterFile.scala 23:24]
    end
    if (registers_MPORT_5_en & registers_MPORT_5_mask) begin
      registers[registers_MPORT_5_addr] <= registers_MPORT_5_data; // @[RegisterFile.scala 23:24]
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
    registers[initvar] = _RAND_0[31:0];
`endif // RANDOMIZE_MEM_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
