vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/xil_defaultlib
vlib riviera/axi_vip_v1_1_7

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap xil_defaultlib riviera/xil_defaultlib
vmap axi_vip_v1_1_7 riviera/axi_vip_v1_1_7

vlog -work xilinx_vip  -sv2k12 "+incdir+/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../ipstatic/hdl" "+incdir+/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
"/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../ipstatic/hdl" "+incdir+/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../ipstatic/hdl" "+incdir+/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../cceip_kernel_ex.srcs/sources_1/ip/slv_m00_axi_vip/sim/slv_m00_axi_vip_pkg.sv" \

vlog -work axi_vip_v1_1_7  -sv2k12 "+incdir+../../../ipstatic/hdl" "+incdir+/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../ipstatic/hdl" "+incdir+/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../cceip_kernel_ex.srcs/sources_1/ip/slv_m00_axi_vip/sim/slv_m00_axi_vip.sv" \

vlog -work xil_defaultlib \
"glbl.v"

