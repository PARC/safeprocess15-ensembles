SOURCES  = safeprocess15-ensembles.tex
SOURCES += safeprocess15-ensembles.bib
# SOURCES += defs.tex
SOURCES += introduction.tex
SOURCES += related.tex
SOURCES += notation.tex
SOURCES += example.tex
SOURCES += empirical.tex
# FIGURES += figures/example.fig

# makeindex safeprocess15-ensembles.nlo -s nomencl.ist -o safeprocess15-ensembles.nls

all: safeprocess15-ensembles.ps safeprocess15-ensembles.pdf

safeprocess15-ensembles.ps: $(SOURCES) $(FIGURES)
	(cd figures && $(MAKE))
	latexmk.pl -ps $< 

safeprocess15-ensembles.pdf: $(SOURCES) $(FIGURES)
	(cd figures && $(MAKE))
	latexmk.pl -pdf $< 

clean:
	(cd figures && $(MAKE) clean)
	latexmk.pl -C

