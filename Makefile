default: caokai-cn.pdf caokai-en.pdf resume.pdf

resume.pdf: caokai-en.pdf
	cp $^ resume.pdf

caokai-cn.pdf: caokai-cn.tex
	xelatex $^

caokai-en.pdf: caokai-en.tex
	xelatex $^

clean:
	rm -rf *.pdf
