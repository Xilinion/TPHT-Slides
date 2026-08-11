PDF = main.pdf
TEX = main.tex

.PHONY: all animated flat clean

# Default: the animated deck (overlays revealed step by step).
all: $(PDF)

$(PDF): $(TEX)
	pdflatex -interaction=nonstopmode $(TEX)
	pdflatex -interaction=nonstopmode $(TEX)

animated: all

# Flat deck: every overlay collapsed, one PDF page per slide.
# Same output file, so run `make clean` (or just `make`) to go back.
flat:
	pdflatex -interaction=nonstopmode "\def\flatdeck{}\input{$(TEX)}"
	pdflatex -interaction=nonstopmode "\def\flatdeck{}\input{$(TEX)}"

clean:
	rm -f *.aux *.log *.nav *.out *.snm *.toc *.vrb $(PDF)
