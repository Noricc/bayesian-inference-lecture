figures/%.pdf: figures/%.svg
	inkscape -D --export-pdf=$@ $^

all: presentation.tex figures/samples_a_b.pdf
	lualatex --shell-escape presentation.tex
