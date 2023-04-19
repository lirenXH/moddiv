debImport "-f" "./file.f"
debLoadSimResult /home/xuhao/moddiv/mochu_moni/rtl.fsdb
wvCreateWindow
wvSelectGroup -win $_nWave2 {G1}
wvRestoreSignal -win $_nWave2 "/home/xuhao/moddiv/mochu_moni/signal.rc" \
           -overWriteAutoAlias on -appendSignals on
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 6706.130648 -snap {("G3" 2)}
srcActiveTrace "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL.nxt_state\[3:0\]" -win \
           $_nTrace1 -TraceByDConWave -TraceTime 5100 -TraceValue 1000
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G5" 5 )} 
wvSetPosition -win $_nWave2 {("G5" 5)}
wvSetPosition -win $_nWave2 {("G3" 2)}
srcTraceConnectivity "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL.temp_sign" -win \
           $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "temp_sign" -line 92 -pos 1 -win $_nTrace1
srcAction -pos 91 8 4 -win $_nTrace1 -name "temp_sign" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "temp_h2b_in\[1\]" -line 127 -pos 1 -win $_nTrace1
srcAction -pos 126 5 8 -win $_nTrace1 -name "temp_h2b_in\[1\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "u_flag" -line 82 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G5" 1)}
wvSetPosition -win $_nWave2 {("G5" 2)}
wvSetPosition -win $_nWave2 {("G5" 3)}
wvSetPosition -win $_nWave2 {("G5" 4)}
wvSetPosition -win $_nWave2 {("G5" 5)}
wvSetPosition -win $_nWave2 {("G5" 6)}
wvAddSignal -win $_nWave2 "/MINV_MDIV_tb/MINV_MDIV/MINV_MDIV_DATAPATH/u_flag"
wvSetPosition -win $_nWave2 {("G5" 6)}
wvSetPosition -win $_nWave2 {("G5" 7)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 4263.065938 15871.722414
wvZoom -win $_nWave2 4926.085396 8851.858503
srcDeselectAll -win $_nTrace1
srcSelect -signal "u_flag" -line 82 -pos 1 -win $_nTrace1
srcAction -pos 81 3 3 -win $_nTrace1 -name "u_flag" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "u_flag_rst" -line 10 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G5" 1)}
wvSetPosition -win $_nWave2 {("G5" 2)}
wvSetPosition -win $_nWave2 {("G5" 3)}
wvSetPosition -win $_nWave2 {("G5" 4)}
wvSetPosition -win $_nWave2 {("G5" 5)}
wvSetPosition -win $_nWave2 {("G5" 6)}
wvSetPosition -win $_nWave2 {("G5" 7)}
wvAddSignal -win $_nWave2 \
           "/MINV_MDIV_tb/MINV_MDIV/MINV_MDIV_DATAPATH/U_FLA_REG/u_flag_rst"
wvSetPosition -win $_nWave2 {("G5" 7)}
wvSetPosition -win $_nWave2 {("G5" 8)}
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G5" 8 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 4028.047757 -snap {("G5" 5)}
wvZoom -win $_nWave2 4028.047757 11328.884317
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "u_flag_rst" -line 10 -pos 1 -win $_nTrace1
srcAction -pos 9 5 7 -win $_nTrace1 -name "u_flag_rst" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcHBSelect "MINV_MDIV_tb" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.U_FLA_REG" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "u_flag_set" -line 12 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G5" 2)}
wvSetPosition -win $_nWave2 {("G5" 3)}
wvSetPosition -win $_nWave2 {("G5" 4)}
wvSetPosition -win $_nWave2 {("G5" 5)}
wvSetPosition -win $_nWave2 {("G5" 6)}
wvSetPosition -win $_nWave2 {("G5" 7)}
wvSetPosition -win $_nWave2 {("G5" 8)}
wvAddSignal -win $_nWave2 \
           "/MINV_MDIV_tb/MINV_MDIV/MINV_MDIV_DATAPATH/U_FLA_REG/u_flag_set"
