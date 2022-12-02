figures/%.pdf: figures/%.svg
	inkscape -D --export-pdf=$@ $^

all: presentation.tex figures/samples_a_b.pdf figures/plot_effect_machine_bloat.pdf figures/bayesian-estimate-context-warmup-bloat.pdf
	lualatex --shell-escape presentation.tex
