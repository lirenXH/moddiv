debImport "-f" "./file.f"
debLoadSimResult /home/xuhao/moddiv/mochu_moni_32/rtl.fsdb
wvCreateWindow
wvSelectGroup -win $_nWave2 {G1}
srcHBSelect "REG_32_SET" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV" -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "datain" -line 19 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "minv_mdiv_flag" -line 18 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {19 20 12 1 1 1} -backward
srcDeselectAll -win $_nTrace1
srcSelect -signal "datain" -line 19 -pos 1 -win $_nTrace1
srcSelect -signal "minv_mdiv_rdy" -line 18 -pos 1 -win $_nTrace1
srcSelect -signal "minv_mdiv_flag" -line 18 -pos 1 -win $_nTrace1
srcSelect -signal "regx1out" -line 17 -pos 1 -win $_nTrace1
srcSelect -signal "regx2out" -line 17 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 419464.232710 436618.563551
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 0.000000 94348.819626
wvZoom -win $_nWave2 0.000000 11330.676002
wvZoom -win $_nWave2 0.000000 4606.396319
srcDeselectAll -win $_nTrace1
srcSelect -signal "loada" -line 20 -pos 1 -win $_nTrace1
srcSelect -signal "loadp" -line 20 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 345945.671963 436618.563551
wvZoom -win $_nWave2 409374.325565 436533.822531
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "regx1out" -line 17 -pos 1 -win $_nTrace1
srcAction -pos 16 9 3 -win $_nTrace1 -name "regx1out" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV" -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 2 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "minv_mdiv_flag" -line 18 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "minv_mdiv_rdy" -line 18 -pos 1 -win $_nTrace1
srcAction -pos 17 3 11 -win $_nTrace1 -name "minv_mdiv_rdy" -ctrlKey off
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx1" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx1" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx1" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx1" -win $_nTrace1
srcDeselectAll -win $_nTrace1
verdiWindowBeWindow -win $_nWave2
wvResizeWindow -win $_nWave2 591 709 2560 615
verdiWindowBeDocked -win $_nWave2
wvSelectGroup -win $_nWave2 {G2}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 620734.908879 652152.941121
wvSetCursor -win $_nWave2 636370.518383 -snap {("G2" 0)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 0.000000 91508.831776
wvZoom -win $_nWave2 0.000000 20183.256354
wvZoom -win $_nWave2 839.397110 9233.368211
wvSetCursor -win $_nWave2 6499.443978 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL" -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "cur_state" -line 35 -pos 1 -win $_nTrace1
srcSelect -signal "nxt_state" -line 37 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "nxt_state" -line 37 -pos 1 -win $_nTrace1
srcAction -pos 36 7 5 -win $_nTrace1 -name "nxt_state" -ctrlKey off
wvSelectGroup -win $_nWave2 {G2}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcSelect -signal "nxt_state" -line 45 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "minv_mdiv_en" -line 15 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "minv_mdiv" -line 15 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 1)}
wvAddSignal -win $_nWave2 "/MINV_MDIV_tb/MINV_MDIV/minv_mdiv"
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "minv_mdiv" -line 15 -pos 1 -win $_nTrace1
srcTraceLoad "MINV_MDIV_tb.MINV_MDIV.minv_mdiv" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clr" -line 10 -pos 1 -win $_nTrace1
srcAction -pos 9 5 1 -win $_nTrace1 -name "clr" -ctrlKey off
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx1" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx1" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx1" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "regout" -line 6 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 0.000000 7970.350130
wvZoom -win $_nWave2 1333.357638 4160.224811
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "regin" -line 7 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSelectSignal -win $_nWave2 {( "G1" 3 4 5 6 7 8 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSelectGroup -win $_nWave2 {G2}
wvRenameGroup -win $_nWave2 {G2} {XI}
wvRenameGroup -win $_nWave2 {XI} {X1}
wvSelectSignal -win $_nWave2 {( "X1" 2 )} 
wvSetOptions -win $_nWave2 -hierName on
wvSetOptions -win $_nWave2 -hierName off
srcDeselectAll -win $_nTrace1
srcAction -pos 7 5 1 -win $_nTrace1 -name "we" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "we" -line 8 -pos 1 -win $_nTrace1
srcSelect -signal "sel_cyc" -line 8 -pos 1 -win $_nTrace1
srcSelect -signal "sel_rs" -line 8 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "X1" 1 )} 
wvSelectSignal -win $_nWave2 {( "X1" 1 2 )} 
wvSetPosition -win $_nWave2 {("X1" 2)}
wvSetPosition -win $_nWave2 {("X1" 3)}
wvSetPosition -win $_nWave2 {("X1" 5)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("X1" 5)}
wvSetCursor -win $_nWave2 2602.284926 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 2586.433444 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 2784.576966 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 2731.738694 -snap {("G1" 5)}
srcActiveTrace "MINV_MDIV_tb.MINV_MDIV.regx1out\[31:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 2700 -TraceValue \
           00000000000000000000000000000000
