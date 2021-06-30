IMAGES =

all: presentation.pdf

presentation.pdf: $(IMAGES)
	pdflatex presentation.tex

%.pdf: %.tex
	pdflatex $<

clean:
	rm -f *.pdf *.out *aux *bbl *blg *log *toc *.ptb *.tod *.fls *.fdb_latexmk *.lof *.dvi *.nav *.synctex* *.snm
