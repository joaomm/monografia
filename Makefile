# 
# makefile para a compilação do documento
#
# Sáb Jun 23 21:13:37 BRT 2007
#

BASE_NAME = tcc

LATEX     = latex
PDFLATEX  = pdflatex
BIBTEX    = bibtex
MAKEINDEX = makeindex

open_pdf: clean tcc.pdf
	open tcc.pdf

tcc.pdf: tcc.tex 
	$(PDFLATEX) tcc.tex
	$(BIBTEX) tcc 
	$(PDFLATEX) tcc.tex
	$(PDFLATEX) tcc.tex
	$(PDFLATEX) tcc.tex

sub_joao: sub_joao.tex
	$(PDFLATEX) sub_joao.tex
	open sub_joao.pdf

clean:
	rm -f $(BASE_NAME)*.ps $(BASE_NAME)*.dvi *.log \
	      *.aux *.blg *.toc *.brf *.ilg *.ind *.idx \
	      missfont.log $(BASE_NAME)*.bbl $(BASE_NAME)*.pdf $(BASE_NAME)*.out \
		  $(BASE_NAME)*.lof $(BASE_NAME)*.lot \
		  sub_joao.pdf