srcDeselectAll -win $_nTrace1
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 631940.402428 654575.247432
wvZoom -win $_nWave2 642370.183949 651711.548554
wvZoom -win $_nWave2 645156.893558 648571.594065
wvSetCursor -win $_nWave2 646228.172149 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 646301.731543 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 646405.372865 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 646509.014187 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 646601.494135 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 646714.702348 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 646811.965742 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 646910.823619 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 646802.398851 -snap {("G1" 5)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 644822.452670 647738.793647
wvSetCursor -win $_nWave2 646800.699306 -snap {("G1" 6)}
srcActiveTrace "MINV_MDIV_tb.MINV_MDIV.regx2out\[31:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 646700 -TraceValue \
           10111000001011100010000100111100
wvSetCursor -win $_nWave2 646904.155314 -snap {("G1" 6)}
srcActiveTrace "MINV_MDIV_tb.MINV_MDIV.regx2out\[31:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 646900 -TraceValue \
           00000000000000000000000000000110
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.COUNTER" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.COUNTER" -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.COUNTER" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "count" -line 5 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("X1" 0)}
wvSetPosition -win $_nWave2 {("X1" 1)}
wvSetPosition -win $_nWave2 {("X1" 2)}
wvSetPosition -win $_nWave2 {("X1" 3)}
wvSetPosition -win $_nWave2 {("X1" 4)}
wvSetPosition -win $_nWave2 {("X1" 5)}
wvAddSignal -win $_nWave2 "/MINV_MDIV_tb/MINV_MDIV/COUNTER/count\[2:0\]"
wvSetPosition -win $_nWave2 {("X1" 5)}
wvSetPosition -win $_nWave2 {("X1" 6)}
wvSelectSignal -win $_nWave2 {( "X1" 6 )} 
wvSelectSignal -win $_nWave2 {( "X1" 2 )} 
wvSelectSignal -win $_nWave2 {( "X1" 2 )} 
wvSetPosition -win $_nWave2 {("X1" 2)}
wvSetPosition -win $_nWave2 {("X1" 6)}
srcTraceConnectivity "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx1.sel_cyc" \
           -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "X1" 4 )} 
wvSelectSignal -win $_nWave2 {( "X1" 3 )} 
wvSelectSignal -win $_nWave2 {( "X1" 2 )} 
wvSelectSignal -win $_nWave2 {( "X1" 3 )} 
wvSelectSignal -win $_nWave2 {( "X1" 4 )} 
wvSetCursor -win $_nWave2 646210.720450 -snap {("X1" 5)}
srcActiveTrace "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx1.regout\[31:0\]" \
           -win $_nTrace1 -TraceByDConWave -TraceTime 646200 -TraceValue \
           10001111101011011111000010001000
wvSetCursor -win $_nWave2 646200.934071 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 646200.934071 -snap {("G1" 6)}
srcActiveTrace "MINV_MDIV_tb.MINV_MDIV.regx2out\[31:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 645800 -TraceValue \
           00010000001001101100110110000000
