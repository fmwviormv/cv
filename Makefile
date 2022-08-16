FLAGS += -file-line-error -halt-on-error -interaction nonstopmode
LATEX ?= pdflatex
SRCS != ls *.tex
PDFS = $(SRCS:.tex=.pdf)

.SUFFIXES: .tex .pdf

all: $(PDFS)

clean:
	rm -f $(SRCS:.tex=.{aux,log,out,pdf})

.tex.pdf:
	$(LATEX) $(FLAGS) $<
	rm -f $*.{aux,log,out}

.PHONY: all clean
