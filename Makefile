prefix=im-mcts
#dbdir=~/Dropbox/sm-tron

pdf: $(prefix).tex
	latexmk -pdf $(prefix).tex

view: pdf
	evince $(prefix).pdf

appendix: appendix.tex
	latexmk -pdf appendix.tex

viewapp: appendix
	evince appendix.pdf

techreport: arxiv.tex
	latexmk -pdf arxiv.tex

viewtr: techreport
	evince arxiv.pdf

#putdb:
#	cp *.bib *.tex *.pdf *.sty $(dbdir)
#	cp images/* $(dbdir)/images

#getdb:  
#	cp $(dbdir)/*.tex $(dbdir)/*.bib $(dbdir)/*.sty .
#	cp $(dbdir)/images/* images

clean:
	latexmk -c
	rm -f *~ *.bbl
	rm -f $(prefix).pdf

