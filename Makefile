.PHONY: clean

logovdr.pdf: logovdr.tex logovdr.sty
	pdflatex logovdr

clean:
	rm -f *.log *.nav *.aux *.out *.snm *.toc *.ent

install:
	./install.sh
