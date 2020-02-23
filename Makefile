.PHONY: clean install

test.pdf: test.tex logovdr.sty
	pdflatex test

logofvc.svg: logofvc.pdf
	pdf2svg logofvc.pdf logofvc.svg

clean:
	rm -f *.log *.nav *.aux *.out *.snm *.toc *.ent

install:
	./install.sh
