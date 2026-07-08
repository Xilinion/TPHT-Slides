PDF = main.pdf
TEX = main.tex

.PHONY: all clean

all: $(PDF)

$(PDF): $(TEX)
	pdflatex -interaction=nonstopmode $(TEX)
	pdflatex -interaction=nonstopmode $(TEX)

clean:
	rm -f *.aux *.log *.nav *.out *.snm *.toc *.vrb $(PDF)
