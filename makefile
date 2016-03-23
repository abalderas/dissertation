filename=dissertation

all: pdf ref

pdf:	${filename}.tex	
	pdflatex -shell-escape ${filename}.tex 

ref:	${filename}.aux
	bibtex ${filename}

clean:
	latexmk -CA

