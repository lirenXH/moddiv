debImport "-f" "./file.f"
debLoadSimResult /home/xuhao/moddiv/mochu_moni_32/rtl.fsdb
wvCreateWindow
wvSelectGroup -win $_nWave2 {G1}
wvRestoreSignal -win $_nWave2 "/home/xuhao/moddiv/mochu_moni_32/signal.rc" \
           -overWriteAutoAlias on -appendSignals on
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
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
wvZoom -win $_nWave2 630524.581162 652108.928858
wvZoom -win $_nWave2 639424.339756 647859.104888
wvZoom -win $_nWave2 641934.485291 645488.411882
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G3" 2)}
srcTraceConnectivity "MINV_MDIV_tb.MINV_MDIV.regx1out\[15:0\]" -win $_nTrace1
srcHBSelect "MINV_MDIV_tb.MINV_MDIV" -win $_nTrace1
srcSetScope -win $_nTrace1 "MINV_MDIV_tb.MINV_MDIV" -delim "."
srcHBSelect "MINV_MDIV_tb.MINV_MDIV" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "regx1out" -line 17 -pos 1 -win $_nTrace1
srcSelect -signal "regx2out" -line 17 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvAddSignal -win $_nWave2 "/MINV_MDIV_tb/MINV_MDIV/regx1out\[31:0\]" \
           "/MINV_MDIV_tb/MINV_MDIV/regx2out\[31:0\]"
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSelectSignal -win $_nWave2 {( "G1" 11 12 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvZoom -win $_nWave2 643040.190909 644810.032107
