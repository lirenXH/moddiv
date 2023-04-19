VCS = vcs -full64 -sverilog -timescale=1ns/1ns -LDFLAGS -Wl,--no-as-needed\
		+v2k \
		-debug_access+all -kdb -lca\
		-f file.f
comp:
	@find `pwd` -name "*.v" > file.f
	$(VCS) +define+FSDB
	./simv
verdi:
	rm -rf nov*
	verdi -ssf rtl.fsdb -f ./file.f

clean:
	rm -rf csrc simv* *.lib *.lib++ nLint*
	rm -rf *.log *.vpd *.fsdb* *.key *log rtl.fsdb*

