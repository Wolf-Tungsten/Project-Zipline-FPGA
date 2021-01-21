// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="cceip_kernel,hls_ip_2020_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcu280-fsvh2892-2L-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.750000,HLS_SYN_LAT=12307,HLS_SYN_TPT=none,HLS_SYN_MEM=32,HLS_SYN_DSP=0,HLS_SYN_FF=1066,HLS_SYN_LUT=1545,HLS_VERSION=2020_1}" *)

module cceip_kernel (
        ap_clk,
        ap_rst_n,
        m_axi_m00_axi_AWVALID,
        m_axi_m00_axi_AWREADY,
        m_axi_m00_axi_AWADDR,
        m_axi_m00_axi_AWID,
        m_axi_m00_axi_AWLEN,
        m_axi_m00_axi_AWSIZE,
        m_axi_m00_axi_AWBURST,
        m_axi_m00_axi_AWLOCK,
        m_axi_m00_axi_AWCACHE,
        m_axi_m00_axi_AWPROT,
        m_axi_m00_axi_AWQOS,
        m_axi_m00_axi_AWREGION,
        m_axi_m00_axi_AWUSER,
        m_axi_m00_axi_WVALID,
        m_axi_m00_axi_WREADY,
        m_axi_m00_axi_WDATA,
        m_axi_m00_axi_WSTRB,
        m_axi_m00_axi_WLAST,
        m_axi_m00_axi_WID,
        m_axi_m00_axi_WUSER,
        m_axi_m00_axi_ARVALID,
        m_axi_m00_axi_ARREADY,
        m_axi_m00_axi_ARADDR,
        m_axi_m00_axi_ARID,
        m_axi_m00_axi_ARLEN,
        m_axi_m00_axi_ARSIZE,
        m_axi_m00_axi_ARBURST,
        m_axi_m00_axi_ARLOCK,
        m_axi_m00_axi_ARCACHE,
        m_axi_m00_axi_ARPROT,
        m_axi_m00_axi_ARQOS,
        m_axi_m00_axi_ARREGION,
        m_axi_m00_axi_ARUSER,
        m_axi_m00_axi_RVALID,
        m_axi_m00_axi_RREADY,
        m_axi_m00_axi_RDATA,
        m_axi_m00_axi_RLAST,
        m_axi_m00_axi_RID,
        m_axi_m00_axi_RUSER,
        m_axi_m00_axi_RRESP,
        m_axi_m00_axi_BVALID,
        m_axi_m00_axi_BREADY,
        m_axi_m00_axi_BRESP,
        m_axi_m00_axi_BID,
        m_axi_m00_axi_BUSER,
        s_axi_control_AWVALID,
        s_axi_control_AWREADY,
        s_axi_control_AWADDR,
        s_axi_control_WVALID,
        s_axi_control_WREADY,
        s_axi_control_WDATA,
        s_axi_control_WSTRB,
        s_axi_control_ARVALID,
        s_axi_control_ARREADY,
        s_axi_control_ARADDR,
        s_axi_control_RVALID,
        s_axi_control_RREADY,
        s_axi_control_RDATA,
        s_axi_control_RRESP,
        s_axi_control_BVALID,
        s_axi_control_BREADY,
        s_axi_control_BRESP,
        interrupt
);

