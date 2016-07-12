filename=dissertation
acronims=nomencl

all: pdf ref 

pdf:	${filename}.tex	
	pdflatex -shell-escape ${filename}.tex 

ref:	${filename}.aux
	bibtex ${filename}

indice: 
	makeindex ${filename}.nlo -s ${acronims}.ist -o ${filename}.nls

clean:
	latexmk -CA

