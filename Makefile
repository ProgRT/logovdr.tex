.PHONY: clean install

logofvc.pdf: logofvc.tex logovdr2.sty
	pdflatex logofvc

logofvc.svg: logofvc.pdf
	pdf2svg logofvc.pdf logofvc.svg

clean:
	rm -f *.log *.nav *.aux *.out *.snm *.toc *.ent

install:
	./install.sh
