IMAGES =

all: presentation.pdf

presentation.pdf: $(IMAGES)
	pdflatex presentation.tex

%.pdf: %.tex
	pdflatex $<

clean:
	rm *.pdf