parameter    ap_ST_fsm_state1 = 18'd1;
parameter    ap_ST_fsm_state2 = 18'd2;
parameter    ap_ST_fsm_state3 = 18'd4;
parameter    ap_ST_fsm_state4 = 18'd8;
parameter    ap_ST_fsm_state5 = 18'd16;
parameter    ap_ST_fsm_state6 = 18'd32;
parameter    ap_ST_fsm_state7 = 18'd64;
parameter    ap_ST_fsm_state8 = 18'd128;
parameter    ap_ST_fsm_pp0_stage0 = 18'd256;
parameter    ap_ST_fsm_state12 = 18'd512;
parameter    ap_ST_fsm_pp1_stage0 = 18'd1024;
parameter    ap_ST_fsm_state15 = 18'd2048;
parameter    ap_ST_fsm_pp2_stage0 = 18'd4096;
parameter    ap_ST_fsm_state19 = 18'd8192;
parameter    ap_ST_fsm_state20 = 18'd16384;
parameter    ap_ST_fsm_state21 = 18'd32768;
parameter    ap_ST_fsm_state22 = 18'd65536;
parameter    ap_ST_fsm_state23 = 18'd131072;
parameter    C_S_AXI_CONTROL_DATA_WIDTH = 32;
parameter    C_S_AXI_CONTROL_ADDR_WIDTH = 6;
parameter    C_S_AXI_DATA_WIDTH = 32;
parameter    C_M_AXI_M00_AXI_ID_WIDTH = 1;
parameter    C_M_AXI_M00_AXI_ADDR_WIDTH = 64;
parameter    C_M_AXI_M00_AXI_DATA_WIDTH = 32;
parameter    C_M_AXI_M00_AXI_AWUSER_WIDTH = 1;
parameter    C_M_AXI_M00_AXI_ARUSER_WIDTH = 1;
parameter    C_M_AXI_M00_AXI_WUSER_WIDTH = 1;
parameter    C_M_AXI_M00_AXI_RUSER_WIDTH = 1;
parameter    C_M_AXI_M00_AXI_BUSER_WIDTH = 1;
parameter    C_M_AXI_M00_AXI_USER_VALUE = 0;
parameter    C_M_AXI_M00_AXI_PROT_VALUE = 0;
parameter    C_M_AXI_M00_AXI_CACHE_VALUE = 3;
parameter    C_M_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_CONTROL_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);
parameter C_M_AXI_M00_AXI_WSTRB_WIDTH = (32 / 8);
parameter C_M_AXI_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
output   m_axi_m00_axi_AWVALID;
input   m_axi_m00_axi_AWREADY;
output  [C_M_AXI_M00_AXI_ADDR_WIDTH - 1:0] m_axi_m00_axi_AWADDR;
output  [C_M_AXI_M00_AXI_ID_WIDTH - 1:0] m_axi_m00_axi_AWID;
output  [7:0] m_axi_m00_axi_AWLEN;
output  [2:0] m_axi_m00_axi_AWSIZE;
output  [1:0] m_axi_m00_axi_AWBURST;
output  [1:0] m_axi_m00_axi_AWLOCK;
output  [3:0] m_axi_m00_axi_AWCACHE;
output  [2:0] m_axi_m00_axi_AWPROT;
output  [3:0] m_axi_m00_axi_AWQOS;
output  [3:0] m_axi_m00_axi_AWREGION;
output  [C_M_AXI_M00_AXI_AWUSER_WIDTH - 1:0] m_axi_m00_axi_AWUSER;
output   m_axi_m00_axi_WVALID;
input   m_axi_m00_axi_WREADY;
output  [C_M_AXI_M00_AXI_DATA_WIDTH - 1:0] m_axi_m00_axi_WDATA;
output  [C_M_AXI_M00_AXI_WSTRB_WIDTH - 1:0] m_axi_m00_axi_WSTRB;
output   m_axi_m00_axi_WLAST;
output  [C_M_AXI_M00_AXI_ID_WIDTH - 1:0] m_axi_m00_axi_WID;
output  [C_M_AXI_M00_AXI_WUSER_WIDTH - 1:0] m_axi_m00_axi_WUSER;
output   m_axi_m00_axi_ARVALID;
input   m_axi_m00_axi_ARREADY;
output  [C_M_AXI_M00_AXI_ADDR_WIDTH - 1:0] m_axi_m00_axi_ARADDR;
output  [C_M_AXI_M00_AXI_ID_WIDTH - 1:0] m_axi_m00_axi_ARID;
output  [7:0] m_axi_m00_axi_ARLEN;
output  [2:0] m_axi_m00_axi_ARSIZE;
output  [1:0] m_axi_m00_axi_ARBURST;
output  [1:0] m_axi_m00_axi_ARLOCK;
output  [3:0] m_axi_m00_axi_ARCACHE;
output  [2:0] m_axi_m00_axi_ARPROT;
output  [3:0] m_axi_m00_axi_ARQOS;
output  [3:0] m_axi_m00_axi_ARREGION;
output  [C_M_AXI_M00_AXI_ARUSER_WIDTH - 1:0] m_axi_m00_axi_ARUSER;
input   m_axi_m00_axi_RVALID;
output   m_axi_m00_axi_RREADY;
input  [C_M_AXI_M00_AXI_DATA_WIDTH - 1:0] m_axi_m00_axi_RDATA;
input   m_axi_m00_axi_RLAST;
input  [C_M_AXI_M00_AXI_ID_WIDTH - 1:0] m_axi_m00_axi_RID;
input  [C_M_AXI_M00_AXI_RUSER_WIDTH - 1:0] m_axi_m00_axi_RUSER;
input  [1:0] m_axi_m00_axi_RRESP;
input   m_axi_m00_axi_BVALID;
output   m_axi_m00_axi_BREADY;
input  [1:0] m_axi_m00_axi_BRESP;
input  [C_M_AXI_M00_AXI_ID_WIDTH - 1:0] m_axi_m00_axi_BID;
input  [C_M_AXI_M00_AXI_BUSER_WIDTH - 1:0] m_axi_m00_axi_BUSER;
input   s_axi_control_AWVALID;
output   s_axi_control_AWREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_AWADDR;
input   s_axi_control_WVALID;
output   s_axi_control_WREADY;
input  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_WDATA;
input  [C_S_AXI_CONTROL_WSTRB_WIDTH - 1:0] s_axi_control_WSTRB;
input   s_axi_control_ARVALID;
output   s_axi_control_ARREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_ARADDR;
output   s_axi_control_RVALID;
input   s_axi_control_RREADY;
output  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_RDATA;
output  [1:0] s_axi_control_RRESP;
output   s_axi_control_BVALID;
input   s_axi_control_BREADY;
output  [1:0] s_axi_control_BRESP;
output   interrupt;

