.PRECIOUS: %.mp

DEST = # 2adder.mps

%.mps: %.mp
	mpost $<
	mv $*.0 $*.mps

%.mp: %.fig
	fig2dev -L mp $< $@

%.tex %.eps: %.gp
	gnuplot $<

%.pdf: %.eps
	epstopdf $< --outfile=$@

all: $(DEST)

clean:
	rm -f *.mp *.mpx *.bak *.log *.aux *.tex *~