wvSetPosition -win $_nWave2 {("G5" 8)}
wvSetPosition -win $_nWave2 {("G5" 9)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 3218.805698 7549.562455
wvZoom -win $_nWave2 4379.604728 6942.041467
wvSelectSignal -win $_nWave2 {( "G5" 5 )} 
wvSetPosition -win $_nWave2 {("G5" 5)}
wvSetPosition -win $_nWave2 {("G5" 9)}
wvSetPosition -win $_nWave2 {("G2" 1)}
srcTraceConnectivity "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL.temp_sign" -win \
           $_nTrace1
wvSetPosition -win $_nWave2 {("G5" 9)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "temp_sign" -line 41 -pos 1 -win $_nTrace1
srcAction -pos 40 5 6 -win $_nTrace1 -name "temp_sign" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "temp_h2b_in\[1\]" -line 127 -pos 1 -win $_nTrace1
srcAction -pos 126 5 7 -win $_nTrace1 -name "temp_h2b_in\[1\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "u_sub_v_h2b" -line 83 -pos 1 -win $_nTrace1
srcAction -pos 82 3 8 -win $_nTrace1 -name "u_sub_v_h2b" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "regu_h2b_out" -line 74 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "c_out" -line 74 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "c_out" -line 74 -pos 1 -win $_nTrace1
srcAction -pos 73 9 2 -win $_nTrace1 -name "c_out" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.add_16" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "regu_h2b_out" -line 74 -pos 1 -win $_nTrace1
srcAction -pos 73 5 7 -win $_nTrace1 -name "regu_h2b_out" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu_h2b" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "regu_h2b_out" -line 74 -pos 1 -win $_nTrace1
srcAction -pos 73 5 5 -win $_nTrace1 -name "regu_h2b_out" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu_h2b" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH" -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH" -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G4" 1 )} 
wvSetCursor -win $_nWave2 5301.363034 -snap {("G4" 1)}
wvSetCursor -win $_nWave2 5131.903290 -snap {("G4" 1)}
wvSetCursor -win $_nWave2 5315.484679 -snap {("G4" 1)}
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 5211.498018 -snap {("G4" 1)}
wvSetCursor -win $_nWave2 5106.227571 -snap {("G4" 1)}
wvZoom -win $_nWave2 4572.172619 7417.042265
wvSetCursor -win $_nWave2 5305.447035 -snap {("G4" 1)}
wvSetCursor -win $_nWave2 5095.736259 -snap {("G4" 1)}
wvSetCursor -win $_nWave2 5401.029498 -snap {("G4" 1)}
wvSetCursor -win $_nWave2 5302.593828 -snap {("G4" 1)}
wvSetCursor -win $_nWave2 6707.798691 -snap {("G4" 1)}
wvSetCursor -win $_nWave2 6622.202456 -snap {("G4" 1)}
wvSetCursor -win $_nWave2 5108.575694 -snap {("G4" 1)}
wvSetCursor -win $_nWave2 6710.651899 -snap {("G4" 1)}
wvSetCursor -win $_nWave2 6811.940778 -snap {("G4" 1)}
wvSetCursor -win $_nWave2 6910.376448 -snap {("G4" 1)}
wvSetCursor -win $_nWave2 6801.954550 -snap {("G4" 1)}
wvSelectSignal -win $_nWave2 {( "G5" 7 )} 
wvSelectSignal -win $_nWave2 {( "G5" 9 )} 
wvSelectSignal -win $_nWave2 {( "G5" 7 )} 
wvSelectSignal -win $_nWave2 {( "G5" 9 )} 
wvSetPosition -win $_nWave2 {("G1" 10)}
srcTraceConnectivity \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.U_FLA_REG.u_flag_set" \
           -win $_nTrace1