wvSetPosition -win $_nWave2 {("G3" 0)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "regout" -line 13 -pos 1 -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2.RR_SHI_REG_MDY_CLR" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2.RR_SHI_REG_MDY_CLR" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2.RR_SHI_REG_MDY_CLR" \
           -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "regout" -line 5 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "sel_rs" -line 8 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "we" -line 8 -pos 1 -win $_nTrace1
srcSelect -signal "sel_rs" -line 8 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSelectSignal -win $_nWave2 {( "G3" 3 )} 
wvSetCursor -win $_nWave2 645833.245827 -snap {("G1" 9)}
srcActiveTrace "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL.cur_state\[3:0\]" -win \
           $_nTrace1 -TraceByDConWave -TraceTime 645800 -TraceValue 1110
wvSetCursor -win $_nWave2 645829.051665 -snap {("G1" 9)}
srcActiveTrace "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL.cur_state\[3:0\]" -win \
           $_nTrace1 -TraceByDConWave -TraceTime 645800 -TraceValue 1110
wvSetCursor -win $_nWave2 645736.780090 -snap {("G1" 10)}
srcActiveTrace "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL.nxt_state\[3:0\]" -win \
           $_nTrace1 -TraceByDConWave -TraceTime 645700 -TraceValue 1110
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G3" 3 )} 
srcDeselectAll -win $_nTrace1
debReload
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
srcHBSelect "MINV_MDIV_tb.MINV_MDIV" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV" -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "outx1" -line 20 -pos 1 -win $_nTrace1
srcSelect -signal "outx2" -line 20 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvAddSignal -win $_nWave2 "/MINV_MDIV_tb/MINV_MDIV/outx1" \
           "/MINV_MDIV_tb/MINV_MDIV/outx2"
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "outx2" -line 20 -pos 1 -win $_nTrace1
srcTraceLoad "MINV_MDIV_tb.MINV_MDIV.outx2" -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "minv_mdiv_rdy" -line 18 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "minv_mdiv_flag" -line 18 -pos 1 -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSetPosition -win $_nWave2 {("G1" 8)}
srcTraceConnectivity "MINV_MDIV_tb.MINV_MDIV.regx2out\[31:0\]" -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 5)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "regx2out0" -line 40 -pos 1 -win $_nTrace1
srcAction -pos 39 30 6 -win $_nTrace1 -name "regx2out0" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "we" -line 12 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "we" -line 12 -pos 1 -win $_nTrace1
srcAction -pos 11 7 0 -win $_nTrace1 -name "we" -ctrlKey off
wvSetCursor -win $_nWave2 646005.206489 -snap {("G1" 8)}
srcActiveTrace "MINV_MDIV_tb.MINV_MDIV.regx2out\[31:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 646000 -TraceValue \
           11000111110101101111100001000100
srcDeselectAll -win $_nTrace1
srcSelect -signal "regin" -line 13 -pos 1 -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2.RR_SHI_REG_MDY_CLR" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2.RR_SHI_REG_MDY_CLR" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2.RR_SHI_REG_MDY_CLR" \
           -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "regin" -line 7 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvAddSignal -win $_nWave2 \
           "/MINV_MDIV_tb/MINV_MDIV/MINV_MDIV_DATAPATH/regx2/RR_SHI_REG_MDY_CLR/regin\[31:0\]"
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "sel_rs" -line 4 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvAddSignal -win $_nWave2 \
           "/MINV_MDIV_tb/MINV_MDIV/MINV_MDIV_DATAPATH/regx2/RR_SHI_REG_MDY_CLR/sel_rs"
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 8)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "we" -line 4 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvAddSignal -win $_nWave2 \
           "/MINV_MDIV_tb/MINV_MDIV/MINV_MDIV_DATAPATH/regx2/RR_SHI_REG_MDY_CLR/we"
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSetPosition -win $_nWave2 {("G1" 4)}
srcTraceConnectivity "MINV_MDIV_tb.MINV_MDIV.outx1" -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 9)}
srcTraceLoad "MINV_MDIV_tb.outx1" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "we" -line 12 -pos 1 -win $_nTrace1
srcAction -pos 11 7 1 -win $_nTrace1 -name "we" -ctrlKey off
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL" -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSearchString "minv_flag_we" -win $_nTrace1 -next -case
srcDeselectAll -win $_nTrace1
srcSelect -signal "minv_flag_we" -line 15 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcTraceLoad "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL.minv_flag_we" -win \
           $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "set_minv_rdy" -line 362 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcTraceLoad "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL.set_minv_rdy" -win \
           $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mmul_rdy" -line 11 -pos 1 -win $_nTrace1
