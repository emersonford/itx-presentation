IMAGES =

all: presentation.pdf

test:
	chktex presentation.tex

presentation.pdf: $(IMAGES) presentation.tex
	pdflatex presentation.tex

%.pdf: %.tex
	pdflatex $<

clean:
	rm -f *.pdf *.out *aux *bbl *blg *log *toc *.ptb *.tod *.fls *.fdb_latexmk *.lof *.dvi *.nav *.synctex* *.snm