wvSetPosition -win $_nWave2 {("G5" 9)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "temp_sign" -line 347 -pos 1 -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G5" 5 )} 
wvSetPosition -win $_nWave2 {("G5" 5)}
wvSetPosition -win $_nWave2 {("G5" 9)}
wvSetPosition -win $_nWave2 {("G1" 10)}
srcTraceConnectivity "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL.temp_sign" -win \
           $_nTrace1
wvSetPosition -win $_nWave2 {("G5" 9)}
wvSelectSignal -win $_nWave2 {( "G4" 3 )} 
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 5787.639161 9077.387806
wvSetCursor -win $_nWave2 8415.022307 -snap {("G3" 1)}
srcActiveTrace "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL.cur_state\[3:0\]" -win \
           $_nTrace1 -TraceByDConWave -TraceTime 8400 -TraceValue 1011
wvSetCursor -win $_nWave2 8326.706908 -snap {("G3" 2)}
srcActiveTrace "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL.nxt_state\[3:0\]" -win \
           $_nTrace1 -TraceByDConWave -TraceTime 8300 -TraceValue 1011
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvZoomOut -win $_nWave2
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.mux0" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.mux0" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.mux0" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2_h2b" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2_h2b" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2_h2b" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "in" -line 4 -pos 1 -win $_nTrace1
srcAction -pos 3 9 0 -win $_nTrace1 -name "in" -ctrlKey off
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx1" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx1" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx1" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2.RR_SHI_REG_MDY_CLR" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2.RR_SHI_REG_MDY_CLR" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2.RR_SHI_REG_MDY_CLR" \
           -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu.RR_SHI_REG_MDY" -win \
           $_nTrace1
srcSetScope -win $_nTrace1 \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu.RR_SHI_REG_MDY" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu.RR_SHI_REG_MDY" -win \
           $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx1.MUX21_16" -win \
           $_nTrace1
srcSetScope -win $_nTrace1 \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx1.MUX21_16" -delim \
           "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx1.MUX21_16" -win \
           $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.add_16" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.add_16" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.add_16" -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G4" 1 )} 
wvSelectSignal -win $_nWave2 {( "G4" 4 )} 
wvSelectSignal -win $_nWave2 {( "G4" 3 )} 
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvSelectSignal -win $_nWave2 {( "G4" 3 )} 
wvSelectSignal -win $_nWave2 {( "G4" 4 )} 
wvSelectSignal -win $_nWave2 {( "G4" 4 )} 
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvSetCursor -win $_nWave2 6805.474145 -snap {("G4" 2)}
wvSetCursor -win $_nWave2 6923.963973 -snap {("G4" 2)}
wvSetCursor -win $_nWave2 6798.850490 -snap {("G4" 2)}
wvSetCursor -win $_nWave2 6894.525506 -snap {("G4" 2)}
wvSetCursor -win $_nWave2 6806.210106 -snap {("G4" 2)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectGroup -win $_nWave2 {G6}
wvRenameGroup -win $_nWave2 {G6} {REQ_VUP_en}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 0)}
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "we" -line 4 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "we" -line 4 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regp" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regp" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regp" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "we" -line 1 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G5" 3 )} 
wvSelectSignal -win $_nWave2 {( "G5" 2 )} 
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvSelectSignal -win $_nWave2 {( "G4" 1 )} 
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvSelectSignal -win $_nWave2 {( "G4" 1 )} 
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "we" -line 14 -pos 1 -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu.RR_SHI_REG_MDY" -win \
           $_nTrace1
srcSetScope -win $_nTrace1 \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu.RR_SHI_REG_MDY" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu.RR_SHI_REG_MDY" -win \
           $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "we" -line 3 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "regin" -line 6 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G5" 1)}
wvSetPosition -win $_nWave2 {("G5" 5)}
wvSetPosition -win $_nWave2 {("G5" 6)}
wvSetPosition -win $_nWave2 {("G5" 7)}
wvSetPosition -win $_nWave2 {("G5" 8)}
wvSetPosition -win $_nWave2 {("G5" 9)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 0)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 1)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 2)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 3)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 2)}
wvAddSignal -win $_nWave2 \
           "/MINV_MDIV_tb/MINV_MDIV/MINV_MDIV_DATAPATH/regu/RR_SHI_REG_MDY/regin\[15:0\]"
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 2)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 3)}
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 3 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 3)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 2)}
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "regout" -line 4 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "regout" -line 5 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G4" 1)}
wvAddSignal -win $_nWave2 \
           "/MINV_MDIV_tb/MINV_MDIV/MINV_MDIV_DATAPATH/regv/regout\[255:0\]"
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSetPosition -win $_nWave2 {("G4" 1)}
srcTraceConnectivity "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL.regvout\[255:0\]" \
           -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "regout" -line 5 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G4" 1)}