srcTraceLoad "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.RDY_FLA_REG.mmul_rdy" \
           -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSetCursor -win $_nWave2 646029.762691 -snap {("G1" 12)}
srcActiveTrace "MINV_MDIV_tb.MINV_MDIV.regx2out\[31:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 646000 -TraceValue \
           11000111110101101111100001000100
srcDeselectAll -win $_nTrace1
srcSelect -signal "we" -line 12 -pos 1 -win $_nTrace1
wvAddSignal -win $_nWave2 \
           "/MINV_MDIV_tb/MINV_MDIV/MINV_MDIV_DATAPATH/regx2/RR_SHI_REG_MDY_CLR/REG_32_7/we"
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "we" -line 12 -pos 1 -win $_nTrace1
srcAction -pos 11 7 0 -win $_nTrace1 -name "we" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "outx2" -line 36 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.COUNTER" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.COUNTER" -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.COUNTER" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "count_en" -line 4 -pos 1 -win $_nTrace1
srcAction -pos 3 7 5 -win $_nTrace1 -name "count_en" -ctrlKey off
srcDeselectAll -win $_nTrace1
debReload
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSetCursor -win $_nWave2 646402.257261 -snap {("G1" 12)}
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 13)}
srcTraceConnectivity "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL.minv_flag_we" -win \
           $_nTrace1
srcTraceLoad "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL.minv_flag_we" -win \
           $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "set_minv_rdy" -line 372 -pos 1 -win $_nTrace1
srcTraceLoad "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL.set_minv_rdy" -win \
           $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSetCursor -win $_nWave2 646000.812336 -snap {("G1" 5)}
wvSetMarker -win $_nWave2 646200.000000
wvSetCursor -win $_nWave2 646203.464822 -snap {("G1" 18)}
srcActiveTrace "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL.nxt_state\[3:0\]" -win \
           $_nTrace1 -TraceByDConWave -TraceTime 645700 -TraceValue 1110
srcDeselectAll -win $_nTrace1
srcSelect -signal "out_ready" -line 152 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvAddSignal -win $_nWave2 "/MINV_MDIV_tb/MINV_MDIV/MINV_MDIV_CONTROL/out_ready"
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetCursor -win $_nWave2 645996.952289 -snap {("G1" 6)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "nxt_state" -line 153 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvAddSignal -win $_nWave2 \
           "/MINV_MDIV_tb/MINV_MDIV/MINV_MDIV_CONTROL/nxt_state\[3:0\]"
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 20)}
wvSelectSignal -win $_nWave2 {( "G1" 20 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("X1" 0)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "nxt_state" -line 153 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvAddSignal -win $_nWave2 \
           "/MINV_MDIV_tb/MINV_MDIV/MINV_MDIV_CONTROL/nxt_state\[3:0\]"
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetCursor -win $_nWave2 646218.905012 -snap {("G1" 7)}
srcActiveTrace "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL.nxt_state\[3:0\]" -win \
           $_nTrace1 -TraceByDConWave -TraceTime 646200 -TraceValue 1111
srcDeselectAll -win $_nTrace1
srcSelect -signal "out_ready" -line 152 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 7)}
srcHBSelect "MINV_MDIV_tb.MINV_MDIV" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV" -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -line 15 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 3)}
wvAddSignal -win $_nWave2 "/MINV_MDIV_tb/MINV_MDIV/clk"
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvScrollDown -win $_nWave2 4
wvSelectSignal -win $_nWave2 {( "X1" 6 )} 
wvSetCursor -win $_nWave2 644985.619880 -snap {("X1" 6)}
srcBackwardHistory -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL" -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "out_ready" -line 152 -pos 1 -win $_nTrace1
srcAction -pos 151 6 3 -win $_nTrace1 -name "out_ready" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL" -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 646004.672383 -snap {("G1" 6)}
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 646301.896030 -snap {("G1" 20)}
srcActiveTrace "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL.cur_state\[3:0\]" -win \
           $_nTrace1 -TraceByDConWave -TraceTime 645800 -TraceValue 1110