(* shreg_extract = "no" *) reg    ap_rst_reg_2;
(* shreg_extract = "no" *) reg    ap_rst_reg_1;
(* shreg_extract = "no" *) reg    ap_rst_n_inv;
wire    ap_start;
reg    ap_done;
reg    ap_idle;
(* fsm_encoding = "none" *) reg   [17:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_ready;
wire   [63:0] input_size;
wire   [63:0] input_addr;
wire   [63:0] output_size_addr;
wire   [63:0] output_addr;
reg    m00_axi_blk_n_AR;
wire    ap_CS_fsm_state2;
reg    m00_axi_blk_n_R;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln55_reg_291;
reg    m00_axi_blk_n_AW;
wire    ap_CS_fsm_state15;
reg    m00_axi_blk_n_W;
reg    ap_enable_reg_pp2_iter2;
wire    ap_block_pp2_stage0;
reg   [0:0] icmp_ln63_reg_324;
reg   [0:0] icmp_ln63_reg_324_pp2_iter1_reg;
reg    m00_axi_blk_n_B;
wire    ap_CS_fsm_state23;
reg    m00_axi_AWVALID;
wire    m00_axi_AWREADY;
reg    m00_axi_WVALID;
wire    m00_axi_WREADY;
reg    m00_axi_ARVALID;
wire    m00_axi_ARREADY;
wire    m00_axi_RVALID;
reg    m00_axi_RREADY;
wire   [31:0] m00_axi_RDATA;
wire    m00_axi_RLAST;
wire   [0:0] m00_axi_RID;
wire   [0:0] m00_axi_RUSER;
wire   [1:0] m00_axi_RRESP;
wire    m00_axi_BVALID;
reg    m00_axi_BREADY;
wire   [1:0] m00_axi_BRESP;
wire   [0:0] m00_axi_BID;
wire   [0:0] m00_axi_BUSER;
reg   [12:0] phi_ln55_reg_172;
reg   [12:0] phi_ln55_reg_172_pp0_iter1_reg;
wire    ap_block_state9_pp0_stage0_iter0;
reg    ap_block_state10_pp0_stage0_iter1;
wire    ap_block_state11_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
reg   [12:0] i_0_reg_184;
reg   [12:0] phi_ln63_reg_195;
reg   [63:0] m00_axi_addr_reg_284;
wire   [0:0] icmp_ln55_fu_226_p2;
reg   [0:0] icmp_ln55_reg_291_pp0_iter1_reg;
wire   [12:0] add_ln55_fu_232_p2;
reg   [12:0] add_ln55_reg_295;
reg    ap_enable_reg_pp0_iter0;
reg   [31:0] m00_axi_addr_read_reg_300;
wire   [0:0] icmp_ln58_fu_243_p2;
reg   [0:0] icmp_ln58_reg_305;
wire    ap_CS_fsm_pp1_stage0;
wire    ap_block_state13_pp1_stage0_iter0;
wire    ap_block_state14_pp1_stage0_iter1;
wire    ap_block_pp1_stage0_11001;
wire   [12:0] i_fu_249_p2;
reg    ap_enable_reg_pp1_iter0;
wire   [63:0] zext_ln59_fu_255_p1;
reg   [63:0] zext_ln59_reg_314;
wire   [0:0] icmp_ln63_fu_267_p2;
wire    ap_CS_fsm_pp2_stage0;
wire    ap_block_state16_pp2_stage0_iter0;
wire    ap_block_state17_pp2_stage0_iter1;
wire    ap_block_state18_pp2_stage0_iter2;
reg    ap_block_state18_io;
reg    ap_block_pp2_stage0_11001;
wire   [12:0] add_ln63_fu_273_p2;
reg    ap_enable_reg_pp2_iter0;
wire   [31:0] m00_axi_output_buffer_q0;
reg   [31:0] m00_axi_output_buffer_load_reg_338;
reg    ap_enable_reg_pp2_iter1;
wire    ap_CS_fsm_state8;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state9;
reg    ap_enable_reg_pp0_iter2;
wire    ap_CS_fsm_state12;
wire    ap_block_pp1_stage0_subdone;
reg    ap_condition_pp1_exit_iter0_state13;
reg    ap_enable_reg_pp1_iter1;
reg    ap_block_pp2_stage0_subdone;
reg    ap_condition_pp2_exit_iter0_state16;
reg   [12:0] m00_axi_input_buffer_address0;
reg    m00_axi_input_buffer_ce0;
reg    m00_axi_input_buffer_we0;
wire   [31:0] m00_axi_input_buffer_q0;
reg   [12:0] m00_axi_output_buffer_address0;
reg    m00_axi_output_buffer_ce0;
reg    m00_axi_output_buffer_we0;
wire   [31:0] m00_axi_output_buffer_d0;
reg   [12:0] ap_phi_mux_phi_ln55_phi_fu_176_p4;
wire   [63:0] zext_ln55_fu_238_p1;
wire    ap_block_pp1_stage0;
wire   [63:0] zext_ln63_fu_279_p1;
wire   [63:0] empty_fu_216_p1;
wire    ap_block_pp2_stage0_01001;
wire   [61:0] input_addr1_fu_206_p4;
reg   [17:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_idle_pp1;
wire    ap_enable_pp1;
reg    ap_idle_pp2;
wire    ap_enable_pp2;

// power-on initialization
initial begin
#0 ap_rst_reg_2 = 1'b1;
#0 ap_rst_reg_1 = 1'b1;
#0 ap_rst_n_inv = 1'b1;
#0 ap_CS_fsm = 18'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp2_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
#0 ap_enable_reg_pp2_iter0 = 1'b0;
#0 ap_enable_reg_pp2_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
end

cceip_kernel_control_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_CONTROL_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_CONTROL_DATA_WIDTH ))
cceip_kernel_control_s_axi_U(
    .AWVALID(s_axi_control_AWVALID),
    .AWREADY(s_axi_control_AWREADY),
    .AWADDR(s_axi_control_AWADDR),
    .WVALID(s_axi_control_WVALID),
    .WREADY(s_axi_control_WREADY),
    .WDATA(s_axi_control_WDATA),
    .WSTRB(s_axi_control_WSTRB),
    .ARVALID(s_axi_control_ARVALID),
    .ARREADY(s_axi_control_ARREADY),
    .ARADDR(s_axi_control_ARADDR),
    .RVALID(s_axi_control_RVALID),
    .RREADY(s_axi_control_RREADY),
    .RDATA(s_axi_control_RDATA),
    .RRESP(s_axi_control_RRESP),
    .BVALID(s_axi_control_BVALID),
    .BREADY(s_axi_control_BREADY),
    .BRESP(s_axi_control_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .input_size(input_size),
    .input_addr(input_addr),
    .output_size_addr(output_size_addr),
    .output_addr(output_addr)
);

cceip_kernel_m00_axi_m_axi #(
    .CONSERVATIVE( 0 ),
    .USER_DW( 32 ),
    .USER_AW( 64 ),
    .USER_MAXREQS( 5 ),
    .NUM_READ_OUTSTANDING( 16 ),
    .NUM_WRITE_OUTSTANDING( 16 ),
    .MAX_READ_BURST_LENGTH( 16 ),
    .MAX_WRITE_BURST_LENGTH( 16 ),
    .C_M_AXI_ID_WIDTH( C_M_AXI_M00_AXI_ID_WIDTH ),
    .C_M_AXI_ADDR_WIDTH( C_M_AXI_M00_AXI_ADDR_WIDTH ),
    .C_M_AXI_DATA_WIDTH( C_M_AXI_M00_AXI_DATA_WIDTH ),
    .C_M_AXI_AWUSER_WIDTH( C_M_AXI_M00_AXI_AWUSER_WIDTH ),
    .C_M_AXI_ARUSER_WIDTH( C_M_AXI_M00_AXI_ARUSER_WIDTH ),
    .C_M_AXI_WUSER_WIDTH( C_M_AXI_M00_AXI_WUSER_WIDTH ),
    .C_M_AXI_RUSER_WIDTH( C_M_AXI_M00_AXI_RUSER_WIDTH ),
    .C_M_AXI_BUSER_WIDTH( C_M_AXI_M00_AXI_BUSER_WIDTH ),
    .C_USER_VALUE( C_M_AXI_M00_AXI_USER_VALUE ),
    .C_PROT_VALUE( C_M_AXI_M00_AXI_PROT_VALUE ),
    .C_CACHE_VALUE( C_M_AXI_M00_AXI_CACHE_VALUE ))
