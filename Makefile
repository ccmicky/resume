default: caokai-cn.pdf caokai-en.pdf resume.pdf

caokai-cn.pdf: caokai-cn.tex
	xelatex $^

caokai-en.pdf: caokai-en.tex
	pdflatex $^

resume.pdf: caokai-en.pdf
	cp $^ resume.pdf

clean:
	rm -rf *.pdf