wvSetCursor -win $_nWave2 646209.254893 -snap {("G1" 21)}
srcActiveTrace "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL.nxt_state\[3:0\]" -win \
           $_nTrace1 -TraceByDConWave -TraceTime 646200 -TraceValue 1111
wvSetOptions -win $_nWave2 -fixedDelta on
wvSetOptions -win $_nWave2 -fixedDelta off
srcDeselectAll -win $_nTrace1
srcSetOptions -win $_nTrace1 -annotate on
schSetOptions -win $_nSchema1 -annotate on
wvSetCursor -win $_nWave2 646006.602407 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 646105.033615 -snap {("G1" 4)}
srcDeselectAll -win $_nTrace1
debReload
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 646014.322502 -snap {("G1" 21)}
wvSetCursor -win $_nWave2 646097.313520 -snap {("G1" 20)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 7 )} 
wvChangeDisplayAttr -win $_nWave2 -c ID_PURPLE5 -lw 1 -ls solid
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 7 )} 
wvChangeDisplayAttr -win $_nWave2 -c ID_PURPLE5 -lw 1 -ls solid
wvChangeDisplayAttr -win $_nWave2 -c ID_PURPLE5 -lw 1 -ls solid
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSetCursor -win $_nWave2 646099.243544 -snap {("G1" 4)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 4)}
srcTraceConnectivity "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL.out_ready" -win \
           $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "out_ready" -line 152 -pos 1 -win $_nTrace1
srcAction -pos 151 6 6 -win $_nTrace1 -name "out_ready" -ctrlKey off
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 4)}
wvScrollUp -win $_nWave2 4
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 4)}
wvChangeDisplayAttr -win $_nWave2 -c ID_PURPLE5 -lw 1 -ls solid
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 4)}
srcTraceConnectivity "MINV_MDIV_tb.MINV_MDIV.minv_mdiv_rdy" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "minv_mdiv_rdy" -line 85 -pos 1 -win $_nTrace1
srcAction -pos 84 3 7 -win $_nTrace1 -name "minv_mdiv_rdy" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "mmul_en" -line 8 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "mmul_en" -line 8 -pos 1 -win $_nTrace1
srcAction -pos 7 5 4 -win $_nTrace1 -name "mmul_en" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcHBSelect "MINV_MDIV_tb" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.RDY_FLA_REG" -win \
           $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mmul_en" -line 8 -pos 1 -win $_nTrace1
srcAction -pos 7 5 3 -win $_nTrace1 -name "mmul_en" -ctrlKey off
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 27003.216683 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 34852.988974 -snap {("G1" 5)}
wvZoom -win $_nWave2 0.000000 31399.089166
wvZoom -win $_nWave2 1460.072699 8052.978286
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 628295.774209 649647.154842
wvZoom -win $_nWave2 642308.257472 649288.910200
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
srcTraceConnectivity "MINV_MDIV_tb.MINV_MDIV.minv_mdiv_rdy" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "minv_mdiv_rdy" -line 85 -pos 1 -win $_nTrace1
srcAction -pos 84 3 3 -win $_nTrace1 -name "minv_mdiv_rdy" -ctrlKey off
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvChangeDisplayAttr -win $_nWave2 -c ID_PURPLE5 -lw 1 -ls solid
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regp" -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSetCursor -win $_nWave2 646230.273290 -snap {("G1" 13)}
srcActiveTrace \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2.RR_SHI_REG_MDY_CLR.REG_32_7.we" \
           -win $_nTrace1 -TraceByDConWave -TraceTime 646200 -TraceValue 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 3
wvScrollDown -win $_nWave2 4
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 5)}
srcTraceConnectivity \
           "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regx2.RR_SHI_REG_MDY_CLR.REG_32_7.we" \
           -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvScrollUp -win $_nWave2 2
