file=slides
build: pdflatex clear
pdflatex:
	pdflatex ${file}.tex
	pdflatex ${file}.tex
bibtex:
	latex ${file}.tex
	bibtex ${file}
	latex ${file}.tex
clear:
	rm -f ${file}.aux ${file}.blg ${file}.bbl ${file}.dvi ${file}.ps ${file}.log ${file}.toc ${file}.out ${file}.nav ${file}.snm ${file}.synctex.gz