wvAddSignal -win $_nWave2 \
           "/MINV_MDIV_tb/MINV_MDIV/MINV_MDIV_DATAPATH/regu/regout\[255:0\]"
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSelectSignal -win $_nWave2 {( "G4" 1 )} 
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSetCursor -win $_nWave2 8392.207496 -snap {("G3" 1)}
wvSelectSignal -win $_nWave2 {( "G5" 7 )} 
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 2 )} 
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "regin" -line 6 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G5" 2)}
wvSetPosition -win $_nWave2 {("G5" 3)}
wvSetPosition -win $_nWave2 {("G5" 4)}
wvSetPosition -win $_nWave2 {("G5" 5)}
wvSetPosition -win $_nWave2 {("G5" 6)}
wvSetPosition -win $_nWave2 {("G5" 7)}
wvSetPosition -win $_nWave2 {("G5" 8)}
wvSetPosition -win $_nWave2 {("G5" 9)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 0)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 1)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 2)}
wvAddSignal -win $_nWave2 \
           "/MINV_MDIV_tb/MINV_MDIV/MINV_MDIV_DATAPATH/regu/regin\[15:0\]"
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 2)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 3)}
wvScrollDown -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 3 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 3)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 2)}
wvSetOptions -win $_nWave2 -hierName on
wvSetOptions -win $_nWave2 -hierName off
wvSetOptions -win $_nWave2 -hierName on
wvSetOptions -win $_nWave2 -hierName off
srcDeselectAll -win $_nTrace1
srcSelect -signal "regin" -line 6 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 3 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 3)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 2)}
srcHBSelect \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu.RR_SHI_REG_MDY.MUX21_16_0" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu.RR_SHI_REG_MDY.MUX21_16_0" \
           -delim "."
srcHBSelect \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu.RR_SHI_REG_MDY.MUX21_16_0" \
           -win $_nTrace1
srcHBSelect \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu.RR_SHI_REG_MDY.REG_16_0" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu.RR_SHI_REG_MDY.REG_16_0" \
           -delim "."
srcHBSelect \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu.RR_SHI_REG_MDY.REG_16_0" \
           -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "regin" -line 11 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "regout" -line 11 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "regout" -line 13 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G5" 2)}
wvSetPosition -win $_nWave2 {("G5" 5)}
wvSetPosition -win $_nWave2 {("G5" 6)}
wvSetPosition -win $_nWave2 {("G5" 7)}
wvSetPosition -win $_nWave2 {("G5" 8)}
wvSetPosition -win $_nWave2 {("G5" 9)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 0)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 1)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 2)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 3)}
wvAddSignal -win $_nWave2 \
           "/MINV_MDIV_tb/MINV_MDIV/MINV_MDIV_DATAPATH/regu/RR_SHI_REG_MDY/REG_16_0/regout\[15:0\]"
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 3)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 4)}
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 4 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G7" 0)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 3)}
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "regin" -line 6 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSetPosition -win $_nWave2 {("G5" 4)}
wvSetPosition -win $_nWave2 {("G5" 5)}
wvSetPosition -win $_nWave2 {("G5" 8)}
wvSetPosition -win $_nWave2 {("G5" 9)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 1)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 2)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 3)}
wvSetPosition -win $_nWave2 {("G7" 0)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 3)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 2)}
wvAddSignal -win $_nWave2 \
           "/MINV_MDIV_tb/MINV_MDIV/MINV_MDIV_DATAPATH/regu/regin\[15:0\]"
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 2)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 3)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "regout" -line 14 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "bit256" -line 14 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "regout" -line 14 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "muxout" -line 11 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "muxout" -line 14 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "sel_cyc" -line 11 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "regin" -line 11 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "regout\[15:0\]" -line 11 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 7 )} 
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 6 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 7)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 6)}
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 6 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 6)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 5)}
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 6 )} 
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 5 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 5)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 4)}
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 4 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 4)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 3)}
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 3 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 3)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 2)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "sel_rs" -line 14 -pos 1 -win $_nTrace1
srcAction -pos 13 15 3 -win $_nTrace1 -name "sel_rs" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu.RR_SHI_REG_MDY" -win \
           $_nTrace1
srcSetScope -win $_nTrace1 \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu.RR_SHI_REG_MDY" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu.RR_SHI_REG_MDY" -win \
           $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sel_rs" -line 3 -pos 1 -win $_nTrace1
srcHBSelect \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu.RR_SHI_REG_MDY.REG_16_0" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu.RR_SHI_REG_MDY.REG_16_0" \
           -delim "."