srcDeselectAll -win $_nTrace1
debReload
srcHBSelect "MINV_MDIV_tb.MINV_MDIV" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV" -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL" -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_CONTROL" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "out_valid" -line 9 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "out_ready" -line 9 -pos 1 -win $_nTrace1
srcSelect -signal "out_valid" -line 9 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvAddSignal -win $_nWave2 "/MINV_MDIV_tb/MINV_MDIV/MINV_MDIV_CONTROL/out_ready" \
           "/MINV_MDIV_tb/MINV_MDIV/MINV_MDIV_CONTROL/out_valid"
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
srcDeselectAll -win $_nTrace1
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvSetCursor -win $_nWave2 646645.230595 -snap {("G1" 2)}
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvZoom -win $_nWave2 639913.437200 654357.018217
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvZoom -win $_nWave2 644954.150038 648076.899338
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
srcDeselectAll -win $_nTrace1
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvSaveSignal -win $_nWave2 "/home/xuhao/moddiv/mochu_moni_32/signal.rc"
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 646124.806775 -snap {("G1" 5)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 623585.910834 654357.018217
wvZoom -win $_nWave2 644399.924505 649784.130734
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvDeselectAll -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvChangeDisplayAttr -win $_nWave2 -c ID_PURPLE5 -lw 1 -ls solid
wvSelectSignal -win $_nWave2 {( "G1" 6 7 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 646111.203857 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 646908.768443 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 646098.298282 -snap {("G1" 7)}
wvSetMarker -win $_nWave2 646900.000000
wvSelectSignal -win $_nWave2 {( "G1" 19 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
srcDeselectAll -win $_nTrace1
debReload
wvScrollDown -win $_nWave2 1
wvSetPosition -win $_nWave2 {("G4" 0)}
srcHBSelect "MINV_MDIV_tb.MINV_MDIV" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV" -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV" -win $_nTrace1
srcSetOptions -win $_nTrace1 -annotate off
schSetOptions -win $_nSchema1 -annotate off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "result_out" -line 14 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "out_valid" -line 15 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "out_ready" -line 15 -pos 1 -win $_nTrace1
srcSelect -signal "out_valid" -line 15 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "result_out" -line 14 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvZoom -win $_nWave2 645347.193770 648276.759479
srcDeselectAll -win $_nTrace1
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 638809.174773 651325.133354
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 642973.160993 645379.153031
wvSelectSignal -win $_nWave2 {( "G3" 3 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 0.000000 63817.087248
wvZoom -win $_nWave2 0.000000 13828.055339
wvSelectSignal -win $_nWave2 {( "G1" 16 )} 
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G4" 3)}
srcTraceConnectivity "MINV_MDIV_tb.MINV_MDIV.loada" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rst" -line 17 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvAddSignal -win $_nWave2 "/MINV_MDIV_tb/rst"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetCursor -win $_nWave2 132.579629 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 198.869444 -snap {("G1" 1)}
srcDeselectAll -win $_nTrace1
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 519675.019175 646015.173538
wvZoom -win $_nWave2 615550.601321 645894.042038
wvZoom -win $_nWave2 633718.845547 645559.478693
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcSelect -signal "counter" -line 8 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("X1" 1)}
wvSetPosition -win $_nWave2 {("X1" 0)}
wvSetPosition -win $_nWave2 {("G1" 20)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvAddSignal -win $_nWave2 "/MINV_MDIV_tb/counter\[3:0\]"
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
srcDeselectAll -win $_nTrace1
debReload
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
srcDeselectAll -win $_nTrace1
debReload
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 601590.442639 700402.399401
wvZoom -win $_nWave2 634654.079178 660801.826126
wvZoom -win $_nWave2 641172.213604 651475.879947
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 7
wvScrollUp -win $_nWave2 9
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 298421.047824 2073773.383186
wvZoom -win $_nWave2 615873.790437 759706.266312
wvZoom -win $_nWave2 633180.574447 662209.084678
srcDeselectAll -win $_nTrace1
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 636323.766904 658644.826544
wvZoom -win $_nWave2 639041.671577 651186.639311
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "minv_mdiv_rdy" -line 137 -pos 1 -win $_nTrace1
srcAction -pos 136 3 10 -win $_nTrace1 -name "minv_mdiv_rdy" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "mmul_en" -line 8 -pos 1 -win $_nTrace1
srcAction -pos 7 5 0 -win $_nTrace1 -name "mmul_en" -ctrlKey off
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 627003.030265 672275.930119
wvSetCursor -win $_nWave2 644083.457966 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 643909.832272 -snap {("G1" 3)}
srcActiveTrace "MINV_MDIV_tb.counter\[3:0\]" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 643600 -TraceValue 0001
srcDeselectAll -win $_nTrace1
srcSelect -signal "minv_mdiv_rdy" -line 137 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 2)}
wvAddSignal -win $_nWave2 "/MINV_MDIV_tb/minv_mdiv_rdy"
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -line 136 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "counter" -line 139 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "out_ready" -line 140 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "out_ready" -line 140 -pos 1 -win $_nTrace1
srcAction -pos 139 1 2 -win $_nTrace1 -name "out_ready" -ctrlKey off
wvZoom -win $_nWave2 640632.647287 651571.066044
wvSetCursor -win $_nWave2 645137.010524 -snap {("G1" 4)}
srcActiveTrace "MINV_MDIV_tb.counter\[3:0\]" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 645100 -TraceValue 0010
srcDeselectAll -win $_nTrace1
srcSelect -signal "minv_mdiv_rdy" -line 137 -pos 1 -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
srcDeselectAll -win $_nTrace1
debReload
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 646091.369207
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "counter" -line 151 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvAddSignal -win $_nWave2 "/MINV_MDIV_tb/counter\[5:0\]"
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 646091.369207
wvSetCursor -win $_nWave2 644308.501337 -snap {("G1" 4)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "minv_mdiv_en" -line 78 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvAddSignal -win $_nWave2 "/MINV_MDIV_tb/minv_mdiv_en"
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 4)}
srcTraceConnectivity "MINV_MDIV_tb.MINV_MDIV.minv_mdiv_rdy" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "minv_mdiv_rdy" -line 142 -pos 1 -win $_nTrace1
srcAction -pos 141 3 5 -win $_nTrace1 -name "minv_mdiv_rdy" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "mmul_en" -line 8 -pos 1 -win $_nTrace1
srcAction -pos 7 5 2 -win $_nTrace1 -name "mmul_en" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcHBSelect "MINV_MDIV_tb" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.RDY_FLA_REG" -win \
           $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvScrollUp -win $_nWave2 2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 638194.313288 654365.973617
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 156786.029960 1637322.464772
wvZoom -win $_nWave2 630898.368625 679161.301303
wvZoom -win $_nWave2 635826.462901 653849.868729
srcDeselectAll -win $_nTrace1
srcSelect -signal "mmul_en" -line 8 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvAddSignal -win $_nWave2 \
           "/MINV_MDIV_tb/MINV_MDIV/MINV_MDIV_DATAPATH/RDY_FLA_REG/mmul_en"
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSelectSignal -win $_nWave2 {( "G1" 18 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "set_mmul_rdy" -line 10 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "mmul_rdy" -line 11 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "has_done" -line 8 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 21 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 21)}
wvSetPosition -win $_nWave2 {("G1" 20)}
srcDeselectAll -win $_nTrace1
debReload
wvSelectSignal -win $_nWave2 {( "G1" 19 )} 
wvSelectSignal -win $_nWave2 {( "G1" 18 )} 
wvSelectSignal -win $_nWave2 {( "G1" 19 )} 
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
wvZoom -win $_nWave2 641615.380401 647551.180882
wvZoom -win $_nWave2 643470.673744 644896.290255
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 640542.214133 647824.749865
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvPanUp -win $_nWave2
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 20)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 18)}
srcHBSelect "MINV_MDIV_tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb" -delim "."
srcHBSelect "MINV_MDIV_tb" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "counter" -line 17 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvAddSignal -win $_nWave2 "/MINV_MDIV_tb/counter\[8:0\]"
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSelectSignal -win $_nWave2 {( "G1" 18 )} 
wvSelectSignal -win $_nWave2 {( "G1" 18 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSetCursor -win $_nWave2 644413.897799 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 644588.455223 -snap {("G1" 7)}
srcActiveTrace "MINV_MDIV_tb.MINV_MDIV.minv_mdiv_rdy" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 643500 -TraceValue 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "has_done" -line 8 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvAddSignal -win $_nWave2 \
           "/MINV_MDIV_tb/MINV_MDIV/MINV_MDIV_DATAPATH/RDY_FLA_REG/has_done"
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetCursor -win $_nWave2 644501.176511 -snap {("G1" 7)}
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 644612.893262 -snap {("G1" 3)}
srcActiveTrace "MINV_MDIV_tb.counter\[8:0\]" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 644600 -TraceValue 000001011
srcHBSelect "MINV_MDIV_tb.MINV_MDIV" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV" -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb" -delim "."
srcHBSelect "MINV_MDIV_tb" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {78 83 1 6 12 1}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvAddSignal -win $_nWave2 "/MINV_MDIV_tb/minv_mdiv_en" "/MINV_MDIV_tb/loada" \
           "/MINV_MDIV_tb/loadb" "/MINV_MDIV_tb/loadp" \
           "/MINV_MDIV_tb/out_ready" "/MINV_MDIV_tb/minv_mdiv"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 )} 
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {84 89 1 2 9 5}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvAddSignal -win $_nWave2 "/MINV_MDIV_tb/a\[255:0\]" "/MINV_MDIV_tb/b\[255:0\]" \
           "/MINV_MDIV_tb/p\[255:0\]"
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 9)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "loada" -line 98 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvAddSignal -win $_nWave2 "/MINV_MDIV_tb/loada"
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 10)}
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 0)}
srcDeselectAll -win $_nTrace1
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "loada" -line 97 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 642731.164231 -snap {("G1" 1)}
wvSetMarker -win $_nWave2 644600.000000
srcDeselectAll -win $_nTrace1
debReload
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 0)}
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
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 642975.544624 646016.334952
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1276033.031640 1313860.097795
wvZoom -win $_nWave2 1297213.287281 1303269.969973
wvZoom -win $_nWave2 1300322.926381 1302523.772729
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 22 )} 
wvScrollUp -win $_nWave2 7
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 8
wvScrollDown -win $_nWave2 19
wvSelectSignal -win $_nWave2 {( "G4" 3 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 643666.623670 661492.846050
wvZoom -win $_nWave2 643582.876316 650496.305801
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 24 )} 
wvSelectSignal -win $_nWave2 {( "G1" 22 )} 
wvScrollUp -win $_nWave2 5
wvSelectSignal -win $_nWave2 {( "G1" 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 \
           19 20 21 22 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 0)}
