`timescale 1ns / 1ps

`include "axi_if.svh"

module PS_wrapper(
    inout wire [14:0]  DDR_addr,
    inout wire [2:0]   DDR_ba,
    inout wire         DDR_cas_n,
    inout wire         DDR_ck_n,
    inout wire         DDR_ck_p,
    inout wire         DDR_cke,
    inout wire         DDR_cs_n,
    inout wire [3:0]   DDR_dm,
    inout wire [31:0]  DDR_dq,
    inout wire [3:0]   DDR_dqs_n,
    inout wire [3:0]   DDR_dqs_p,
    inout wire         DDR_odt,
    inout wire         DDR_ras_n,
    inout wire         DDR_reset_n,
    inout wire         DDR_we_n,
    inout wire         FIXED_IO_ddr_vrn,
    inout wire         FIXED_IO_ddr_vrp,
    inout wire [53:0]  FIXED_IO_mio,
    inout wire         FIXED_IO_ps_clk,
    inout wire         FIXED_IO_ps_porb,
    inout wire         FIXED_IO_ps_srstb,
    axi4_lite_if.m     GP0,
    output logic       clock,
    output logic       aresetn,
    output logic       reset
    );
    
    PS PS   (
        .DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .M_AXI_0_araddr(GP0.araddr),
        .M_AXI_0_arprot(GP0.arprot),
        .M_AXI_0_arready(GP0.arready),
        .M_AXI_0_arvalid(GP0.arvalid),
        .M_AXI_0_awaddr(GP0.awaddr),
        .M_AXI_0_awprot(GP0.awprot),
        .M_AXI_0_awready(GP0.awready),
        .M_AXI_0_awvalid(GP0.awvalid),
        .M_AXI_0_bready(GP0.bready),
        .M_AXI_0_bresp(GP0.bresp),
        .M_AXI_0_bvalid(GP0.bvalid),
        .M_AXI_0_rdata(GP0.rdata),
        .M_AXI_0_rready(GP0.rready),
        .M_AXI_0_rresp(GP0.rresp),
        .M_AXI_0_rvalid(GP0.rvalid),
        .M_AXI_0_wdata(GP0.wdata),
        .M_AXI_0_wready(GP0.wready),
        .M_AXI_0_wstrb(GP0.wstrb),
        .M_AXI_0_wvalid(GP0.wvalid),
        .peripheral_aresetn(aresetn),
        .peripheral_clock(clock),
        .peripheral_reset(reset)
    );
    
    
endmodule