srcHBSelect \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu.RR_SHI_REG_MDY.REG_16_0" \
           -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu.RR_SHI_REG_MDY.REG_16_0" \
           -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu.RR_SHI_REG_MDY" -win \
           $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu.RR_SHI_REG_MDY" -win \
           $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 2 )} 
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 2 )} 
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 1 )} 
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sel_cyc" -line 4 -pos 1 -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv.RR_SHI_REG_256" -win \
           $_nTrace1
srcSetScope -win $_nTrace1 \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv.RR_SHI_REG_256" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv.RR_SHI_REG_256" -win \
           $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv.MUX21_16" -win \
           $_nTrace1
srcSetScope -win $_nTrace1 \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv.MUX21_16" -delim \
           "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv.MUX21_16" -win \
           $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sel_cyc" -line 11 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 4 )} 
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 3 )} 
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 2)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 1)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 1)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 2)}
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sel_cyc" -line 7 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G5" 6)}
wvSetPosition -win $_nWave2 {("G5" 8)}
wvSetPosition -win $_nWave2 {("G5" 9)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 0)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 1)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 2)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 3)}
wvAddSignal -win $_nWave2 \
           "/MINV_MDIV_tb/MINV_MDIV/MINV_MDIV_DATAPATH/regu/sel_cyc"
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 3)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 4)}
wvScrollDown -win $_nWave2 1
srcHBSelect \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu.RR_SHI_REG_MDY.MUX21_16_0" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu.RR_SHI_REG_MDY.MUX21_16_0" \
           -delim "."
srcHBSelect \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu.RR_SHI_REG_MDY.MUX21_16_0" \
           -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sel" -line 5 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 5 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 5)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 4)}
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu.RR_SHI_REG_MDY" -win \
           $_nTrace1
