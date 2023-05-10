//=====================================================================
//
// Designer   : XH
//
// Description:
//  The Module to realize a simple NICE core
//
// ====================================================================
`include "e203_defines.v"

`ifdef E203_HAS_NICE//{
module e203_subsys_nice_core (
    // System	
    input                         nice_clk             ,
    input                         nice_rst_n	          ,
    output                        nice_active	      ,
    output                        nice_mem_holdup	  ,
//    output                        nice_rsp_err_irq	  ,
    // Control cmd_req
    input                         nice_req_valid       ,
    output                        nice_req_ready       ,
    input  [`E203_XLEN-1:0]       nice_req_inst        ,
    input  [`E203_XLEN-1:0]       nice_req_rs1         ,
    input  [`E203_XLEN-1:0]       nice_req_rs2         ,
    // Control cmd_rsp	
    output                        nice_rsp_valid       ,
    input                         nice_rsp_ready       ,
    output [`E203_XLEN-1:0]       nice_rsp_rdat        ,
    output                        nice_rsp_err    	  ,
    // Memory lsu_req	
    output                        nice_icb_cmd_valid   ,
    input                         nice_icb_cmd_ready   ,
    output [`E203_ADDR_SIZE-1:0]  nice_icb_cmd_addr    ,
    output                        nice_icb_cmd_read    ,
    output [`E203_XLEN-1:0]       nice_icb_cmd_wdata   ,
//    output [`E203_XLEN_MW-1:0]     nice_icb_cmd_wmask   ,  // 
    output [1:0]                  nice_icb_cmd_size    ,
    // Memory lsu_rsp	
    input                         nice_icb_rsp_valid   ,
    output                        nice_icb_rsp_ready   ,
    input  [`E203_XLEN-1:0]       nice_icb_rsp_rdata   ,
    input                         nice_icb_rsp_err	

);

   localparam ROWBUF_DP = 4;
   localparam COUNTER_W = 3;
   localparam ROW_IDX_W = 3;
   localparam COL_IDX_W = 4;
   localparam PIPE_NUM = 3;

   wire [31:0] aregfile_r     [7:0];
   wire [31:0] aregfile_wdat  [7:0];
   wire [7:0] aregfile_we ;
   wire [31:0] pregfile_r     [7:0];
   wire [31:0] pregfile_wdat  [7:0];
   wire [7:0] pregfile_we;
   wire [31:0] bregfile_r     [7:0];
   wire [31:0] bregfile_wdat  [7:0];
   wire [7:0] bregfile_we;
   wire [31:0] resregfile_r   [7:0];
   wire [31:0] resregfile_wdat[7:0];
   wire [7:0] resregfile_we ;

// here we only use custom3: 
// CUSTOM0 = 7'h0b, R type
// CUSTOM1 = 7'h2b, R tpye
// CUSTOM2 = 7'h5b, R type
// CUSTOM3 = 7'h7b, R type

// RISC-V format  
//	.insn r  0x33,  0,  0, a0, a1, a2       0:  00c58533[ 	]+add [ 	]+a0,a1,a2
//	.insn i  0x13,  0, a0, a1, 13           4:  00d58513[ 	]+addi[ 	]+a0,a1,13
//	.insn i  0x67,  0, a0, 10(a1)           8:  00a58567[ 	]+jalr[ 	]+a0,10 (a1)
//	.insn s   0x3,  0, a0, 4(a1)            c:  00458503[ 	]+lb  [ 	]+a0,4(a1)
//	.insn sb 0x63,  0, a0, a1, target       10: feb508e3[ 	]+beq [ 	]+a0,a1,0 target
//	.insn sb 0x23,  0, a0, 4(a1)            14: 00a58223[ 	]+sb  [ 	]+a0,4(a1)
//	.insn u  0x37, a0, 0xfff                18: 00fff537[ 	]+lui [ 	]+a0,0xfff
//	.insn uj 0x6f, a0, target               1c: fe5ff56f[ 	]+jal [ 	]+a0,0 target
//	.insn ci 0x1, 0x0, a0, 4                20: 0511    [ 	]+addi[ 	]+a0,a0,4
//	.insn cr 0x2, 0x8, a0, a1               22: 852e    [ 	]+mv  [ 	]+a0,a1
//	.insn ciw 0x0, 0x0, a1, 1               24: 002c    [ 	]+addi[ 	]+a1,sp,8
//	.insn cb 0x1, 0x6, a1, target           26: dde9    [ 	]+beqz[ 	]+a1,0 target
//	.insn cj 0x1, 0x5, target               28: bfe1    [ 	]+j   [ 	]+0 targe

   ////////////////////////////////////////////////////////////
   // decode
   ////////////////////////////////////////////////////////////
   wire [6:0] opcode      = {7{nice_req_valid}} & nice_req_inst[6:0];
   wire [2:0] rv32_func3  = {3{nice_req_valid}} & nice_req_inst[14:12];
   wire [6:0] rv32_func7  = {7{nice_req_valid}} & nice_req_inst[31:25];

//   wire opcode_custom0 = (opcode == 7'b0001011); 
//   wire opcode_custom1 = (opcode == 7'b0101011); 
//   wire opcode_custom2 = (opcode == 7'b1011011); 
   wire opcode_custom3 = (opcode == 7'b1111011); 

   wire rv32_func3_000 = (rv32_func3 == 3'b000); 
   wire rv32_func3_001 = (rv32_func3 == 3'b001); 
   wire rv32_func3_010 = (rv32_func3 == 3'b010); 
   wire rv32_func3_011 = (rv32_func3 == 3'b011); 
   wire rv32_func3_100 = (rv32_func3 == 3'b100); 
   wire rv32_func3_101 = (rv32_func3 == 3'b101); 
   wire rv32_func3_110 = (rv32_func3 == 3'b110); 
   wire rv32_func3_111 = (rv32_func3 == 3'b111); 

   wire rv32_func7_0000000 = (rv32_func7 == 7'b0000000); 
   wire rv32_func7_0000001 = (rv32_func7 == 7'b0000001); 
   wire rv32_func7_0000010 = (rv32_func7 == 7'b0000010); 
   wire rv32_func7_0000011 = (rv32_func7 == 7'b0000011); 
   wire rv32_func7_0000100 = (rv32_func7 == 7'b0000100); 
   wire rv32_func7_0000101 = (rv32_func7 == 7'b0000101); 
   wire rv32_func7_0000110 = (rv32_func7 == 7'b0000110); 
   wire rv32_func7_0000111 = (rv32_func7 == 7'b0000111); 
   wire rv32_func7_0001000 = (rv32_func7 == 7'b0001000); 
   ////////////////////////////////////////////////////////////
   // custom3:
   // Supported format: only R type here
   // Supported instr:
   //  1. custom3 labuf: load data(in memory) to row_buf
   //     labuf (a1)
   //     .insn r opcode, func3, func7, rd, rs1, rs2    
   //  2. custom3 sbuf: store data(in row_buf) to memory
   //     sbuf (a1)
   //     .insn r opcode, func3, func7, rd, rs1, rs2    
   //  3. custom3 acc rowsum: load data from memory(@a1), accumulate row datas and write back 
   //     rowsum rd, a1, x0
   //     .insn r opcode, func3, func7, rd, rs1, rs2    
   ////////////////////////////////////////////////////////////
   wire custom3_labuf_div     = opcode_custom3 & rv32_func3_010 & rv32_func7_0000001;
   wire custom3_labuf_inv     = opcode_custom3 & rv32_func3_010 & rv32_func7_0001000;
   wire custom3_lbbuf         = opcode_custom3 & rv32_func3_010 & rv32_func7_0000010;
   wire custom3_lpbuf         = opcode_custom3 & rv32_func3_010 & rv32_func7_0000011;   
   wire custom3_sbuf          = opcode_custom3 & rv32_func3_010 & rv32_func7_0000100; 
   wire custom3_stawork       = opcode_custom3 & rv32_func3_000 & rv32_func7_0000101; 
   wire custom3_labuf         = custom3_labuf_inv || custom3_labuf_div;
   ////////////////////////////////////////////////////////////
   //  multi-cyc op 
   ////////////////////////////////////////////////////////////
   wire custom_multi_cyc_op = custom3_labuf | custom3_lbbuf | custom3_lpbuf | custom3_sbuf | custom3_stawork;
   // need access memory
   wire custom_mem_op = custom3_labuf | custom3_lbbuf | custom3_lpbuf | custom3_sbuf;
 
   ////////////////////////////////////////////////////////////
   // NICE FSM 
   ////////////////////////////////////////////////////////////
   parameter NICE_FSM_WIDTH = 3; 
   parameter IDLE     = 3'd0; 
   parameter LABUF    = 3'd1;
   parameter LBBUF    = 3'd2;
   parameter LPBUF    = 3'd3;
   parameter SBUF     = 3'd4; 
   parameter WORK     = 3'd5; 

   wire [NICE_FSM_WIDTH-1:0] state_r; 
   wire [NICE_FSM_WIDTH-1:0] nxt_state; 
   wire [NICE_FSM_WIDTH-1:0] state_idle_nxt; 
   wire [NICE_FSM_WIDTH-1:0] state_labuf_nxt;
   wire [NICE_FSM_WIDTH-1:0] state_lbbuf_nxt;
   wire [NICE_FSM_WIDTH-1:0] state_lpbuf_nxt;
   wire [NICE_FSM_WIDTH-1:0] state_sbuf_nxt; 
   wire [NICE_FSM_WIDTH-1:0] state_work_nxt; 

   wire nice_req_hsked;
   wire nice_rsp_hsked;
   wire nice_icb_rsp_hsked;
   wire illgel_instr = ~(custom_multi_cyc_op);

   wire state_idle_exit_ena; 
   wire state_labuf_exit_ena; 
   wire state_lbbuf_exit_ena; 
   wire state_lpbuf_exit_ena; 
   wire state_sbuf_exit_ena; 
   wire state_work_exit_ena; 
   wire state_ena; 

   wire state_is_idle     = (state_r == IDLE); 
   wire state_is_labuf    = (state_r == LABUF);
   wire state_is_lbbuf    = (state_r == LBBUF);
   wire state_is_lpbuf    = (state_r == LPBUF);
   wire state_is_sbuf     = (state_r == SBUF); 
   wire state_is_work     = (state_r == WORK); 


  reg work_minv_mdiv = 1'b0;
  always@(posedge custom_mem_op)begin
    work_minv_mdiv <= (custom_mem_op == custom3_labuf_inv) ? 1'b1 : 1'b0;
  end

   assign state_idle_exit_ena = state_is_idle & nice_req_hsked & ~illgel_instr; 
   assign state_idle_nxt = custom3_labuf    ? LABUF   : 
                              custom3_lbbuf    ? LBBUF   :
                                 custom3_lpbuf    ? LPBUF   : 
                                    custom3_sbuf     ? SBUF    :
                                      custom3_stawork   ? WORK    :
                                        IDLE;

   wire labuf_icb_rsp_hsked_last; 
   assign state_labuf_exit_ena = state_is_labuf & labuf_icb_rsp_hsked_last; 
   assign state_labuf_nxt = IDLE;

   wire lbbuf_icb_rsp_hsked_last; 
   assign state_lbbuf_exit_ena = state_is_lbbuf & lbbuf_icb_rsp_hsked_last; 
   assign state_lbbuf_nxt = IDLE;

   wire lpbuf_icb_rsp_hsked_last; 
   assign state_lpbuf_exit_ena = state_is_lpbuf & lpbuf_icb_rsp_hsked_last; 
   assign state_lpbuf_nxt = IDLE;

   wire sbuf_icb_rsp_hsked_last; 
   assign state_sbuf_exit_ena = state_is_sbuf & sbuf_icb_rsp_hsked_last; 
   assign state_sbuf_nxt = IDLE;

   wire work_done; 
   assign state_work_exit_ena = state_is_work & work_done; 
   assign state_work_nxt = IDLE;

   assign nxt_state =   ({NICE_FSM_WIDTH{state_idle_exit_ena   }} & state_idle_nxt   )
                      | ({NICE_FSM_WIDTH{state_labuf_exit_ena  }} & state_labuf_nxt  )
                      | ({NICE_FSM_WIDTH{state_lbbuf_exit_ena  }} & state_lbbuf_nxt  )
                      | ({NICE_FSM_WIDTH{state_lpbuf_exit_ena  }} & state_lpbuf_nxt  ) 
                      | ({NICE_FSM_WIDTH{state_sbuf_exit_ena   }} & state_sbuf_nxt   ) 
                      | ({NICE_FSM_WIDTH{state_work_exit_ena   }} & state_work_nxt   ) 
                      ;

   assign state_ena =   state_idle_exit_ena | state_labuf_exit_ena | state_lbbuf_exit_ena | state_lpbuf_exit_ena 
                      | state_sbuf_exit_ena | state_work_exit_ena;
//状态寄存器, 输出当前状态, 写使能位 状态退出使能;
   sirv_gnrl_dfflr #(NICE_FSM_WIDTH)   state_dfflr (state_ena, nxt_state, state_r, nice_clk, nice_rst_n);

   ////////////////////////////////////////////////////////////
   // 指令执行:
   ////////////////////////////////////////////////////////////
   wire [COUNTER_W-1:0]  clonum = 3'b111;  // fixed clonum 8 cycle load data
   //wire [COL_IDX_W-1:0]  rownum;

   //////////// 1. custom3_labuf
   wire [COUNTER_W-1:0] labuf_cnt_r; 
   wire [COUNTER_W-1:0] labuf_cnt_nxt; 
   wire labuf_cnt_clr;
   wire labuf_cnt_incr;
   wire labuf_cnt_ena;
   wire labuf_cnt_last;
   wire labuf_icb_rsp_hsked;
   wire nice_rsp_valid_labuf;
   wire nice_icb_cmd_valid_labuf;

   assign labuf_icb_rsp_hsked = state_is_labuf & nice_icb_rsp_hsked;
   assign labuf_icb_rsp_hsked_last = labuf_icb_rsp_hsked & labuf_cnt_last;
   assign labuf_cnt_last = (labuf_cnt_r == clonum);// 计数器最大计数的值为labuf所取32位数据的次数；
   assign labuf_cnt_clr = custom3_labuf & nice_req_hsked;
   assign labuf_cnt_incr = labuf_icb_rsp_hsked & ~labuf_cnt_last;
   assign labuf_cnt_ena = labuf_cnt_clr | labuf_cnt_incr;
   assign labuf_cnt_nxt =   ({COUNTER_W{labuf_cnt_clr }} & {COUNTER_W{1'b0}})
                         | ({COUNTER_W{labuf_cnt_incr}} & (labuf_cnt_r + 1'b1) )
                         ;

   sirv_gnrl_dfflr #(COUNTER_W)   labuf_cnt_dfflr (labuf_cnt_ena, labuf_cnt_nxt, labuf_cnt_r, nice_clk, nice_rst_n);

   // nice_rsp_valid wait for nice_icb_rsp_valid in labuf
   assign nice_rsp_valid_labuf = state_is_labuf & labuf_cnt_last & nice_icb_rsp_valid;

   // nice_icb_cmd_valid sets when labuf_cnt_r is not full in labuf
   assign nice_icb_cmd_valid_labuf = (state_is_labuf & (labuf_cnt_r < clonum));

    //////////// 2. custom3_lbbuf
   wire [COUNTER_W-1:0] lbbuf_cnt_r; 
   wire [COUNTER_W-1:0] lbbuf_cnt_nxt; 
   wire lbbuf_cnt_clr;
   wire lbbuf_cnt_incr;
   wire lbbuf_cnt_ena;
   wire lbbuf_cnt_last;
   wire lbbuf_icb_rsp_hsked;
   wire nice_rsp_valid_lbbuf;
   wire nice_icb_cmd_valid_lbbuf;

   assign lbbuf_icb_rsp_hsked = state_is_lbbuf & nice_icb_rsp_hsked;
   assign lbbuf_icb_rsp_hsked_last = lbbuf_icb_rsp_hsked & lbbuf_cnt_last;
   assign lbbuf_cnt_last = (lbbuf_cnt_r == clonum);// 计数器最大计数的值为lbbuf所取32位数据的次数；
   assign lbbuf_cnt_clr = custom3_lbbuf & nice_req_hsked;
   assign lbbuf_cnt_incr = lbbuf_icb_rsp_hsked & ~lbbuf_cnt_last;
   assign lbbuf_cnt_ena = lbbuf_cnt_clr | lbbuf_cnt_incr;
   assign lbbuf_cnt_nxt =   ({COUNTER_W{lbbuf_cnt_clr }} & {COUNTER_W{1'b0}})
                         | ({COUNTER_W{lbbuf_cnt_incr}} & (lbbuf_cnt_r + 1'b1) )
                         ;

   sirv_gnrl_dfflr #(COUNTER_W)   lbbuf_cnt_dfflr (lbbuf_cnt_ena, lbbuf_cnt_nxt, lbbuf_cnt_r, nice_clk, nice_rst_n);

   // nice_rsp_valid wait for nice_icb_rsp_valid in lbbuf
   assign nice_rsp_valid_lbbuf = state_is_lbbuf & lbbuf_cnt_last & nice_icb_rsp_valid;

   // nice_icb_cmd_valid sets when lbbuf_cnt_r is not full in lbbuf
   assign nice_icb_cmd_valid_lbbuf = (state_is_lbbuf & (lbbuf_cnt_r < clonum));

    //////////// 3. custom3_lpbuf
   wire [COUNTER_W-1:0] lpbuf_cnt_r; 
   wire [COUNTER_W-1:0] lpbuf_cnt_nxt; 
   wire lpbuf_cnt_clr;
   wire lpbuf_cnt_incr;
   wire lpbuf_cnt_ena;
   wire lpbuf_cnt_last;
   wire lpbuf_icb_rsp_hsked;
   wire nice_rsp_valid_lpbuf;
   wire nice_icb_cmd_valid_lpbuf;

   assign lpbuf_icb_rsp_hsked = state_is_lpbuf & nice_icb_rsp_hsked;
   assign lpbuf_icb_rsp_hsked_last = lpbuf_icb_rsp_hsked & lpbuf_cnt_last;
   assign lpbuf_cnt_last = (lpbuf_cnt_r == clonum);// 计数器最大计数的值为lpbuf所取32位数据的次数；
   assign lpbuf_cnt_clr = custom3_lpbuf & nice_req_hsked;
   assign lpbuf_cnt_incr = lpbuf_icb_rsp_hsked & ~lpbuf_cnt_last;
   assign lpbuf_cnt_ena = lpbuf_cnt_clr | lpbuf_cnt_incr;
   assign lpbuf_cnt_nxt =   ({COUNTER_W{lpbuf_cnt_clr }} & {COUNTER_W{1'b0}})
                         | ({COUNTER_W{lpbuf_cnt_incr}} & (lpbuf_cnt_r + 1'b1) )
                         ;

   sirv_gnrl_dfflr #(COUNTER_W)   lpbuf_cnt_dfflr (lpbuf_cnt_ena, lpbuf_cnt_nxt, lpbuf_cnt_r, nice_clk, nice_rst_n);

   // nice_rsp_valid wait for nice_icb_rsp_valid in lpbuf
   assign nice_rsp_valid_lpbuf = state_is_lpbuf & lpbuf_cnt_last & nice_icb_rsp_valid;

   // nice_icb_cmd_valid sets when lpbuf_cnt_r is not full in lpbuf
   assign nice_icb_cmd_valid_lpbuf = (state_is_lpbuf & (lpbuf_cnt_r < clonum));
   //////////// 4. custom3_sbuf
   wire [COUNTER_W-1:0] sbuf_cnt_r; 
   wire [COUNTER_W-1:0] sbuf_cnt_nxt; 
   wire sbuf_cnt_clr;
   wire sbuf_cnt_incr;
   wire sbuf_cnt_ena;
   wire sbuf_cnt_last;
   wire sbuf_icb_cmd_hsked;
   wire sbuf_icb_rsp_hsked;
   wire nice_rsp_valid_sbuf;
   wire nice_icb_cmd_valid_sbuf;
   wire nice_icb_cmd_hsked;

   assign sbuf_icb_cmd_hsked = (state_is_sbuf | (state_is_idle & custom3_sbuf)) & nice_icb_cmd_hsked;
   assign sbuf_icb_rsp_hsked = state_is_sbuf & nice_icb_rsp_hsked;
   assign sbuf_icb_rsp_hsked_last = sbuf_icb_rsp_hsked & sbuf_cnt_last;
   assign sbuf_cnt_last = (sbuf_cnt_r == clonum);
   //assign sbuf_cnt_clr = custom3_sbuf & nice_req_hsked;
   assign sbuf_cnt_clr = sbuf_icb_rsp_hsked_last;
   assign sbuf_cnt_incr = sbuf_icb_rsp_hsked & ~sbuf_cnt_last;
   assign sbuf_cnt_ena = sbuf_cnt_clr | sbuf_cnt_incr;
   assign sbuf_cnt_nxt =   ({COUNTER_W{sbuf_cnt_clr }} & {COUNTER_W{1'b0}})
                         | ({COUNTER_W{sbuf_cnt_incr}} & (sbuf_cnt_r + 1'b1) )
                         ;

   sirv_gnrl_dfflr #(COUNTER_W)   sbuf_cnt_dfflr (sbuf_cnt_ena, sbuf_cnt_nxt, sbuf_cnt_r, nice_clk, nice_rst_n);

   // nice_rsp_valid wait for nice_icb_rsp_valid in SBUF
   assign nice_rsp_valid_sbuf = state_is_sbuf & sbuf_cnt_last & nice_icb_rsp_valid;

   wire [COUNTER_W-1:0] sbuf_cmd_cnt_r; 
   wire [COUNTER_W-1:0] sbuf_cmd_cnt_nxt; 
   wire sbuf_cmd_cnt_clr;
   wire sbuf_cmd_cnt_incr;
   wire sbuf_cmd_cnt_ena;
   wire sbuf_cmd_cnt_last;

   assign sbuf_cmd_cnt_last = (sbuf_cmd_cnt_r == clonum);
   assign sbuf_cmd_cnt_clr = sbuf_icb_rsp_hsked_last;
   assign sbuf_cmd_cnt_incr = sbuf_icb_cmd_hsked & ~sbuf_cmd_cnt_last;
   assign sbuf_cmd_cnt_ena = sbuf_cmd_cnt_clr | sbuf_cmd_cnt_incr;
   assign sbuf_cmd_cnt_nxt =   ({COUNTER_W{sbuf_cmd_cnt_clr }} & {COUNTER_W{1'b0}})
                             | ({COUNTER_W{sbuf_cmd_cnt_incr}} & (sbuf_cmd_cnt_r + 1'b1) )
                             ;
   sirv_gnrl_dfflr #(COUNTER_W)   sbuf_cmd_cnt_dfflr (sbuf_cmd_cnt_ena, sbuf_cmd_cnt_nxt, sbuf_cmd_cnt_r, nice_clk, nice_rst_n);

   // nice_icb_cmd_valid sets when sbuf_cmd_cnt_r is not full in SBUF
   assign nice_icb_cmd_valid_sbuf = (state_is_sbuf & (sbuf_cmd_cnt_r <= clonum) & (sbuf_cnt_r != clonum));


   //////////// 5. custom3_work
   // regfile counter 
   wire [COUNTER_W-1:0] regfile_cnt_r; 
   wire [COUNTER_W-1:0] regfile_cnt_nxt; 
   wire regfile_cnt_clr;
   wire regfile_cnt_incr;
   wire regfile_cnt_ena;
   wire regfile_cnt_last;
   wire regfile_icb_rsp_hsked;
   wire regfile_rsp_hsked;
   wire nice_rsp_valid_work;

   assign regfile_rsp_hsked = nice_rsp_valid_work & nice_rsp_ready;
   assign regfile_icb_rsp_hsked = state_is_work & nice_icb_rsp_hsked;
   assign regfile_cnt_last = (regfile_cnt_r == clonum);
   assign regfile_cnt_clr = regfile_icb_rsp_hsked & regfile_cnt_last;
   assign regfile_cnt_incr = regfile_icb_rsp_hsked & ~regfile_cnt_last;
   assign regfile_cnt_ena = regfile_cnt_clr | regfile_cnt_incr;
   assign regfile_cnt_nxt =   ({COUNTER_W{regfile_cnt_clr }} & {COUNTER_W{1'b0}})
                           | ({COUNTER_W{regfile_cnt_incr}} & (regfile_cnt_r + 1'b1))
                           ;
   //assign nice_icb_cmd_valid_regfile =   (state_is_idle & custom3_work)
   //                                  | (state_is_work & (regfile_cnt_r <= clonum) & (clonum != 0))
   //                                  ;

   sirv_gnrl_dfflr #(COUNTER_W)   regfile_cnt_dfflr (regfile_cnt_ena, regfile_cnt_nxt, regfile_cnt_r, nice_clk, nice_rst_n);

   // recieve data buffer, to make sure work ops come from registers 
   wire rcv_data_buf_ena;//ddf寄存器的写使能
   wire rcv_data_buf_set;
   wire rcv_data_buf_clr;
   wire rcv_data_buf_valid;
   wire [`E203_XLEN-1:0] rcv_data_buf; 
   wire [COUNTER_W-1:0] rcv_data_buf_idx; //接收计算后数据 用idx标识
   wire [COUNTER_W-1:0] rcv_data_buf_idx_nxt; 

   assign rcv_data_buf_set = regfile_icb_rsp_hsked;
   assign rcv_data_buf_clr = regfile_rsp_hsked;
   assign rcv_data_buf_ena = rcv_data_buf_clr | rcv_data_buf_set;
   assign rcv_data_buf_idx_nxt =   ({COUNTER_W{rcv_data_buf_clr}} & {COUNTER_W{1'b0}})
                                 | ({COUNTER_W{rcv_data_buf_set}} & regfile_cnt_r        );

   sirv_gnrl_dfflr #(1)   rcv_data_buf_valid_dfflr (1'b1, rcv_data_buf_ena, rcv_data_buf_valid, nice_clk, nice_rst_n);
   sirv_gnrl_dfflr #(`E203_XLEN)   rcv_data_buf_dfflr (rcv_data_buf_ena, nice_icb_rsp_rdata, rcv_data_buf, nice_clk, nice_rst_n);
   sirv_gnrl_dfflr #(COUNTER_W)   rowbuf_cnt_d_dfflr (rcv_data_buf_ena, rcv_data_buf_idx_nxt, rcv_data_buf_idx, nice_clk, nice_rst_n);


//----------------------------------
   
   wire [31:0] divout; //此处直接输出32bit 
   wire load_a,load_b,load_p,minvdiv_en,kong;//kong;

   wire[31:0] work_in_mux;
   wire complete ;
   wire minvdiv_ready;

   wire[15:0] work_cnt_r;
   wire[2:0]  work_store_cnt;       //用于计数计算输出结果的idx
   wire       work_store_clr;
   wire[2:0]  work_store_cnt_nxt;
   wire       work_store_incr;
   wire[15:0] work_cnt_nxt;
   wire[1:0]  work_cnt_incount;
   wire work_cnt_incr;
   wire work_cnt_ena ;
   wire work_cnt_clr;
   wire[15:0] work_cnt_last = 6'b100;
   wire minv_mdiv_rdy;
  //work下自动自增 

   reg [4:0] current_workstate;   //start状态下的工作状态机 用于向MINV_MDIV装载各个数据 以及保存结果  
   reg [4:0] next_workstate;
   parameter WORK_IDLE       = 5'b00000;
   parameter WORK_LOAD_A     = 5'b00001;
   parameter WORK_LOAD_P     = 5'b00010;
   parameter WORK_LOAD_B     = 5'b00011;
   parameter WORK_START      = 5'b00100;
   parameter WORK_STORE_RES  = 5'b00101;

   assign work_store_clr     = current_workstate == WORK_IDLE;
   assign work_store_incr    = state_is_work & (current_workstate == WORK_STORE_RES) & minv_mdiv_rdy & complete;
   assign work_store_cnt_nxt = ({3{work_store_clr}} & {3{1'b0}})
                             | ({3{work_store_incr}} & (work_store_cnt + 1'b1));
   sirv_gnrl_dfflr #(5)   work_state_dff (state_is_work, next_workstate, current_workstate, nice_clk, nice_rst_n);
   sirv_gnrl_dfflr #(3)   work_storeres_dff (work_store_incr, work_store_cnt_nxt, work_store_cnt, nice_clk, nice_rst_n);

  always @ (*)
  begin 
   if(!nice_rst_n) begin 
    next_workstate <= WORK_IDLE;
   end
   else begin 
   case(current_workstate)
    WORK_IDLE: begin 
    if(state_is_work & work_cnt_r == 16'b0)
      next_workstate <= WORK_LOAD_A;
    else
    next_workstate <= WORK_IDLE;
    end
    WORK_LOAD_A : begin 
      if(state_is_work & work_cnt_r == 16'd7)
        next_workstate <= WORK_LOAD_P;
      else
        next_workstate <= WORK_LOAD_A;
    end
    WORK_LOAD_P : begin 
    if(state_is_work & work_cnt_r == 16'd15 & !work_minv_mdiv)
      next_workstate <= WORK_LOAD_B;
    else if(state_is_work & work_cnt_r == 16'd15 & work_minv_mdiv)
      next_workstate <= WORK_START;
    else
      next_workstate <= WORK_LOAD_P;
    end
    WORK_LOAD_B : begin 
    if(state_is_work & work_cnt_r == 16'd23)
      next_workstate <= WORK_START;
    else
      next_workstate <= WORK_LOAD_B;
    end
    WORK_START : begin 
    if(minv_mdiv_rdy)
      next_workstate <= WORK_STORE_RES;
    else
      next_workstate <= WORK_START;
    end
    WORK_STORE_RES : begin 
      if(state_is_work & work_store_cnt == 3'd7)
        next_workstate <= WORK_IDLE;
      else
        next_workstate <= WORK_STORE_RES;
      end
    default : begin 
      next_workstate <= WORK_IDLE;
    end 
   endcase
   end 
  end


   assign work_cnt_clr = current_workstate == WORK_IDLE;
   assign work_cnt_incr = current_workstate != WORK_IDLE;
   assign work_cnt_ena     = state_is_work & (work_cnt_incr);
   assign work_cnt_nxt     = ({16{work_cnt_clr}} & {16{1'b0}})
                           | ({16{work_cnt_incr}} & (work_cnt_r + 1'b1));

   sirv_gnrl_dfflr #(16)   work_cnt_dfflr (work_cnt_ena, work_cnt_nxt, work_cnt_r, nice_clk, nice_rst_n);

   assign load_a        = current_workstate == WORK_LOAD_A;
   assign load_p        = current_workstate == WORK_LOAD_P;
   assign load_b        = current_workstate == WORK_LOAD_B;
   assign minvdiv_en    = work_cnt_r == 16'd24;
   assign minvdiv_ready = current_workstate == WORK_STORE_RES;
   //assign kong        = (state_is_work & (work_cnt_r == 6'd));
  
   assign work_in_mux = ({32{load_a}} & aregfile_r[work_cnt_r[2:0]]) //取counter的低三位 做索引 生成输入数据
                      | ({32{load_b}} & bregfile_r[work_cnt_r[2:0]])
                      | ({32{load_p}} & pregfile_r[work_cnt_r[2:0]]);

   MINV_MDIV  MINV_MDIV(
  .clk          (nice_clk),
  .rst          (!nice_rst_n),
  .loada        (load_a),
  .loadb        (load_b),
  .loadp        (load_p),
  .minv_mdiv_rdy(minv_mdiv_rdy),             //output
  .datain       (work_in_mux),
  .minv_mdiv    (work_minv_mdiv),
  .minv_mdiv_en (minvdiv_en),
  .out_ready    (minvdiv_ready),
  .out_valid    (complete),
  .result_out   (divout)
  );

   //sirv_gnrl_dfflr #(`E203_XLEN)   rowsum_acc_dfflr (rowsum_acc_ena, rowsum_acc_nxt, rowsum_acc_r, nice_clk, nice_rst_n);
 // sirv_gnrl_dfflr #(128)   work_div_dfflr (complete, aesout , out, nice_clk, nice_rst_n);

   assign work_done = state_is_work & work_store_cnt == 3'd7; //结果存储完成后 即work_done

   // 当nicecore完成计算，发出work_done rsp通道开始握手； 
   assign nice_rsp_valid_work = state_is_work & work_done;

//----------------------------------

   //////////// key regfile

   //  1. labuf & ldbuf 从内存中读取数据 数据的长度取决于 clonum
   //  2. sbuf 将加解密好了的数据从 regfile 中取出来 存到内存中去； 
   //  3. work 状态就是调用aes核，进行加解密；
      //data regfile 除数a的寄存器堆

   // labuf 状态写入寄存器堆
   wire [COUNTER_W-1:0] labuf_idx = labuf_cnt_r; // labuf计数器的输出次数
   wire labuf_wr = labuf_icb_rsp_hsked; //当存储器反馈通道 握手之后 给labuf 的读写是能
   wire [31:0] labuf_wdata = nice_icb_rsp_rdata; //存储器反馈 读回的数据通过wdata-mux 选通

   // lbbuf 状态写入寄存器堆
   wire [COUNTER_W-1:0] lbbuf_idx = lbbuf_cnt_r; // lbbuf计数器的输出次数
   wire lbbuf_wr = lbbuf_icb_rsp_hsked; //当存储器反馈通道 握手之后 给lbbuf 的读写是能
   wire [31:0] lbbuf_wdata = nice_icb_rsp_rdata; //存储器反馈 读回的数据通过wdata-mux 选通

   // lpbuf 状态写入寄存器堆
   wire [COUNTER_W-1:0] lpbuf_idx = lpbuf_cnt_r; // lpbuf计数器的输出次数
   wire lpbuf_wr = lpbuf_icb_rsp_hsked; //当存储器反馈通道 握手之后 给lpbuf 的读写是能
   wire [31:0] lpbuf_wdata = nice_icb_rsp_rdata; //存储器反馈 读回的数据通过wdata-mux 选通

   // nicecore 的运算结果 存入regfile中;
   wire [3:0] work_idx = rcv_data_buf_idx; 
   wire work_wr = rcv_data_buf_valid; //rcv_buf 的写使能寄存器的值，控制regfile的写MUX3——1

 // 1.regfile实例化for a; 
   genvar i;
   generate 
     for (i=0; i<8; i=i+1) begin:gen_aregfile
       assign aregfile_we[i] =   (labuf_wr & (labuf_idx == i[COUNTER_W-1:0]))
                             ;
  
       assign aregfile_wdat[i] =   ({`E203_XLEN{aregfile_we[i]}} & labuf_wdata   )
                               ;
  
       sirv_gnrl_dfflr #(`E203_XLEN) aregfile_dfflr (aregfile_we[i], aregfile_wdat[i], aregfile_r[i], nice_clk, nice_rst_n);
       //a 存入aregfile 输出为 aregfile_r；
     end
   endgenerate

   //2.data regfile 模数p的寄存器堆

    // regfile实例化for p; 
   genvar j;
   generate 
     for (j=0; j<8; j=j+1) begin:gen_pregfile
       assign pregfile_we[j] =   (lpbuf_wr & (lpbuf_idx == j[COUNTER_W-1:0]))
                             ;
  
       assign pregfile_wdat[j] =   ({`E203_XLEN{pregfile_we[j]}} & lpbuf_wdata   )
                               ;
  
       sirv_gnrl_dfflr #(`E203_XLEN) pregfile_dfflr (pregfile_we[j], pregfile_wdat[j], pregfile_r[j], nice_clk, nice_rst_n);
       //p 存入pregfile 输出为 pregfile_r；
     end
   endgenerate

   //data regfile 模数b的寄存器堆

    //3.regfile实例化for b; 
   genvar k;
   generate 
     for (k=0; k<8; k=k+1) begin:gen_bregfile
       assign bregfile_we[k] =   (lbbuf_wr & (lbbuf_idx == k[COUNTER_W-1:0]))
                             ;
  
       assign bregfile_wdat[k] =   ({`E203_XLEN{bregfile_we[k]}} & lbbuf_wdata   )
                               ;
  
       sirv_gnrl_dfflr #(`E203_XLEN) bregfile_dfflr (bregfile_we[k], bregfile_wdat[k], bregfile_r[k], nice_clk, nice_rst_n);
       //b 存入bregfile 输出为 bregfile_r；
     end
   endgenerate

  //4.results regfile

   // regfile实例化 
   genvar l;
   generate 
     for (l=0; l<8; l=l+1) begin:gen_resregfile
       assign resregfile_we[l] =   (work_store_incr & (work_store_cnt == l[COUNTER_W-1:0]));
  
       assign resregfile_wdat[l] =   ({`E203_XLEN{resregfile_we[l]}} & divout   ) ;

       sirv_gnrl_dfflr #(`E203_XLEN) resregfile_dfflr (resregfile_we[l], resregfile_wdat[l], resregfile_r[l], nice_clk, nice_rst_n);
     end
   endgenerate

  //////////// 存储器请求访问地址生成
   wire [`E203_XLEN-1:0] maddr_acc_r; 
   assign nice_icb_cmd_hsked = nice_icb_cmd_valid & nice_icb_cmd_ready; 

   // labuf 的地址使能
   //wire [`E203_XLEN-1:0] lbuf_maddr    = state_is_idle ? nice_req_rs1 : maddr_acc_r ; 
   wire labuf_maddr_ena    =   (state_is_idle & custom3_labuf & nice_icb_cmd_hsked)
                            | (state_is_labuf & nice_icb_cmd_hsked);
				
  
   // lbbuf 的地址使能                          
   wire lbbuf_maddr_ena    =   (state_is_idle & custom3_lbbuf & nice_icb_cmd_hsked)
                            | (state_is_lbbuf & nice_icb_cmd_hsked);
                            

   // lpbuf 的地址使能                          
   wire lpbuf_maddr_ena    =   (state_is_idle & custom3_lpbuf & nice_icb_cmd_hsked)
                            | (state_is_lpbuf & nice_icb_cmd_hsked) ;
                           
   // custom3_sbuf  
   wire sbuf_maddr_ena    =   (state_is_idle & custom3_sbuf & nice_icb_cmd_hsked)
                            | (state_is_sbuf & nice_icb_cmd_hsked);

   // 存储器请求通道的addr使能 决定了发送窗口和内容
     wire  maddr_ena = labuf_maddr_ena | lbbuf_maddr_ena | lpbuf_maddr_ena | sbuf_maddr_ena;
     wire  maddr_ena_idle = maddr_ena & state_is_idle; //地址的发送是在初始态中完成的；

     wire [`E203_XLEN-1:0] maddr_acc_op1 = maddr_ena_idle ? nice_req_rs1 : maddr_acc_r; // not reused
     wire [`E203_XLEN-1:0] maddr_acc_op2 = maddr_ena_idle ? `E203_XLEN'h4 : `E203_XLEN'h4; 

     wire [`E203_XLEN-1:0] maddr_acc_next = maddr_acc_op1 + maddr_acc_op2;
     wire  maddr_acc_ena = maddr_ena;

     sirv_gnrl_dfflr #(`E203_XLEN)   maddr_acc_dfflr (maddr_acc_ena, maddr_acc_next, maddr_acc_r, nice_clk, nice_rst_n);
     
   ////////////////////////////////////////////////////////////
   // 控制cmd_req 存储器请求通道 请求通道的握手是在idle状态开始的；
   ////////////////////////////////////////////////////////////
   assign nice_req_hsked = nice_req_valid & nice_req_ready;
   assign nice_req_ready = state_is_idle & (custom_mem_op ? nice_icb_cmd_ready : 1'b1); 

   ////////////////////////////////////////////////////////////
   // 控制icb_rsp 存储器反馈通道  莫名其妙 只返回了32bit?
   ////////////////////////////////////////////////////////////
   assign nice_rsp_hsked = nice_rsp_valid & nice_rsp_ready; 
   assign nice_icb_rsp_hsked = nice_icb_rsp_valid & nice_icb_rsp_ready;
   assign nice_rsp_valid =  nice_rsp_valid_sbuf | nice_rsp_valid_labuf | nice_rsp_valid_lbbuf| nice_rsp_valid_lpbuf | nice_rsp_valid_work;
   assign nice_rsp_rdat  = {`E203_XLEN{state_is_work}} & divout;

   // 存储器请求error 在存储器rsp 出现错误后，随即通过nice反馈通道 反馈error （nice_rsp_err）
   //assign nice_rsp_err_irq  =   (nice_icb_rsp_hsked & nice_icb_rsp_err)
   //                          | (nice_req_hsked & illgel_instr)
   //                          ; 
   assign nice_rsp_err   =   (nice_icb_rsp_hsked & nice_icb_rsp_err);

   ////////////////////////////////////////////////////////////
   // 存储器的lsu load store unit 通道信号
   ////////////////////////////////////////////////////////////
   //  1. IDLE, 发送mem_holdup ，将存储器的独占信号拉高
   //  2. LKBUF, LEDBUF 当lkbuf_cnt_r 计数器不满时从内存中读入数据；  
   //  3. SBUF, 当sbuf_cnt_r 计数器不满时 不断从regfile中读出 并写入内存；
   //assign nice_icb_rsp_ready = state_is_ldst_rsp & nice_rsp_ready; 
   // 存储器的反馈的准备信号 read 一直有效 
   //所有的存储器请求通道的信号都是在 idle 状态开始发送的， 可能持续
   assign nice_icb_rsp_ready = 1'b1; 
   wire [COUNTER_W-1:0] sbuf_idx = sbuf_cmd_cnt_r; 

   assign nice_icb_cmd_valid =   (state_is_idle & nice_req_valid & custom_mem_op)
                              | nice_icb_cmd_valid_labuf
                              | nice_icb_cmd_valid_lbbuf
                              | nice_icb_cmd_valid_lpbuf
                              | nice_icb_cmd_valid_sbuf
                              ;
   assign nice_icb_cmd_addr  = (state_is_idle & custom_mem_op) ? nice_req_rs1 :
                              maddr_acc_r;
   assign nice_icb_cmd_read  = (state_is_idle & custom_mem_op) ? (custom3_labuf | custom3_lbbuf | custom3_lpbuf | custom3_stawork) : 
                              state_is_sbuf ? 1'b0 : 
                              1'b1;
   assign nice_icb_cmd_wdata = (state_is_idle & custom3_sbuf) ? resregfile_r[sbuf_idx] :
                              state_is_sbuf ? resregfile_r[sbuf_idx] : 
                              `E203_XLEN'b0; 

   //assign nice_icb_cmd_wmask = {`sirv_XLEN_MW{custom3_sbuf}} & 4'b1111;
   assign nice_icb_cmd_size  = 2'b10;
   assign nice_mem_holdup    =  state_is_labuf | state_is_lbbuf |  state_is_lpbuf | state_is_sbuf ; 

   ////////////////////////////////////////////////////////////
   // nice_active
   ////////////////////////////////////////////////////////////
   assign nice_active = state_is_idle ? nice_req_valid : 1'b1;

endmodule
`endif//}