cceip_kernel_m00_axi_m_axi_U(
    .AWVALID(m_axi_m00_axi_AWVALID),
    .AWREADY(m_axi_m00_axi_AWREADY),
    .AWADDR(m_axi_m00_axi_AWADDR),
    .AWID(m_axi_m00_axi_AWID),
    .AWLEN(m_axi_m00_axi_AWLEN),
    .AWSIZE(m_axi_m00_axi_AWSIZE),
    .AWBURST(m_axi_m00_axi_AWBURST),
    .AWLOCK(m_axi_m00_axi_AWLOCK),
    .AWCACHE(m_axi_m00_axi_AWCACHE),
    .AWPROT(m_axi_m00_axi_AWPROT),
    .AWQOS(m_axi_m00_axi_AWQOS),
    .AWREGION(m_axi_m00_axi_AWREGION),
    .AWUSER(m_axi_m00_axi_AWUSER),
    .WVALID(m_axi_m00_axi_WVALID),
    .WREADY(m_axi_m00_axi_WREADY),
    .WDATA(m_axi_m00_axi_WDATA),
    .WSTRB(m_axi_m00_axi_WSTRB),
    .WLAST(m_axi_m00_axi_WLAST),
    .WID(m_axi_m00_axi_WID),
    .WUSER(m_axi_m00_axi_WUSER),
    .ARVALID(m_axi_m00_axi_ARVALID),
    .ARREADY(m_axi_m00_axi_ARREADY),
    .ARADDR(m_axi_m00_axi_ARADDR),
    .ARID(m_axi_m00_axi_ARID),
    .ARLEN(m_axi_m00_axi_ARLEN),
    .ARSIZE(m_axi_m00_axi_ARSIZE),
    .ARBURST(m_axi_m00_axi_ARBURST),
    .ARLOCK(m_axi_m00_axi_ARLOCK),
    .ARCACHE(m_axi_m00_axi_ARCACHE),
    .ARPROT(m_axi_m00_axi_ARPROT),
    .ARQOS(m_axi_m00_axi_ARQOS),
    .ARREGION(m_axi_m00_axi_ARREGION),
    .ARUSER(m_axi_m00_axi_ARUSER),
    .RVALID(m_axi_m00_axi_RVALID),
    .RREADY(m_axi_m00_axi_RREADY),
    .RDATA(m_axi_m00_axi_RDATA),
    .RLAST(m_axi_m00_axi_RLAST),
    .RID(m_axi_m00_axi_RID),
    .RUSER(m_axi_m00_axi_RUSER),
    .RRESP(m_axi_m00_axi_RRESP),
    .BVALID(m_axi_m00_axi_BVALID),
    .BREADY(m_axi_m00_axi_BREADY),
    .BRESP(m_axi_m00_axi_BRESP),
    .BID(m_axi_m00_axi_BID),
    .BUSER(m_axi_m00_axi_BUSER),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .I_ARVALID(m00_axi_ARVALID),
    .I_ARREADY(m00_axi_ARREADY),
    .I_ARADDR(m00_axi_addr_reg_284),
    .I_ARID(1'd0),
    .I_ARLEN(32'd4096),
    .I_ARSIZE(3'd0),
    .I_ARLOCK(2'd0),
    .I_ARCACHE(4'd0),
    .I_ARQOS(4'd0),
    .I_ARPROT(3'd0),
    .I_ARUSER(1'd0),
    .I_ARBURST(2'd0),
    .I_ARREGION(4'd0),
    .I_RVALID(m00_axi_RVALID),
    .I_RREADY(m00_axi_RREADY),
    .I_RDATA(m00_axi_RDATA),
    .I_RID(m00_axi_RID),
    .I_RUSER(m00_axi_RUSER),
    .I_RRESP(m00_axi_RRESP),
    .I_RLAST(m00_axi_RLAST),
    .I_AWVALID(m00_axi_AWVALID),
    .I_AWREADY(m00_axi_AWREADY),
    .I_AWADDR(m00_axi_addr_reg_284),
    .I_AWID(1'd0),
    .I_AWLEN(32'd4096),
    .I_AWSIZE(3'd0),
    .I_AWLOCK(2'd0),
    .I_AWCACHE(4'd0),
    .I_AWQOS(4'd0),
    .I_AWPROT(3'd0),
    .I_AWUSER(1'd0),
    .I_AWBURST(2'd0),
    .I_AWREGION(4'd0),
    .I_WVALID(m00_axi_WVALID),
    .I_WREADY(m00_axi_WREADY),
    .I_WDATA(m00_axi_output_buffer_load_reg_338),
    .I_WID(1'd0),
    .I_WUSER(1'd0),
    .I_WLAST(1'b0),
    .I_WSTRB(4'd15),
    .I_BVALID(m00_axi_BVALID),
    .I_BREADY(m00_axi_BREADY),
    .I_BRESP(m00_axi_BRESP),
    .I_BID(m00_axi_BID),
    .I_BUSER(m00_axi_BUSER)
);

cceip_kernel_m00_axi_input_buffer #(
    .DataWidth( 32 ),
    .AddressRange( 8192 ),
    .AddressWidth( 13 ))
m00_axi_input_buffer_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(m00_axi_input_buffer_address0),
    .ce0(m00_axi_input_buffer_ce0),
    .we0(m00_axi_input_buffer_we0),
    .d0(m00_axi_addr_read_reg_300),
    .q0(m00_axi_input_buffer_q0)
);

cceip_kernel_m00_axi_input_buffer #(
    .DataWidth( 32 ),
    .AddressRange( 8192 ),
    .AddressWidth( 13 ))
m00_axi_output_buffer_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(m00_axi_output_buffer_address0),
    .ce0(m00_axi_output_buffer_ce0),
    .we0(m00_axi_output_buffer_we0),
    .d0(m00_axi_output_buffer_d0),
    .q0(m00_axi_output_buffer_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state8)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state9)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state9);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if ((1'b1 == ap_CS_fsm_state8)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp1_stage0_subdone) & (1'b1 == ap_condition_pp1_exit_iter0_state13) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state12)) begin
            ap_enable_reg_pp1_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp1_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp1_stage0_subdone) & (1'b1 == ap_condition_pp1_exit_iter0_state13))) begin
            ap_enable_reg_pp1_iter1 <= (1'b1 ^ ap_condition_pp1_exit_iter0_state13);
        end else if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter1 <= ap_enable_reg_pp1_iter0;
        end else if ((1'b1 == ap_CS_fsm_state12)) begin
            ap_enable_reg_pp1_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp2_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp2_stage0_subdone) & (1'b1 == ap_condition_pp2_exit_iter0_state16) & (1'b1 == ap_CS_fsm_pp2_stage0))) begin
            ap_enable_reg_pp2_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state15) & (m00_axi_AWREADY == 1'b1))) begin
            ap_enable_reg_pp2_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp2_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp2_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp2_exit_iter0_state16)) begin
                ap_enable_reg_pp2_iter1 <= (1'b1 ^ ap_condition_pp2_exit_iter0_state16);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp2_iter1 <= ap_enable_reg_pp2_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp2_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp2_stage0_subdone)) begin
            ap_enable_reg_pp2_iter2 <= ap_enable_reg_pp2_iter1;
        end else if (((1'b1 == ap_CS_fsm_state15) & (m00_axi_AWREADY == 1'b1))) begin
            ap_enable_reg_pp2_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    ap_rst_n_inv <= ap_rst_reg_1;
end

always @ (posedge ap_clk) begin
    ap_rst_reg_1 <= ap_rst_reg_2;
end

always @ (posedge ap_clk) begin
    ap_rst_reg_2 <= ~ap_rst_n;
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        i_0_reg_184 <= 13'd0;
    end else if (((1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (icmp_ln58_fu_243_p2 == 1'd0))) begin
        i_0_reg_184 <= i_fu_249_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln55_reg_291 == 1'd0))) begin
        phi_ln55_reg_172 <= add_ln55_reg_295;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        phi_ln55_reg_172 <= 13'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) & (m00_axi_AWREADY == 1'b1))) begin
        phi_ln63_reg_195 <= 13'd0;
    end else if (((1'b0 == ap_block_pp2_stage0_11001) & (ap_enable_reg_pp2_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0) & (icmp_ln63_fu_267_p2 == 1'd0))) begin
        phi_ln63_reg_195 <= add_ln63_fu_273_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln55_reg_295 <= add_ln55_fu_232_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln55_reg_291 <= icmp_ln55_fu_226_p2;
        icmp_ln55_reg_291_pp0_iter1_reg <= icmp_ln55_reg_291;
        phi_ln55_reg_172_pp0_iter1_reg <= phi_ln55_reg_172;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        icmp_ln58_reg_305 <= icmp_ln58_fu_243_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp2_stage0_11001) & (1'b1 == ap_CS_fsm_pp2_stage0))) begin
        icmp_ln63_reg_324 <= icmp_ln63_fu_267_p2;
        icmp_ln63_reg_324_pp2_iter1_reg <= icmp_ln63_reg_324;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln55_reg_291 == 1'd0))) begin
        m00_axi_addr_read_reg_300 <= m00_axi_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        m00_axi_addr_reg_284[61 : 0] <= empty_fu_216_p1[61 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp2_stage0_11001) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0) & (icmp_ln63_reg_324 == 1'd0))) begin
        m00_axi_output_buffer_load_reg_338 <= m00_axi_output_buffer_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0) & (icmp_ln58_fu_243_p2 == 1'd0))) begin
        zext_ln59_reg_314[12 : 0] <= zext_ln59_fu_255_p1[12 : 0];
    end
end

always @ (*) begin
    if ((icmp_ln55_fu_226_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state9 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state9 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln58_fu_243_p2 == 1'd1)) begin
        ap_condition_pp1_exit_iter0_state13 = 1'b1;
    end else begin
        ap_condition_pp1_exit_iter0_state13 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln63_fu_267_p2 == 1'd1)) begin
        ap_condition_pp2_exit_iter0_state16 = 1'b1;
    end else begin
        ap_condition_pp2_exit_iter0_state16 = 1'b0;
    end
end

always @ (*) begin
    if (((m00_axi_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state23))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter1 == 1'b0) & (ap_enable_reg_pp1_iter0 == 1'b0))) begin
        ap_idle_pp1 = 1'b1;
    end else begin
        ap_idle_pp1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp2_iter1 == 1'b0) & (ap_enable_reg_pp2_iter0 == 1'b0) & (ap_enable_reg_pp2_iter2 == 1'b0))) begin
        ap_idle_pp2 = 1'b1;
    end else begin
        ap_idle_pp2 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln55_reg_291 == 1'd0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_phi_ln55_phi_fu_176_p4 = add_ln55_reg_295;
    end else begin
        ap_phi_mux_phi_ln55_phi_fu_176_p4 = phi_ln55_reg_172;
    end
end

always @ (*) begin
    if (((m00_axi_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state23))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((m00_axi_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        m00_axi_ARVALID = 1'b1;
    end else begin
        m00_axi_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) & (m00_axi_AWREADY == 1'b1))) begin
        m00_axi_AWVALID = 1'b1;
    end else begin
        m00_axi_AWVALID = 1'b0;
    end
end

always @ (*) begin
    if (((m00_axi_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state23))) begin
        m00_axi_BREADY = 1'b1;
    end else begin
        m00_axi_BREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln55_reg_291 == 1'd0))) begin
        m00_axi_RREADY = 1'b1;
    end else begin
        m00_axi_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp2_stage0_11001) & (ap_enable_reg_pp2_iter2 == 1'b1) & (icmp_ln63_reg_324_pp2_iter1_reg == 1'd0))) begin
        m00_axi_WVALID = 1'b1;
    end else begin
        m00_axi_WVALID = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        m00_axi_blk_n_AR = m_axi_m00_axi_ARREADY;
    end else begin
        m00_axi_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        m00_axi_blk_n_AW = m_axi_m00_axi_AWREADY;
    end else begin
        m00_axi_blk_n_AW = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        m00_axi_blk_n_B = m_axi_m00_axi_BVALID;
    end else begin
        m00_axi_blk_n_B = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln55_reg_291 == 1'd0) & (1'b0 == ap_block_pp0_stage0))) begin
        m00_axi_blk_n_R = m_axi_m00_axi_RVALID;
    end else begin
        m00_axi_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp2_iter2 == 1'b1) & (1'b0 == ap_block_pp2_stage0) & (icmp_ln63_reg_324_pp2_iter1_reg == 1'd0))) begin
        m00_axi_blk_n_W = m_axi_m00_axi_WREADY;
    end else begin
        m00_axi_blk_n_W = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        m00_axi_input_buffer_address0 = zext_ln59_fu_255_p1;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        m00_axi_input_buffer_address0 = zext_ln55_fu_238_p1;
    end else begin
        m00_axi_input_buffer_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        m00_axi_input_buffer_ce0 = 1'b1;
    end else begin
        m00_axi_input_buffer_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln55_reg_291_pp0_iter1_reg == 1'd0))) begin
        m00_axi_input_buffer_we0 = 1'b1;
    end else begin
        m00_axi_input_buffer_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp2_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0) & (1'b0 == ap_block_pp2_stage0))) begin
        m00_axi_output_buffer_address0 = zext_ln63_fu_279_p1;
    end else if (((1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        m00_axi_output_buffer_address0 = zext_ln59_reg_314;
    end else begin
        m00_axi_output_buffer_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp2_stage0_11001) & (ap_enable_reg_pp2_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0)) | ((1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0)))) begin
        m00_axi_output_buffer_ce0 = 1'b1;
    end else begin
        m00_axi_output_buffer_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (icmp_ln58_reg_305 == 1'd0))) begin
        m00_axi_output_buffer_we0 = 1'b1;
    end else begin
        m00_axi_output_buffer_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((m00_axi_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln55_fu_226_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)) & ~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln55_fu_226_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_pp1_stage0;
        end
        ap_ST_fsm_pp1_stage0 : begin
            if (~((1'b0 == ap_block_pp1_stage0_subdone) & (icmp_ln58_fu_243_p2 == 1'd1) & (ap_enable_reg_pp1_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else if (((1'b0 == ap_block_pp1_stage0_subdone) & (icmp_ln58_fu_243_p2 == 1'd1) & (ap_enable_reg_pp1_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_state15 : begin
            if (((1'b1 == ap_CS_fsm_state15) & (m00_axi_AWREADY == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp2_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_pp2_stage0 : begin
            if ((~((1'b0 == ap_block_pp2_stage0_subdone) & (ap_enable_reg_pp2_iter1 == 1'b0) & (icmp_ln63_fu_267_p2 == 1'd1) & (ap_enable_reg_pp2_iter0 == 1'b1)) & ~((1'b0 == ap_block_pp2_stage0_subdone) & (ap_enable_reg_pp2_iter1 == 1'b0) & (ap_enable_reg_pp2_iter2 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp2_stage0;
            end else if ((((1'b0 == ap_block_pp2_stage0_subdone) & (ap_enable_reg_pp2_iter1 == 1'b0) & (icmp_ln63_fu_267_p2 == 1'd1) & (ap_enable_reg_pp2_iter0 == 1'b1)) | ((1'b0 == ap_block_pp2_stage0_subdone) & (ap_enable_reg_pp2_iter1 == 1'b0) & (ap_enable_reg_pp2_iter2 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp2_stage0;
            end
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            if (((m00_axi_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state23))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state23;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln55_fu_232_p2 = (ap_phi_mux_phi_ln55_phi_fu_176_p4 + 13'd1);

assign add_ln63_fu_273_p2 = (phi_ln63_reg_195 + 13'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd8];

assign ap_CS_fsm_pp1_stage0 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_pp2_stage0 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state23 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((m00_axi_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln55_reg_291 == 1'd0));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((m00_axi_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln55_reg_291 == 1'd0));
end

assign ap_block_pp1_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp2_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp2_stage0_01001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp2_stage0_11001 = ((1'b1 == ap_block_state18_io) & (ap_enable_reg_pp2_iter2 == 1'b1));
end

always @ (*) begin
    ap_block_pp2_stage0_subdone = ((1'b1 == ap_block_state18_io) & (ap_enable_reg_pp2_iter2 == 1'b1));
end

always @ (*) begin
    ap_block_state10_pp0_stage0_iter1 = ((m00_axi_RVALID == 1'b0) & (icmp_ln55_reg_291 == 1'd0));
end

assign ap_block_state11_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp1_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp1_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp2_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp2_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state18_io = ((m00_axi_WREADY == 1'b0) & (icmp_ln63_reg_324_pp2_iter1_reg == 1'd0));
end

assign ap_block_state18_pp2_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

assign ap_enable_pp2 = (ap_idle_pp2 ^ 1'b1);

assign empty_fu_216_p1 = input_addr1_fu_206_p4;

assign i_fu_249_p2 = (i_0_reg_184 + 13'd1);

assign icmp_ln55_fu_226_p2 = ((ap_phi_mux_phi_ln55_phi_fu_176_p4 == 13'd4096) ? 1'b1 : 1'b0);

assign icmp_ln58_fu_243_p2 = ((i_0_reg_184 == 13'd4096) ? 1'b1 : 1'b0);

assign icmp_ln63_fu_267_p2 = ((phi_ln63_reg_195 == 13'd4096) ? 1'b1 : 1'b0);

assign input_addr1_fu_206_p4 = {{input_addr[63:2]}};

assign m00_axi_output_buffer_d0 = (m00_axi_input_buffer_q0 + 32'd1);

assign zext_ln55_fu_238_p1 = phi_ln55_reg_172_pp0_iter1_reg;

assign zext_ln59_fu_255_p1 = i_0_reg_184;

assign zext_ln63_fu_279_p1 = phi_ln63_reg_195;

always @ (posedge ap_clk) begin
    m00_axi_addr_reg_284[63:62] <= 2'b00;
    zext_ln59_reg_314[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
end

endmodule //cceip_kernel