srcSetScope -win $_nTrace1 \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu.RR_SHI_REG_MDY" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu.RR_SHI_REG_MDY" -win \
           $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sel_rs" -line 3 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 5 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 5)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 4)}
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 4 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 4)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 3)}
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 3 )} 
wvSetOptions -win $_nWave2 -hierName on
wvSetOptions -win $_nWave2 -hierName off
wvSetOptions -win $_nWave2 -hierName on
wvSetOptions -win $_nWave2 -hierName off
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 2 )} 
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "muxout" -line 14 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sel_cyc" -line 4 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 4 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 5)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 4)}
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 4 )} 
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 2 4 )} 
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 1 )} 
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 2)}
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "regin" -line 6 -pos 1 -win $_nTrace1
srcSelect -signal "regout" -line 5 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 6813.569723 -snap {("REQ_VUP_en" 3)}
wvSetCursor -win $_nWave2 6898.205315 -snap {("REQ_VUP_en" 3)}
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 3 )} 
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 3 4 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 4)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 2)}
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 2 )} 
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 4 )} 
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 4 )} 
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 5 )} 
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 5 )} 
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 2 )} 
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
srcDeselectAll -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G5" 1 )} 
wvSelectSignal -win $_nWave2 {( "G5" 2 )} 
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 1 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx1" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx1" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx1" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sel_rs" -line 5 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sel_cyc" -line 5 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "we" -line 5 -pos 1 -win $_nTrace1
srcSelect -signal "sel_cyc" -line 5 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 5)}
wvAddSignal -win $_nWave2 "/MINV_MDIV_tb/MINV_MDIV/MINV_MDIV_DATAPATH/regx1/we" \
           "/MINV_MDIV_tb/MINV_MDIV/MINV_MDIV_DATAPATH/regx1/sel_cyc"
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 5)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 7)}
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 7 )} 
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 6 )} 
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sel_cyc" -line 5 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "we" -line 5 -pos 1 -win $_nTrace1
srcSelect -signal "sel_cyc" -line 5 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 6 )} 
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 6 7 8 9 )} 
wvSetPosition -win $_nWave2 {("G7" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G7" 4)}
wvSetPosition -win $_nWave2 {("G7" 4)}
wvSelectGroup -win $_nWave2 {G7}
wvSelectGroup -win $_nWave2 {G7}
wvRenameGroup -win $_nWave2 {G7} {regX1/X2_en}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G3" 2 )} 
wvSetCursor -win $_nWave2 11486.926300 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 11497.965725 -snap {("G3" 2)}
srcActiveTrace "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL.nxt_state\[3:0\]" -win \
           $_nTrace1 -TraceByDConWave -TraceTime 9900 -TraceValue 1101
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 1 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 11608.359974 -snap {("G3" 1)}
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv.RR_SHI_REG_256" -win \
           $_nTrace1
srcSetScope -win $_nTrace1 \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv.RR_SHI_REG_256" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv.RR_SHI_REG_256" -win \
           $_nTrace1
srcHBSelect \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv.RR_SHI_REG_256.REG_16_1" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv.RR_SHI_REG_256.REG_16_1" \
           -delim "."
srcHBSelect \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv.RR_SHI_REG_256.REG_16_1" \
           -win $_nTrace1
srcHBSelect \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv.RR_SHI_REG_256.MUX21_16_11" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv.RR_SHI_REG_256.MUX21_16_11" \
           -delim "."
srcHBSelect \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv.RR_SHI_REG_256.MUX21_16_11" \
           -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv.RR_SHI_REG_256" -win \
           $_nTrace1
srcSetScope -win $_nTrace1 \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv.RR_SHI_REG_256" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv.RR_SHI_REG_256" -win \
           $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "regout8\[0\]" -line 32 -pos 1 -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv.MUX21_16" -win \
           $_nTrace1
srcSetScope -win $_nTrace1 \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv.MUX21_16" -delim \
           "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv.MUX21_16" -win \
           $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv" -win $_nTrace1
srcHBDrag -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regv.RR_SHI_REG_256" \
           -delim "."
wvScrollDown -win $_nWave2 6
wvSetPosition -win $_nWave2 {("G8" 0)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "we" -line 3 -pos 1 -win $_nTrace1
srcSelect -signal "sel_rs" -line 3 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G5" 8 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G9" 0)}
wvSetPosition -win $_nWave2 {("G8" 2)}
wvSelectSignal -win $_nWave2 {( "G5" 6 )} 
wvSelectSignal -win $_nWave2 {( "G5" 6 )} 
wvSetPosition -win $_nWave2 {("G5" 6)}
srcTraceConnectivity "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.add_sub" -win \
           $_nTrace1
wvSetPosition -win $_nWave2 {("G8" 2)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "add_sub" -line 311 -pos 1 -win $_nTrace1
srcTraceLoad "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL.add_sub" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "adderin" -line 44 -pos 1 -win $_nTrace1
srcNextTraced
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH" -win $_nTrace1
srcNextTraced
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH" -win $_nTrace1
srcPrevTraced
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH" -win $_nTrace1
srcPrevTraced
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "adderin" -line 44 -pos 1 -win $_nTrace1
srcTraceLoad "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.adderin\[15:0\]" -win \
           $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.add_16.BCLA_ADD_4_0" -win \
           $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH" -win $_nTrace1
wvSetCursor -win $_nWave2 11623.079208 -snap {("G3" 2)}
srcActiveTrace "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL.nxt_state\[3:0\]" -win \
           $_nTrace1 -TraceByDConWave -TraceTime 11600 -TraceValue 0111
srcDeselectAll -win $_nTrace1
srcSelect -signal "nxt_state" -line 78 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "nxt_state" -line 78 -pos 1 -win $_nTrace1
srcAction -pos 77 4 7 -win $_nTrace1 -name "nxt_state" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "regx2out0" -line 75 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "regx2out0" -line 75 -pos 1 -win $_nTrace1
srcAction -pos 74 6 3 -win $_nTrace1 -name "regx2out0" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcHBSelect \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2.RR_SHI_REG_MDY_CLR.REG_16_15" \
           -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "regx2out0" -line 75 -pos 1 -win $_nTrace1
srcAction -pos 74 6 6 -win $_nTrace1 -name "regx2out0" -ctrlKey off
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2.RR_SHI_REG_MDY_CLR" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2.RR_SHI_REG_MDY_CLR" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2.RR_SHI_REG_MDY_CLR" \
           -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2" -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G4" 4 )} 
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvScrollUp -win $_nWave2 1
srcBackwardHistory -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2.RR_SHI_REG_MDY_CLR" \
           -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2.RR_SHI_REG_MDY_CLR" \
           -win $_nTrace1
srcHBSelect \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2.RR_SHI_REG_MDY_CLR.REG_16_15" \
           -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2.RR_SHI_REG_MDY_CLR.REG_16_15" \
           -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "regx2out0" -line 75 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvSetPosition -win $_nWave2 {("G4" 4)}
wvAddSignal -win $_nWave2 "/MINV_MDIV_tb/MINV_MDIV/MINV_MDIV_CONTROL/regx2out0"
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSetPosition -win $_nWave2 {("G4" 5)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "regx2out0" -line 75 -pos 1 -win $_nTrace1
srcAction -pos 74 6 7 -win $_nTrace1 -name "regx2out0" -ctrlKey off
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "regout" -line 6 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G4" 6 )} 
wvExpandBus -win $_nWave2 {("G4" 6)}
wvSelectSignal -win $_nWave2 {( "G4" 6 )} 
wvSelectSignal -win $_nWave2 {( "G4" 6 )} 
wvSetPosition -win $_nWave2 {("G4" 6)}
wvCollapseBus -win $_nWave2 {("G4" 6)}
wvSetPosition -win $_nWave2 {("G4" 6)}
wvSelectSignal -win $_nWave2 {( "G4" 5 )} 
wvSelectSignal -win $_nWave2 {( "G4" 5 6 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 11512.684958 -snap {("G4" 5)}
wvSelectSignal -win $_nWave2 {( "G4" 6 )} 
wvExpandBus -win $_nWave2 {("G4" 6)}
wvScrollDown -win $_nWave2 4
wvSelectSignal -win $_nWave2 {( "G4" 6 )} 
wvSetPosition -win $_nWave2 {("G4" 6)}
wvCollapseBus -win $_nWave2 {("G4" 6)}
wvSetPosition -win $_nWave2 {("G4" 6)}
wvScrollUp -win $_nWave2 7
wvSelectSignal -win $_nWave2 {( "G4" 6 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G4" 5)}
wvSelectSignal -win $_nWave2 {( "G4" 5 )} 
wvSelectSignal -win $_nWave2 {( "G4" 4 )} 
wvSelectSignal -win $_nWave2 {( "G4" 5 )} 
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G4" 5 )} 
wvSelectSignal -win $_nWave2 {( "G4" 4 )} 
wvSelectSignal -win $_nWave2 {( "G4" 5 )} 
wvSelectSignal -win $_nWave2 {( "G4" 4 )} 
wvSelectSignal -win $_nWave2 {( "G4" 5 )} 
wvSelectSignal -win $_nWave2 {( "G4" 3 )} 
wvSelectSignal -win $_nWave2 {( "G4" 4 )} 
wvSelectSignal -win $_nWave2 {( "G4" 5 )} 
wvSetCursor -win $_nWave2 11538.443616 -snap {("G3" 2)}
srcActiveTrace "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL.nxt_state\[3:0\]" -win \
           $_nTrace1 -TraceByDConWave -TraceTime 11500 -TraceValue 0101
wvSetCursor -win $_nWave2 11696.675374 -snap {("G3" 1)}
srcActiveTrace "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL.cur_state\[3:0\]" -win \
           $_nTrace1 -TraceByDConWave -TraceTime 11600 -TraceValue 0101
wvSetCursor -win $_nWave2 11604.680166 -snap {("G3" 2)}
srcActiveTrace "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL.nxt_state\[3:0\]" -win \
           $_nTrace1 -TraceByDConWave -TraceTime 11500 -TraceValue 0101
wvSetCursor -win $_nWave2 11509.005149 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 11586.281124 -snap {("G3" 2)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "regx2out0" -line 75 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "nxt_state" -line 76 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "nxt_state" -line 78 -pos 1 -win $_nTrace1
wvSetCursor -win $_nWave2 11707.714799 -snap {("G3" 1)}
wvScrollDown -win $_nWave2 7
wvSelectSignal -win $_nWave2 {( "regX1/X2_en" 4 )} 
wvSelectSignal -win $_nWave2 {( "regX1/X2_en" 3 )} 
wvSelectSignal -win $_nWave2 {( "regX1/X2_en" 4 )} 
wvSelectSignal -win $_nWave2 {( "regX1/X2_en" 1 )} 
wvSelectSignal -win $_nWave2 {( "REQ_VUP_en" 5 )} 
wvSetOptions -win $_nWave2 -hierName on
wvSetOptions -win $_nWave2 -hierName off
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regp" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regp" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regp" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sel_cyc" -line 1 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G5" 1)}
wvSetPosition -win $_nWave2 {("G5" 2)}
wvSetPosition -win $_nWave2 {("G5" 3)}
wvSetPosition -win $_nWave2 {("G5" 4)}
wvSetPosition -win $_nWave2 {("G5" 5)}
wvSetPosition -win $_nWave2 {("G5" 6)}
wvSetPosition -win $_nWave2 {("G5" 7)}
wvSetPosition -win $_nWave2 {("G5" 8)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 0)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 1)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 2)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 3)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 4)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 5)}
wvSetPosition -win $_nWave2 {("regX1/X2_en" 0)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 5)}
wvAddSignal -win $_nWave2 \
           "/MINV_MDIV_tb/MINV_MDIV/MINV_MDIV_DATAPATH/regp/sel_cyc"
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 5)}
wvSetPosition -win $_nWave2 {("REQ_VUP_en" 6)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "sel_cyc" -line 1 -pos 1 -win $_nTrace1
srcAction -pos 0 12 4 -win $_nTrace1 -name "sel_cyc" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "regp_we" -line 230 -pos 1 -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 13404.106438 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 13404.106438 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 13319.470847 -snap {("G3" 2)}
wvSelectSignal -win $_nWave2 {( "G4" 4 )} 
wvSetCursor -win $_nWave2 11512.684958 -snap {("G3" 2)}
wvSelectSignal -win $_nWave2 {( "G4" 5 )} 
wvSelectSignal -win $_nWave2 {( "G4" 4 )} 
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvSelectSignal -win $_nWave2 {( "G3" 2 )} 
wvSelectSignal -win $_nWave2 {( "G3" 2 )} 
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSetCursor -win $_nWave2 30716.868659 -snap {("G3" 2)}
srcActiveTrace "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL.nxt_state\[3:0\]" -win \
           $_nTrace1 -TraceByDConWave -TraceTime 30700 -TraceValue 0101
srcDeselectAll -win $_nTrace1
srcSelect -signal "x2_sign" -line 117 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G5" 1)}
wvSetPosition -win $_nWave2 {("G5" 2)}
wvSetPosition -win $_nWave2 {("G5" 3)}
wvSetPosition -win $_nWave2 {("G5" 4)}
wvSetPosition -win $_nWave2 {("G5" 5)}
wvSetPosition -win $_nWave2 {("G5" 6)}
wvSetPosition -win $_nWave2 {("G5" 7)}
wvSetPosition -win $_nWave2 {("G5" 8)}
wvSetPosition -win $_nWave2 {("G5" 7)}
wvSetPosition -win $_nWave2 {("G5" 6)}
wvSetPosition -win $_nWave2 {("G5" 5)}
wvAddSignal -win $_nWave2 "/MINV_MDIV_tb/MINV_MDIV/MINV_MDIV_CONTROL/x2_sign"
wvSetPosition -win $_nWave2 {("G5" 5)}
wvSetPosition -win $_nWave2 {("G5" 6)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "x2_sign" -line 117 -pos 1 -win $_nTrace1
srcAction -pos 116 8 2 -win $_nTrace1 -name "x2_sign" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "x2_sub_x1_h2b\[1\]" -line 131 -pos 1 -win $_nTrace1
srcAction -pos 130 5 10 -win $_nTrace1 -name "x2_sub_x1_h2b\[1\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "c_out" -line 71 -pos 1 -win $_nTrace1
srcAction -pos 70 15 1 -win $_nTrace1 -name "c_out" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.add_16" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.add_16" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.add_16" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.add_16" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "c_out" -line 19 -pos 1 -win $_nTrace1
srcAction -pos 18 3 3 -win $_nTrace1 -name "c_out" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "c12" -line 18 -pos 1 -win $_nTrace1
srcTraceLoad "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.add_16.c12" -win \
           $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.add_16.BCLA_ADD_4_3" -win \
           $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.add_16" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "c8" -line 17 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "c_in" -line 2 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G5" 7 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G5" 7)}
wvSetPosition -win $_nWave2 {("G5" 6)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "c_in" -line 2 -pos 1 -win $_nTrace1
srcAction -pos 1 12 0 -win $_nTrace1 -name "c_in" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.mux2" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.add_16" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.add_16.BCLA_ADD_4_0" -win \
           $_nTrace1
srcSetScope -win $_nTrace1 \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.add_16.BCLA_ADD_4_0" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.add_16.BCLA_ADD_4_0" -win \
           $_nTrace1