srcTraceConnectivity "MINV_MDIV_tb.MINV_MDIV.loada" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV" -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH" -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" \
           -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV.MINV_MDIV_DATAPATH.regu" -win $_nTrace1
wvSelectGroup -win $_nWave2 {G5}
wvRenameGroup -win $_nWave2 {G5} {regu}
srcDeselectAll -win $_nTrace1
srcSelect -signal "regout" -line 5 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("regu" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("regu" 1)}
wvSetPosition -win $_nWave2 {("regu" 1)}
srcDeselectAll -win $_nTrace1
debReload
wvSelectSignal -win $_nWave2 {( "regu" 1 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1254680.876318 1303467.071908
wvZoom -win $_nWave2 1285809.556246 1295632.280190
wvZoom -win $_nWave2 1289755.597792 1292830.496515
wvSelectSignal -win $_nWave2 {( "G4" 3 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 633595.078619 652359.000000
wvZoom -win $_nWave2 641672.739885 648733.947116
wvZoom -win $_nWave2 643551.440754 645934.513568
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSetMarker -win $_nWave2 644620.000000
wvSetMarker -win $_nWave2 644620.000000
wvSetMarker -win $_nWave2 644600.000000
wvSetCursor -win $_nWave2 644622.048564 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 644696.305387 -snap {("G1" 2)}
srcDeselectAll -win $_nTrace1
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1260368.541707 1313961.000959
wvZoom -win $_nWave2 1297980.890865 1303992.700771
wvZoom -win $_nWave2 1300404.635893 1302251.984959
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1290002.019175 1313961.000959
wvZoom -win $_nWave2 1299167.535696 1304037.434199
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 630499.520614 661393.997124
wvZoom -win $_nWave2 643132.784498 648168.317582
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1268441.085331 1303467.071908
wvZoom -win $_nWave2 1288942.873255 1293711.511887
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "regu" 1 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 622962.189837 674875.705657
wvZoom -win $_nWave2 640855.678751 653124.788674
wvZoom -win $_nWave2 643902.370477 647501.936763
